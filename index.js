let BaseParams = {};
let ArmorRank;
let ArmorMaterial;
let ShieldRank;
let ShieldMaterial;
let EnemySources = [];
let ChestSources = [];

let fused;
let fusedStock = [];

Armor = function(){};

Armor.prototype.isShield = function(){
    return (this.rim == "shield");
};
Armor.prototype.visibleDp = function(){
    return Math.ceil(this.dp / 100);
};
Armor.prototype.visiblePp = function(){
    return Math.floor(this.pp / 100);
};

Armor.prototype.maxTypes = function(){
    let types = [];
    let maxType = 0;

    if(this.blunt > maxType){
        types = [];
    }
    if(this.blunt >= maxType){
        maxType = this.blunt;
        types.push("blunt");
    }

    if(this.edged > maxType){
        types = [];
    }
    if(this.edged >= maxType){
        maxType = this.edged;
        types.push("edged");
    }

    if(this.piercing > maxType){
        types = [];
    }
    if(this.piercing >= maxType){
        maxType = this.piercing;
        types.push("piercing");
    }

    return types;
};

Armor.prototype.typePredictions = function(){
    const maxType = Math.max(this.blunt, this.edged, this.piercing);
    const minType = Math.min(this.blunt, this.edged, this.piercing);

    let predictions = {"convergence":{}, "reduction":{}};
    [0.8, 0.6].forEach(rate => {
        predictions["reduction"][rate] = {};
        predictions["reduction"][rate]["max"] = Math.min(Math.floor(rate * maxType), 100);
        predictions["reduction"][rate]["min"] = Math.min(Math.floor(rate * minType), 100);
        predictions["convergence"][rate] = {};
        predictions["convergence"][rate]["max"] = Math.max(Math.min(Math.floor(rate * 10 / (10 - rate * 10) * maxType)                  , 100),   0);
        predictions["convergence"][rate]["min"] = Math.max(Math.min(Math.floor(rate * 10 / (10 - rate * 10) * minType) - (rate * 10 - 4), 100),   0);
    });

    return predictions;
};

function fromJson(json){
    let armor      = new Armor();
    armor.id       = json.id;
    armor.material = json.material;
    armor.rim      = json.rim;
    armor.rank     = json.rank;

    armor.dp       = json.dp;
    armor.pp       = json.pp;
    armor.blunt    = json.blunt;
    armor.edged    = json.edged;
    armor.piercing = json.piercing;

    armor.parent1  = json.parent1;
    armor.parent2  = json.parent2;
    armor.sources  = json.sources;

    return armor;
};

function newArmor(id){
    let fused = fusedStock.find(a => a.id == id);
    if(fused) return fused;

    const [material, rim, rank] = id.split("-");
    const armorBaseParam    = BaseParams[rim + "-" + rank];
    const materialBaseParam = BaseParams[material];

    let armor      = new Armor();
    armor.id       = id;
    armor.material = material;
    armor.rim      = rim;
    armor.rank     = Number.parseInt(rank);

    armor.dp       = armorBaseParam.dp + materialBaseParam.dp;
    armor.pp       = armorBaseParam.pp;
    armor.blunt    = armorBaseParam.blunt;
    armor.edged    = armorBaseParam.edged;
    armor.piercing = armorBaseParam.piercing;

    armor.parent1  = null;
    armor.parent2  = null;
    armor.sources  = {[id]:1};

    return armor;
}

function synth(parent1, parent2){
    if(parent1.isShield() && !parent2.isShield()){
        return [null, 0.0, false];
    }
    if(parent2.isShield() && !parent1.isShield()){
        return [null, 0.0, false];
    }

    const rate        = typeRate(parent1, parent2);
    const material    = synthMaterial(parent1, parent2);
    const [rim, rank] =  synthRimRank(parent1, parent2);

    let synthed      = new Armor();
    synthed.id       = newId();
    synthed.material = material;
    synthed.rim      = rim;
    synthed.rank     = Number.parseInt(rank);

    synthed.dp       = Math.floor((parent1.dp + parent2.dp) / 2);
    synthed.pp       = Math.floor((parent1.pp + parent2.pp) / 2);
    synthed.blunt    = Math.min(100, Math.floor((parent1.blunt    + parent2.blunt)    * rate));
    synthed.edged    = Math.min(100, Math.floor((parent1.edged    + parent2.edged)    * rate));
    synthed.piercing = Math.min(100, Math.floor((parent1.piercing + parent2.piercing) * rate));

    synthed.parent1  = parent1.id;
    synthed.parent2  = parent2.id;
    synthed.sources  = mergeSources(parent1, parent2);


    const materialR     = synthMaterial(parent2, parent1);
    const [rimR, rankR] =  synthRimRank(parent2, parent1);

    return [synthed, rate, (material != materialR || rim != rimR || rank != rankR)];
}

function newId(){
    return Date.now().toString(36);
}

function synthMaterial(parent1, parent2){
    const table = parent1.isShield() ? ShieldMaterial : ArmorMaterial;
    const index1 = table[0].indexOf(parent1.material + "-" + parent1.rim);
    const index2 = table[0].indexOf(parent2.material + "-" + parent2.rim);
    return table[index1][index2];
}

function synthRimRank(parent1, parent2){
    const table = parent1.isShield() ? ShieldRank : ArmorRank;
    const index1 = table[0].indexOf(parent1.rim + "-" + parent1.rank);
    const index2 = table[0].indexOf(parent2.rim + "-" + parent2.rank);
    return table[index1][index2].split("-");
}

function typeRate(parent1, parent2){
    const    typesMatch =  matchTypes(parent1, parent2);
    const materialMatch = (parent1.material == parent2.material);

    if(typesMatch && materialMatch){
        return 0.8;
    }
    if(!typesMatch && !materialMatch){
        return 0.4;
    }
    return 0.6;
}

function matchTypes(parent1, parent2){
    return combinationMatch(parent1.maxTypes(), parent2.maxTypes());
}
function combinationMatch(a1, a2){
    return permutationMatch(a1.sort(), a2.sort());
}
function permutationMatch(a1, a2){
    return (a1.toString() == a2.toString());
}

function mergeSources(parent1, parent2){
    let sources = {};
    Object.keys(parent1.sources).forEach(key => {
        if(!sources[key]) sources[key] = 0;
        sources[key] += parent1.sources[key];
    });
    Object.keys(parent2.sources).forEach(key => {
        if(!sources[key]) sources[key] = 0;
        sources[key] += parent2.sources[key];
    });
    return sources;
};

Armor.prototype.render = function(card){
  let root = card.querySelector(".card");
  root.setAttribute("fused-id", this.id);

  let header_class;
  switch (this.material) {
    case "D":
      header_class = "card-header bg-warning";
    break;
    case "S":
      header_class = "card-header bg-light";
    break;
    case "H":
      header_class = "card-header text-white bg-dark";
    break;
    case "I":
      header_class = "card-header text-white bg-secondary";
    break;
    case "B":
      header_class = "card-header text-white bg-info";
    break;
    default:
      header_class = "card-header text-white bg-danger";
    break;
  }
  card.querySelector(".card-header").setAttribute("class", header_class);

  let title = card.querySelector(".card-title");
  title.setAttribute("data-l10n-args", JSON.stringify({"material":this.material,"rank":this.rank}));
  title.setAttribute("data-l10n-id", this.rim);

  card.querySelector(".armor-vdp").textContent = this.visibleDp();
  card.querySelector(".armor-dp").textContent = this.dp;
  card.querySelector(".armor-vpp").textContent = this.visiblePp();
  card.querySelector(".armor-pp").textContent = this.pp;

  card.querySelector(".armor-blunt").textContent = this.blunt;
  card.querySelector(".armor-edged").textContent = this.edged;
  card.querySelector(".armor-piercing").textContent = this.piercing;

  const predictions = this.typePredictions();
  (card.querySelector(".armor-type-reduction-8-max")   || {}).textContent = predictions["reduction"][0.8]["max"];
  (card.querySelector(".armor-type-reduction-8-min")   || {}).textContent = predictions["reduction"][0.8]["min"];
  (card.querySelector(".armor-type-reduction-6-max")   || {}).textContent = predictions["reduction"][0.6]["max"];
  (card.querySelector(".armor-type-reduction-6-min")   || {}).textContent = predictions["reduction"][0.6]["min"];
  (card.querySelector(".armor-type-convergence-8-max") || {}).textContent = predictions["convergence"][0.8]["max"];
  (card.querySelector(".armor-type-convergence-8-min") || {}).textContent = predictions["convergence"][0.8]["min"];
  (card.querySelector(".armor-type-convergence-6-max") || {}).textContent = predictions["convergence"][0.6]["max"];
  (card.querySelector(".armor-type-convergence-6-min") || {}).textContent = predictions["convergence"][0.6]["min"];

  card.querySelector(".description").style.display = "none";
  card.querySelector(".armor-stat").style.display = "block";
}

function setCardDescription(card, l10nId){
  let root = card.querySelector(".card");
  root.removeAttribute("fused-id");

  card.querySelector(".card-header").setAttribute("class", "card-header text-white bg-primary");

  let title = card.querySelector(".card-title");
  title.removeAttribute("data-l10n-args");
  title.setAttribute("data-l10n-id", "not-selected");

  let description = card.querySelector(".description");
  description.setAttribute("data-l10n-id", l10nId)

  card.querySelector(".armor-stat").style.display = "none";
  description.style.display = "block";
}

function sourcesChange(slot){
  const sources  = $(`#sources${slot}`).val();
  const material = $(`#material${slot}`).val();
  const rim      = $(`#rim${slot}`).val();
  const rank     = $(`#rank${slot}`).val();

  if(sources == "fused"){
    reloadSelect(slot, fusedStock.filter(a => {
      let match = true;
      if(material) match &= (a.material == material);
      if(rim)      match &= (a.rim      == rim);
      if(rank)     match &= (a.rank     == rank);
      return match;
    }).map(a => a.id));
  }
  else{
    let list = (sources == "enemy") ? EnemySources : ChestSources;
    let regexcond = `^${material ? material : "[A-Z]"}-${rim ? rim : "[a-z]+"}-${rank ? rank : "\\d+"}$`;
    reloadSelect(slot, list.filter(a => a.id.match(regexcond)).map(a => a.id));
  }
}

function reloadSelect(slot, list){
  let select = $(`#select${slot}`);
  const selected = select.val();
  select.empty();
  select.append(document.createElement("option"));

  list.forEach(id => {
    const armor    = newArmor(id);
    const maxTypes = armor.maxTypes();
    const maxType  = maxTypes.length == 3 ? "all" : maxTypes[0];
    const type     = maxType == "all" ? armor.blunt : armor[maxType];
    let option = document.createElement("option");
    option.setAttribute("value", armor.id);

    let label1 = document.createElement("span");
    label1.setAttribute("data-l10n-args", JSON.stringify({"material":armor.material,"rank":armor.rank}));
    label1.setAttribute("data-l10n-id", armor.rim);
    $(option).append(label1);

    let label2 = document.createElement("span");
    label2.setAttribute("data-l10n-args", JSON.stringify({"dp":armor.visibleDp(),"type":type}));
    label2.setAttribute("data-l10n-id", `summary-${maxType}`);
    $(option).append(label2);
    $(select).append(option);
  });

  select.val(selected);
  selectChange(slot);
}

function selectChange(slot){
  const id = $(`#select${slot}`).val();
  if(id){
    newArmor(id).render(document.querySelector(`#slot${slot}`));
  }
  else{
    setCardDescription(document.querySelector(`#slot${slot}`), "select-source");
    setCardDescription(document.querySelector("#fused"), "before-combine");
    document.querySelector("#combine_info").style.display = "none";
    document.querySelector("#result_can_changes").style.display = "none";
  }
}

function setFuseResult(){
  const select1 = $("#select1").val();
  const select2 = $("#select2").val();
  if(select1 && select2){
    const armor1 = newArmor(select1);
    const armor2 = newArmor(select2);
    let rate, reverse;
    [fused, rate, reverse] = synth(armor1, armor2);
    if(fused){
      fused.render(document.querySelector("#fused"));

      const dp = Math.max(armor1.dp, armor2.dp);
      document.querySelector("#combine_info").setAttribute("data-l10n-id", "combine-info");
      document.querySelector("#combine_info").setAttribute("data-l10n-args", JSON.stringify({"rate":rate, "dp":Math.ceil(dp / 100), "times":maxDpCount(fused.dp, dp)}));
      document.querySelector("#combine_info").style.display = "inline";
      document.querySelector("#result_can_changes").style.display = reverse ? "inline" : "none";
    }
    else{
      setCardDescription(document.querySelector("#fused"), "rim-missmatch-error");
      document.querySelector("#combine_info").style.display = "none";
      document.querySelector("#result_can_changes").style.display = "none";
    }
  }
  else{
    fused = null;
  }
}

function maxDpCount(dp, max){
  const realMax = Math.ceil(max / 100) * 100 - 99;
  let nowDp = dp;
  let count = 0;
  const recursion = function(){
    if(nowDp >= realMax || count > 9) return;
    nowDp = Math.floor((nowDp + max) / 2);
    count++;
    recursion();
  };
  recursion();
  return count;
}

function swap(){
  const sources1  = $("#sources1").val();
  const sources2  = $("#sources2").val();
  const material1 = $("#material1").val();
  const material2 = $("#material2").val();
  const rim1      = $("#rim1").val();
  const rim2      = $("#rim2").val();
  const select1   = $("#select1").val();
  const select2   = $("#select2").val();

  $("#sources1").val(sources2);
  $("#material1").val(material2);
  $("#rim1").val(rim2);
  sourcesChange(1);
  $("#select1").val(select2);
  selectChange(1);

  $("#sources2").val(sources1);
  $("#material2").val(material1);
  $("#rim2").val(rim1);
  sourcesChange(2);
  $("#select2").val(select1);
  selectChange(2);

  setFuseResult();
}

function stock(fused){
  if(!fused || fusedStock.findIndex(a => a.id == fused.id) > -1) return;

  fusedStock.unshift(fused);
  let card = document.importNode(document.querySelector("#armor_card").content, true)
  fused.render(card);

  $(card.querySelector(".card-title")).dblclick(event => {
    showDetail($(event.target).parents(".card").attr("fused-id"));
  });

  $(card.querySelector("button.close")).click(event => {
    discard($(event.target).parents(".card"));
  });

  $("#fusedstock").prepend(card);

  sourcesChange(1);
  $("#select1").val("");
  selectChange(1);

  sourcesChange(2);
  $("#select2").val("");
  selectChange(2);

  setFuseResult();
}

function showDetail(id){
  let armor = newArmor(id);
  let title = document.querySelector("#detail_modal_title");
  title.setAttribute("data-l10n-args", JSON.stringify({"material":armor.material,"rank":armor.rank}));
  title.setAttribute("data-l10n-id", armor.rim);

  $("#detail_modal_sources").empty();
  Object.entries(armor.sources).forEach(([key, value]) => {
    let [material, rim, rank] = key.split("-");
    $("#detail_modal_sources").append($(`<tr><td data-l10n-id='${rim}' data-l10n-args='${JSON.stringify({"material":material,"rank":Number.parseInt(rank)})}'></td><td>${value}</td></tr>`));
  });

  $("#detail_modal").modal();
}

async function discard(card){
  const id = card.attr("fused-id");
  const index = fusedStock.findIndex(a => a.id == id);
  if(index < 0) return;

  if(confirm(await document.l10n.formatValue("discard-confirm"))){
    const parent1 = fusedStock.findIndex(a => a.parent1 == id);
    const parent2 = fusedStock.findIndex(a => a.parent2 == id);
    if((parent1 < 0 && parent2 < 0) || confirm(await document.l10n.formatValue("discard-parent-confirm"))){
      fusedStock.splice(index, 1);
      card.remove();
      sourcesChange(1);
      sourcesChange(2);
      setFuseResult();
    }
  }
}

function exportJson(){
  if(!fusedStock.length) return;

  let link = document.createElement("a");
  link.href = URL.createObjectURL(new Blob([JSON.stringify(fusedStock)], {type: 'application\/json'}));
  link.download = "exported.json";
  link.click();
  URL.revokeObjectURL(link.href);
}

function importJson(){
  let file = document.createElement("input");
  file.type = "file";
  $(file).change(event => {
    let reader = new FileReader();
    reader.onload = async function(event){
      try{
        JSON.parse(event.target.result).reverse().forEach(data => {
          stock(fromJson(data))
        });
      }
      catch(e){
        alert(await document.l10n.formatValue("import-error"));
      }
    };
    reader.readAsText(event.target.files[0]);
  });
  file.click();
}

async function discardAll(){
  if(!fusedStock.length) return;

  if(confirm(await document.l10n.formatValue("discard-confirm"))){
    fusedStock.splice(0, fusedStock.length);
    $("#fusedstock").empty();
    sourcesChange(1);
    sourcesChange(2);
    setFuseResult();
  }
}

async function init(){
  setCardDescription(document.querySelector("#slot1"), "select-source");
  setCardDescription(document.querySelector("#slot2"), "select-source");
  setCardDescription(document.querySelector("#fused"), "before-combine");

  const id = newId();
  $.csv.toObjects(await $.get(`base-param.csv?nocache=${id}`), {onParseValue: $.csv.hooks.castToScalar}).forEach(obj => BaseParams[obj.id] = obj);
  ArmorRank      = $.csv.toArrays(await $.get(`armor-rank.csv?nocache=${id}`));
  ArmorMaterial  = $.csv.toArrays(await $.get(`armor-material.csv?nocache=${id}`));
  ShieldRank     = $.csv.toArrays(await $.get(`shield-rank.csv?nocache=${id}`));
  ShieldMaterial = $.csv.toArrays(await $.get(`shield-material.csv?nocache=${id}`));
  $.csv.toArrays(await $.get(`enemy-sources.csv?nocache=${id}`)).forEach(line => EnemySources.push({id:line[0], rooms:line.slice(1).filter(room => room)}));
  $.csv.toArrays(await $.get(`chest-sources.csv?nocache=${id}`)).forEach(line => ChestSources.push({id:line[0], rooms:line.slice(1).filter(room => room)}));

  $("#sources1, #material1, #rim1, #rank1").change(() => sourcesChange(1));
  sourcesChange(1);
  $("#sources2, #material2, #rim2, #rank2").change(() => sourcesChange(2));
  sourcesChange(2);

  $("#select1").change(() => {
    selectChange(1);
    setFuseResult();
  });
  $("#select2").change(() => {
    selectChange(2);
    setFuseResult();
  });

  $("#stock").click(() => stock(fused));
  $("#swap").click(() => swap());

  $("#export").click(() => exportJson());
  $("#import").click(() => importJson());
  $("#discard_all").click(() => discardAll());
}

$(function(){
  init();
});
