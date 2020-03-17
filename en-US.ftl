title  = Vagrant Story - Armor Combine Simulator
slot1  = Slot 1
slot2  = Slot 2
fused  = Fused
enemy  = Enemy
chest  = Chest
result = Result
stock  = Stock
swap   = Swap
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

type-blunt    = Blunt
type-edged    = Edged
type-piercing = Piercing

summary-all      = {" "}DP:{$dp} All:{$type}
summary-blunt    = {" "}DP:{$dp} {type-blunt}:{$type}
summary-edged    = {" "}DP:{$dp} {type-edged}:{$type}
summary-piercing = {" "}DP:{$dp} {type-piercing}:{$type}

icon-shield = 🛡️
icon-head = ⛑️
icon-body = 🧥
icon-arms = 🧤
icon-legs = 🥾

shield = { $rank ->
  *[1] {$material}{icon-shield}{$rank} Buckler
   [2] {$material}{icon-shield}{$rank} Pelta Shield
   [3] {$material}{icon-shield}{$rank} Targe
   [4] {$material}{icon-shield}{$rank} Quad Shield
   [5] {$material}{icon-shield}{$rank} Circle Shield
   [6] {$material}{icon-shield}{$rank} Tower Shield
   [7] {$material}{icon-shield}{$rank} Spiked Shield
   [8] {$material}{icon-shield}{$rank} Round Shield
   [9] {$material}{icon-shield}{$rank} Kite Shield
  [10] {$material}{icon-shield}{$rank} Casserole Shield
  [11] {$material}{icon-shield}{$rank} Heater Shield
  [12] {$material}{icon-shield}{$rank} Oval Shield
  [13] {$material}{icon-shield}{$rank} Knight Shield
  [14] {$material}{icon-shield}{$rank} Hoplite Shield
  [15] {$material}{icon-shield}{$rank} Jazeraint Shield
  [16] {$material}{icon-shield}{$rank} Dread Shield
}

head = { $rank ->
  *[1] {$material}{icon-head}{$rank} Bandana
   [2] {$material}{icon-head}{$rank} Bear Mask
   [3] {$material}{icon-head}{$rank} Wizard Hat
   [4] {$material}{icon-head}{$rank} Bone Helm
   [5] {$material}{icon-head}{$rank} Chain Coif
   [6] {$material}{icon-head}{$rank} Spangenhelm
   [7] {$material}{icon-head}{$rank} Cabasset
   [8] {$material}{icon-head}{$rank} Sallet
   [9] {$material}{icon-head}{$rank} Barbut
  [10] {$material}{icon-head}{$rank} Basinet
  [11] {$material}{icon-head}{$rank} Armet
  [12] {$material}{icon-head}{$rank} Close Helm
  [13] {$material}{icon-head}{$rank} Burgonet
  [14] {$material}{icon-head}{$rank} Hoplite Helm
  [15] {$material}{icon-head}{$rank} Jazeraint Helm
  [16] {$material}{icon-head}{$rank} Dread Helm
}

body = { $rank ->
  *[1] {$material}{icon-body}{$rank} Jerkin
   [2] {$material}{icon-body}{$rank} Hauberk
   [3] {$material}{icon-body}{$rank} Wizard Robe
   [4] {$material}{icon-body}{$rank} Cuirass
   [5] {$material}{icon-body}{$rank} Banded Mail
   [6] {$material}{icon-body}{$rank} Ring Mail
   [7] {$material}{icon-body}{$rank} Chain Mail
   [8] {$material}{icon-body}{$rank} Breastplate
   [9] {$material}{icon-body}{$rank} Segmentata
  [10] {$material}{icon-body}{$rank} Scale Armor
  [11] {$material}{icon-body}{$rank} Brigandine
  [12] {$material}{icon-body}{$rank} Plate Mail
  [13] {$material}{icon-body}{$rank} Fluted Armor
  [14] {$material}{icon-body}{$rank} Hoplite Armor
  [15] {$material}{icon-body}{$rank} Jazeraint Armor
  [16] {$material}{icon-body}{$rank} Dread Armor
}

arms = { $rank ->
  *[1] {$material}{icon-arms}{$rank} Bandage
   [2] {$material}{icon-arms}{$rank} Leather Glove
   [3] {$material}{icon-arms}{$rank} Reinforced Glove
   [4] {$material}{icon-arms}{$rank} Knuckles
   [5] {$material}{icon-arms}{$rank} Ring Sleeve
   [6] {$material}{icon-arms}{$rank} Chain Sleeve
   [7] {$material}{icon-arms}{$rank} Gauntlet
   [8] {$material}{icon-arms}{$rank} Vambrace
   [9] {$material}{icon-arms}{$rank} Plate Glove
  [10] {$material}{icon-arms}{$rank} Rondanche
  [11] {$material}{icon-arms}{$rank} Tilt Glove
  [12] {$material}{icon-arms}{$rank} Freiturnier
  [13] {$material}{icon-arms}{$rank} Fluted Glove
  [14] {$material}{icon-arms}{$rank} Hoplite Glove
  [15] {$material}{icon-arms}{$rank} Jazeraint Glove
  [16] {$material}{icon-arms}{$rank} Dread Glove
}

legs = { $rank ->
  *[1] {$material}{icon-legs}{$rank} Sandals
   [2] {$material}{icon-legs}{$rank} Boots
   [3] {$material}{icon-legs}{$rank} Long Boots
   [4] {$material}{icon-legs}{$rank} Cuisse
   [5] {$material}{icon-legs}{$rank} Light Greave
   [6] {$material}{icon-legs}{$rank} Ring Leggings
   [7] {$material}{icon-legs}{$rank} Chain Leggings
   [8] {$material}{icon-legs}{$rank} Fusskampf
   [9] {$material}{icon-legs}{$rank} Poleyn
  [10] {$material}{icon-legs}{$rank} Jambeau
  [11] {$material}{icon-legs}{$rank} Missaglia
  [12] {$material}{icon-legs}{$rank} Plate Leggings
  [13] {$material}{icon-legs}{$rank} Fluted Leggings
  [14] {$material}{icon-legs}{$rank} Hoplite Leggings
  [15] {$material}{icon-legs}{$rank} Jazeraint Leggings
  [16] {$material}{icon-legs}{$rank} Dread Leggings
}
