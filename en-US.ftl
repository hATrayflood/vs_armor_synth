title  = Vagrant Story - Armor Combine Simulator
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
type-rate      = Type rate: {$rate}
detail-sources = Total Sources
fusedstock     = Fused item stock
references     = References
not-selected   = Not selected
select-source       = Select a Source.
before-combine      = Select two Sources, then result displays here.
rim-missmatch-error = Shield and other rim combination is not available.
result-can-changes  = Swap Slot to change result.
show-detail-help    = Double click Fused item name to show total sources to fused.
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
