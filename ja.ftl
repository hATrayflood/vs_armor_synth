title  = ベイグラントストーリー 防具合成シミュレーター
slot1  = スロット1
slot2  = スロット2
fused  = 合成品
enemy  = 敵
chest  = 箱
result = 結果
stock  = 保管
swap   = 入替
type-rate      = type値倍率: {$rate}
detail-sources = 累計素材
fusedstock     = 合成品倉庫
references     = 参考文献
not-selected   = 未選択
select-source       = 素材を選択してください。
before-combine      = 2つの素材を選択すると、ここに結果が表示されます。
rim-missmatch-error = 盾と他の防具は合成できません。
result-can-changes  = スロット入れ替えで結果が変わります。
show-detail-help    = 合成品の名前をダブルクリックすると、素材の累計を表示します。

type-blunt    = 打撃
type-edged    = 切断
type-piercing = 貫通

summary-all      = {" "}DP:{$dp} 全:{$type}
summary-blunt    = {" "}DP:{$dp} {type-blunt}:{$type}
summary-edged    = {" "}DP:{$dp} {type-edged}:{$type}
summary-piercing = {" "}DP:{$dp} {type-piercing}:{$type}

icon-shield = 🛡️
icon-head = ⛑️
icon-body = 🧥
icon-arms = 🧤
icon-legs = 🥾

shield = { $rank ->
  *[1] {$material}{icon-shield}{$rank} バックラー
   [2] {$material}{icon-shield}{$rank} ペルタシールド
   [3] {$material}{icon-shield}{$rank} タージェ
   [4] {$material}{icon-shield}{$rank} クワッドシールド
   [5] {$material}{icon-shield}{$rank} サークルシールド
   [6] {$material}{icon-shield}{$rank} タワーシールド
   [7] {$material}{icon-shield}{$rank} スパイクシールド
   [8] {$material}{icon-shield}{$rank} ラウンドシールド
   [9] {$material}{icon-shield}{$rank} カイトシールド
  [10] {$material}{icon-shield}{$rank} カセロルシールド
  [11] {$material}{icon-shield}{$rank} ヒーターシールド
  [12] {$material}{icon-shield}{$rank} オーバルシールド
  [13] {$material}{icon-shield}{$rank} ナイトシールド
  [14] {$material}{icon-shield}{$rank} ホプロンシールド
  [15] {$material}{icon-shield}{$rank} ロゼンジシールド
  [16] {$material}{icon-shield}{$rank} ドレッドシールド
}

head = { $rank ->
  *[1] {$material}{icon-head}{$rank} バンダナ
   [2] {$material}{icon-head}{$rank} ベアーマスク
   [3] {$material}{icon-head}{$rank} ウィザードハット
   [4] {$material}{icon-head}{$rank} ボーンヘルム
   [5] {$material}{icon-head}{$rank} チェインコイフ
   [6] {$material}{icon-head}{$rank} スパンゲンヘルム
   [7] {$material}{icon-head}{$rank} キャバセット
   [8] {$material}{icon-head}{$rank} サーリット
   [9] {$material}{icon-head}{$rank} バルビューダ
  [10] {$material}{icon-head}{$rank} バシニット
  [11] {$material}{icon-head}{$rank} アーメット
  [12] {$material}{icon-head}{$rank} クローズヘルム
  [13] {$material}{icon-head}{$rank} バーゴネット
  [14] {$material}{icon-head}{$rank} ホプロンヘルム
  [15] {$material}{icon-head}{$rank} ロゼンジヘルム
  [16] {$material}{icon-head}{$rank} ドレッドヘルム
}

body = { $rank ->
  *[1] {$material}{icon-body}{$rank} ジャーキン
   [2] {$material}{icon-body}{$rank} ロングコート
   [3] {$material}{icon-body}{$rank} ウィザードコート
   [4] {$material}{icon-body}{$rank} キュラッサ
   [5] {$material}{icon-body}{$rank} バンデッドメイル
   [6] {$material}{icon-body}{$rank} リングメイル
   [7] {$material}{icon-body}{$rank} チェインメイル
   [8] {$material}{icon-body}{$rank} ブレストプレート
   [9] {$material}{icon-body}{$rank} セグメンテータ
  [10] {$material}{icon-body}{$rank} スケールアーマー
  [11] {$material}{icon-body}{$rank} ブリガンダイン
  [12] {$material}{icon-body}{$rank} プレイトメイル
  [13] {$material}{icon-body}{$rank} フリュートメイル
  [14] {$material}{icon-body}{$rank} ホプロンアーマー
  [15] {$material}{icon-body}{$rank} ロゼンジアーマー
  [16] {$material}{icon-body}{$rank} ドレッドアーマー
}

arms = { $rank ->
  *[1] {$material}{icon-arms}{$rank} バンテージ
   [2] {$material}{icon-arms}{$rank} レザーグローブ
   [3] {$material}{icon-arms}{$rank} ジポングローブ
   [4] {$material}{icon-arms}{$rank} キュイラッサー
   [5] {$material}{icon-arms}{$rank} リングスリーブ
   [6] {$material}{icon-arms}{$rank} チェインスリーブ
   [7] {$material}{icon-arms}{$rank} ガントレット
   [8] {$material}{icon-arms}{$rank} カラビニエール
   [9] {$material}{icon-arms}{$rank} プレイトグローブ
  [10] {$material}{icon-arms}{$rank} ロンダンス
  [11] {$material}{icon-arms}{$rank} チルトグローブ
  [12] {$material}{icon-arms}{$rank} フレイタニエル
  [13] {$material}{icon-arms}{$rank} フリュートハンド
  [14] {$material}{icon-arms}{$rank} ホプロングローブ
  [15] {$material}{icon-arms}{$rank} ロゼンジグローブ
  [16] {$material}{icon-arms}{$rank} ドレッドグローブ
}

legs = { $rank ->
  *[1] {$material}{icon-legs}{$rank} サンダル
   [2] {$material}{icon-legs}{$rank} ブーツ
   [3] {$material}{icon-legs}{$rank} ロングブーツ
   [4] {$material}{icon-legs}{$rank} サイクゥイス
   [5] {$material}{icon-legs}{$rank} ライトグリーブ
   [6] {$material}{icon-legs}{$rank} リングレッグス
   [7] {$material}{icon-legs}{$rank} チェインレッグス
   [8] {$material}{icon-legs}{$rank} フースカンプ
   [9] {$material}{icon-legs}{$rank} ポレインガード
  [10] {$material}{icon-legs}{$rank} ジャムボウタイプ
  [11] {$material}{icon-legs}{$rank} ミサグリアタイプ
  [12] {$material}{icon-legs}{$rank} プレイトレッグス
  [13] {$material}{icon-legs}{$rank} フリュートタイプ
  [14] {$material}{icon-legs}{$rank} ホプロンレッグス
  [15] {$material}{icon-legs}{$rank} ロゼンジレッグス
  [16] {$material}{icon-legs}{$rank} ドレッドレッグス
}
