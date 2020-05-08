title  = Vagrant Story - Armor Combine Simulator
recipe = recipes
slot1  = Slot 1
slot2  = Slot 2
fused  = Fused
enemy  = Enemy
chest  = Chest
result = Result
stock  = Stock
swap   = Swap
export = Export
import = Import
discard-all    = Discard all
detail-sources = Total Sources
fusedstock     = Fused item stock
references     = References
recommended    = Recommended
not-selected   = Not selected
type-rate      = Type rate
combine-info   = {type-rate}: {$rate}, {$times} times to DP {$dp}
type-reduction      = Reduction
type-convergence    = Convergence
select-source       = Select a Source.
before-combine      = Select two Sources, then result displays here.
rim-missmatch-error = this combination is not available.
result-can-changes  = Swap Slot to change result.
show-detail-help    = Double click Fused item name to show detail information.
discard-confirm     = Do you want to discard this ?
discard-parent-confirm = Some items are fused from this. Are you sure ?
import-error        = Invalid exported file.

type-blunt    = Blunt
type-edged    = Edged
type-piercing = Piercing

summary-all      = {" "}DP:{$dp} All:{$type}
summary-blunt    = {" "}DP:{$dp} {type-blunt}:{$type}
summary-edged    = {" "}DP:{$dp} {type-edged}:{$type}
summary-piercing = {" "}DP:{$dp} {type-piercing}:{$type}

icon-shield = 🛡️
icon-head   = ⛑️
icon-body   = 🧥
icon-arms   = 🧤
icon-legs   = 🥾
icon-blade  = ⚔️

icon-material = { $material ->
  *[W] 🅆
   [L] 🄻
   [B] 🄱
   [I] 🄸
   [H] 🄷
   [S] 🅂
   [D] 🄳
}

icon-rank = { $rank ->
  *[1] ①
   [2] ②
   [3] ③
   [4] ④
   [5] ⑤
   [6] ⑥
   [7] ⑦
   [8] ⑧
   [9] ⑨
  [10] ⑩
  [11] ⑪
  [12] ⑫
  [13] ⑬
  [14] ⑭
  [15] ⑮
  [16] ⑯
}

shield = { $rank ->
  *[1] {icon-material}{icon-shield}{icon-rank} Buckler
   [2] {icon-material}{icon-shield}{icon-rank} Pelta Shield
   [3] {icon-material}{icon-shield}{icon-rank} Targe
   [4] {icon-material}{icon-shield}{icon-rank} Quad Shield
   [5] {icon-material}{icon-shield}{icon-rank} Circle Shield
   [6] {icon-material}{icon-shield}{icon-rank} Tower Shield
   [7] {icon-material}{icon-shield}{icon-rank} Spiked Shield
   [8] {icon-material}{icon-shield}{icon-rank} Round Shield
   [9] {icon-material}{icon-shield}{icon-rank} Kite Shield
  [10] {icon-material}{icon-shield}{icon-rank} Casserole Shield
  [11] {icon-material}{icon-shield}{icon-rank} Heater Shield
  [12] {icon-material}{icon-shield}{icon-rank} Oval Shield
  [13] {icon-material}{icon-shield}{icon-rank} Knight Shield
  [14] {icon-material}{icon-shield}{icon-rank} Hoplite Shield
  [15] {icon-material}{icon-shield}{icon-rank} Jazeraint Shield
  [16] {icon-material}{icon-shield}{icon-rank} Dread Shield
}

head = { $rank ->
  *[1] {icon-material}{icon-head}{icon-rank} Bandana
   [2] {icon-material}{icon-head}{icon-rank} Bear Mask
   [3] {icon-material}{icon-head}{icon-rank} Wizard Hat
   [4] {icon-material}{icon-head}{icon-rank} Bone Helm
   [5] {icon-material}{icon-head}{icon-rank} Chain Coif
   [6] {icon-material}{icon-head}{icon-rank} Spangenhelm
   [7] {icon-material}{icon-head}{icon-rank} Cabasset
   [8] {icon-material}{icon-head}{icon-rank} Sallet
   [9] {icon-material}{icon-head}{icon-rank} Barbut
  [10] {icon-material}{icon-head}{icon-rank} Basinet
  [11] {icon-material}{icon-head}{icon-rank} Armet
  [12] {icon-material}{icon-head}{icon-rank} Close Helm
  [13] {icon-material}{icon-head}{icon-rank} Burgonet
  [14] {icon-material}{icon-head}{icon-rank} Hoplite Helm
  [15] {icon-material}{icon-head}{icon-rank} Jazeraint Helm
  [16] {icon-material}{icon-head}{icon-rank} Dread Helm
}

body = { $rank ->
  *[1] {icon-material}{icon-body}{icon-rank} Jerkin
   [2] {icon-material}{icon-body}{icon-rank} Hauberk
   [3] {icon-material}{icon-body}{icon-rank} Wizard Robe
   [4] {icon-material}{icon-body}{icon-rank} Cuirass
   [5] {icon-material}{icon-body}{icon-rank} Banded Mail
   [6] {icon-material}{icon-body}{icon-rank} Ring Mail
   [7] {icon-material}{icon-body}{icon-rank} Chain Mail
   [8] {icon-material}{icon-body}{icon-rank} Breastplate
   [9] {icon-material}{icon-body}{icon-rank} Segmentata
  [10] {icon-material}{icon-body}{icon-rank} Scale Armor
  [11] {icon-material}{icon-body}{icon-rank} Brigandine
  [12] {icon-material}{icon-body}{icon-rank} Plate Mail
  [13] {icon-material}{icon-body}{icon-rank} Fluted Armor
  [14] {icon-material}{icon-body}{icon-rank} Hoplite Armor
  [15] {icon-material}{icon-body}{icon-rank} Jazeraint Armor
  [16] {icon-material}{icon-body}{icon-rank} Dread Armor
}

arms = { $rank ->
  *[1] {icon-material}{icon-arms}{icon-rank} Bandage
   [2] {icon-material}{icon-arms}{icon-rank} Leather Glove
   [3] {icon-material}{icon-arms}{icon-rank} Reinforced Glove
   [4] {icon-material}{icon-arms}{icon-rank} Knuckles
   [5] {icon-material}{icon-arms}{icon-rank} Ring Sleeve
   [6] {icon-material}{icon-arms}{icon-rank} Chain Sleeve
   [7] {icon-material}{icon-arms}{icon-rank} Gauntlet
   [8] {icon-material}{icon-arms}{icon-rank} Vambrace
   [9] {icon-material}{icon-arms}{icon-rank} Plate Glove
  [10] {icon-material}{icon-arms}{icon-rank} Rondanche
  [11] {icon-material}{icon-arms}{icon-rank} Tilt Glove
  [12] {icon-material}{icon-arms}{icon-rank} Freiturnier
  [13] {icon-material}{icon-arms}{icon-rank} Fluted Glove
  [14] {icon-material}{icon-arms}{icon-rank} Hoplite Glove
  [15] {icon-material}{icon-arms}{icon-rank} Jazeraint Glove
  [16] {icon-material}{icon-arms}{icon-rank} Dread Glove
}

legs = { $rank ->
  *[1] {icon-material}{icon-legs}{icon-rank} Sandals
   [2] {icon-material}{icon-legs}{icon-rank} Boots
   [3] {icon-material}{icon-legs}{icon-rank} Long Boots
   [4] {icon-material}{icon-legs}{icon-rank} Cuisse
   [5] {icon-material}{icon-legs}{icon-rank} Light Greave
   [6] {icon-material}{icon-legs}{icon-rank} Ring Leggings
   [7] {icon-material}{icon-legs}{icon-rank} Chain Leggings
   [8] {icon-material}{icon-legs}{icon-rank} Fusskampf
   [9] {icon-material}{icon-legs}{icon-rank} Poleyn
  [10] {icon-material}{icon-legs}{icon-rank} Jambeau
  [11] {icon-material}{icon-legs}{icon-rank} Missaglia
  [12] {icon-material}{icon-legs}{icon-rank} Plate Leggings
  [13] {icon-material}{icon-legs}{icon-rank} Fluted Leggings
  [14] {icon-material}{icon-legs}{icon-rank} Hoplite Leggings
  [15] {icon-material}{icon-legs}{icon-rank} Jazeraint Leggings
  [16] {icon-material}{icon-legs}{icon-rank} Dread Leggings
}

dagger = { $rank ->
  *[1] {icon-material}{icon-blade}{icon-rank} Battle Knife
   [2] {icon-material}{icon-blade}{icon-rank} Scramasax
   [3] {icon-material}{icon-blade}{icon-rank} Dirk
   [4] {icon-material}{icon-blade}{icon-rank} Throwing Knife
   [5] {icon-material}{icon-blade}{icon-rank} Kudi
   [6] {icon-material}{icon-blade}{icon-rank} Cinquedea
   [7] {icon-material}{icon-blade}{icon-rank} Kris
   [8] {icon-material}{icon-blade}{icon-rank} Hatchet
   [9] {icon-material}{icon-blade}{icon-rank} Khukuri
  [10] {icon-material}{icon-blade}{icon-rank} Baselard
  [11] {icon-material}{icon-blade}{icon-rank} Stiletto
  [12] {icon-material}{icon-blade}{icon-rank} Jamadhar
}

sword = { $rank ->
  *[1] {icon-material}{icon-blade}{icon-rank} Spatha
   [2] {icon-material}{icon-blade}{icon-rank} Scimitar
   [3] {icon-material}{icon-blade}{icon-rank} Rapier
   [4] {icon-material}{icon-blade}{icon-rank} Short Sword
   [5] {icon-material}{icon-blade}{icon-rank} Firangi
   [6] {icon-material}{icon-blade}{icon-rank} Shamshir
   [7] {icon-material}{icon-blade}{icon-rank} Falchion
   [8] {icon-material}{icon-blade}{icon-rank} Shotel
   [9] {icon-material}{icon-blade}{icon-rank} Khora
  [10] {icon-material}{icon-blade}{icon-rank} Khopesh
  [11] {icon-material}{icon-blade}{icon-rank} Wakizashi
  [12] {icon-material}{icon-blade}{icon-rank} Rhomphaia
}

sword2h = { $rank ->
  *[1] {icon-material}{icon-blade}{icon-rank} Broad Sword
   [2] {icon-material}{icon-blade}{icon-rank} Norse Sword
   [3] {icon-material}{icon-blade}{icon-rank} Katana
   [4] {icon-material}{icon-blade}{icon-rank} Executioner
   [5] {icon-material}{icon-blade}{icon-rank} Claymore
   [6] {icon-material}{icon-blade}{icon-rank} Schiavona
   [7] {icon-material}{icon-blade}{icon-rank} Bastard Sword
   [8] {icon-material}{icon-blade}{icon-rank} Nodachi
   [9] {icon-material}{icon-blade}{icon-rank} Rune Blade
  [10] {icon-material}{icon-blade}{icon-rank} Holy Win
}

axe = { $rank ->
  *[1] {icon-material}{icon-blade}{icon-rank} Hand Axe
   [2] {icon-material}{icon-blade}{icon-rank} Battle Axe
   [3] {icon-material}{icon-blade}{icon-rank} Francisca
   [4] {icon-material}{icon-blade}{icon-rank} Tabarzin
   [5] {icon-material}{icon-blade}{icon-rank} Chamkaq
   [6] {icon-material}{icon-blade}{icon-rank} Tabar
   [7] {icon-material}{icon-blade}{icon-rank} Bullova
   [8] {icon-material}{icon-blade}{icon-rank} Crescent
}

mace = { $rank ->
  *[1] {icon-material}{icon-blade}{icon-rank} Goblin Club
   [2] {icon-material}{icon-blade}{icon-rank} Spiked Club
   [3] {icon-material}{icon-blade}{icon-rank} Ball Mace
   [4] {icon-material}{icon-blade}{icon-rank} Footman's Mace 1H
   [5] {icon-material}{icon-blade}{icon-rank} Morning Star
   [6] {icon-material}{icon-blade}{icon-rank} War Hammer
   [7] {icon-material}{icon-blade}{icon-rank} Bec de Corbin
   [8] {icon-material}{icon-blade}{icon-rank} War Maul
}

axe2h = { $rank ->
  *[1] {icon-material}{icon-blade}{icon-rank} Guisarme
   [2] {icon-material}{icon-blade}{icon-rank} Large Crescent
   [3] {icon-material}{icon-blade}{icon-rank} Sabre Halberd
   [4] {icon-material}{icon-blade}{icon-rank} Balbriggan
   [5] {icon-material}{icon-blade}{icon-rank} Double Blade
   [6] {icon-material}{icon-blade}{icon-rank} Halberd
}

staff = { $rank ->
  *[1] {icon-material}{icon-blade}{icon-rank} Wizard Staff
   [2] {icon-material}{icon-blade}{icon-rank} Clergy Rod
   [3] {icon-material}{icon-blade}{icon-rank} Summoner Baton
   [4] {icon-material}{icon-blade}{icon-rank} Shamanic Staff
   [5] {icon-material}{icon-blade}{icon-rank} Bishop's Crosier
   [6] {icon-material}{icon-blade}{icon-rank} Sage's Cane
}

mace2h = { $rank ->
  *[1] {icon-material}{icon-blade}{icon-rank} Langdebeve
   [2] {icon-material}{icon-blade}{icon-rank} Sabre Mace
   [3] {icon-material}{icon-blade}{icon-rank} Footman's Mace 2H
   [4] {icon-material}{icon-blade}{icon-rank} Gloomwing
   [5] {icon-material}{icon-blade}{icon-rank} Mjolnir
   [6] {icon-material}{icon-blade}{icon-rank} Griever
   [7] {icon-material}{icon-blade}{icon-rank} Destroyer
   [8] {icon-material}{icon-blade}{icon-rank} Hand of Light
}

spear = { $rank ->
  *[1] {icon-material}{icon-blade}{icon-rank} Spear
   [2] {icon-material}{icon-blade}{icon-rank} Glaive
   [3] {icon-material}{icon-blade}{icon-rank} Scorpion
   [4] {icon-material}{icon-blade}{icon-rank} Corcesca
   [5] {icon-material}{icon-blade}{icon-rank} Trident
   [6] {icon-material}{icon-blade}{icon-rank} Awl Pike
   [7] {icon-material}{icon-blade}{icon-rank} Boar Spear
   [8] {icon-material}{icon-blade}{icon-rank} Fauchard
   [9] {icon-material}{icon-blade}{icon-rank} Voulge
  [10] {icon-material}{icon-blade}{icon-rank} Pole Axe
  [11] {icon-material}{icon-blade}{icon-rank} Bardysh
  [12] {icon-material}{icon-blade}{icon-rank} Brandestoc
}

crossbow = { $rank ->
  *[1] {icon-material}{icon-blade}{icon-rank} Gastraph Bow
   [2] {icon-material}{icon-blade}{icon-rank} Light Crossbow
   [3] {icon-material}{icon-blade}{icon-rank} Target Bow
   [4] {icon-material}{icon-blade}{icon-rank} Windlass
   [5] {icon-material}{icon-blade}{icon-rank} Cranequin
   [6] {icon-material}{icon-blade}{icon-rank} Lug Crossbow
   [7] {icon-material}{icon-blade}{icon-rank} Siege Bow
   [8] {icon-material}{icon-blade}{icon-rank} Arbalest
}
