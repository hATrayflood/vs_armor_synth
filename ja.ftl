title  = ベイグラントストーリー 防具合成シミュレーター
slot1  = スロット1
slot2  = スロット2
fused  = 合成品
enemy  = 敵
chest  = 箱
result = 結果
stock  = 保管
swap   = 入替
export = 書き出し
import = 読み込み
discard-all    = 全廃棄
detail-sources = 累計素材
fusedstock     = 合成品倉庫
references     = 参考文献
not-selected   = 未選択
type-rate      = type値倍率
combine-info   = {type-rate}: {$rate}, DP {$dp} まであと {$times} 回
type-reduction      = 減少
type-convergence    = 収束
select-source       = 素材を選択してください。
before-combine      = 2つの素材を選択すると、ここに結果が表示されます。
rim-missmatch-error = 盾と他の防具は合成できません。
result-can-changes  = スロット入れ替えで結果が変わります。
show-detail-help    = 合成品の名前をダブルクリックすると、素材の累計を表示します。
discard-confirm     = 廃棄します。本当によろしいですか？
discard-parent-confirm = このアイテムを素材としたものがあります。本当によろしいですか？
import-error        = 読み込めません。不正なデータです。

type-blunt    = 打撃
type-edged    = 切断
type-piercing = 貫通

summary-all      = {" "}DP:{$dp} 全:{$type}
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
  *[1] {icon-material}{icon-shield}{icon-rank} バックラー
   [2] {icon-material}{icon-shield}{icon-rank} ペルタシールド
   [3] {icon-material}{icon-shield}{icon-rank} タージェ
   [4] {icon-material}{icon-shield}{icon-rank} クワッドシールド
   [5] {icon-material}{icon-shield}{icon-rank} サークルシールド
   [6] {icon-material}{icon-shield}{icon-rank} タワーシールド
   [7] {icon-material}{icon-shield}{icon-rank} スパイクシールド
   [8] {icon-material}{icon-shield}{icon-rank} ラウンドシールド
   [9] {icon-material}{icon-shield}{icon-rank} カイトシールド
  [10] {icon-material}{icon-shield}{icon-rank} カセロルシールド
  [11] {icon-material}{icon-shield}{icon-rank} ヒーターシールド
  [12] {icon-material}{icon-shield}{icon-rank} オーバルシールド
  [13] {icon-material}{icon-shield}{icon-rank} ナイトシールド
  [14] {icon-material}{icon-shield}{icon-rank} ホプロンシールド
  [15] {icon-material}{icon-shield}{icon-rank} ロゼンジシールド
  [16] {icon-material}{icon-shield}{icon-rank} ドレッドシールド
}

head = { $rank ->
  *[1] {icon-material}{icon-head}{icon-rank} バンダナ
   [2] {icon-material}{icon-head}{icon-rank} ベアーマスク
   [3] {icon-material}{icon-head}{icon-rank} ウィザードハット
   [4] {icon-material}{icon-head}{icon-rank} ボーンヘルム
   [5] {icon-material}{icon-head}{icon-rank} チェインコイフ
   [6] {icon-material}{icon-head}{icon-rank} スパンゲンヘルム
   [7] {icon-material}{icon-head}{icon-rank} キャバセット
   [8] {icon-material}{icon-head}{icon-rank} サーリット
   [9] {icon-material}{icon-head}{icon-rank} バルビューダ
  [10] {icon-material}{icon-head}{icon-rank} バシニット
  [11] {icon-material}{icon-head}{icon-rank} アーメット
  [12] {icon-material}{icon-head}{icon-rank} クローズヘルム
  [13] {icon-material}{icon-head}{icon-rank} バーゴネット
  [14] {icon-material}{icon-head}{icon-rank} ホプロンヘルム
  [15] {icon-material}{icon-head}{icon-rank} ロゼンジヘルム
  [16] {icon-material}{icon-head}{icon-rank} ドレッドヘルム
}

body = { $rank ->
  *[1] {icon-material}{icon-body}{icon-rank} ジャーキン
   [2] {icon-material}{icon-body}{icon-rank} ロングコート
   [3] {icon-material}{icon-body}{icon-rank} ウィザードコート
   [4] {icon-material}{icon-body}{icon-rank} キュラッサ
   [5] {icon-material}{icon-body}{icon-rank} バンデッドメイル
   [6] {icon-material}{icon-body}{icon-rank} リングメイル
   [7] {icon-material}{icon-body}{icon-rank} チェインメイル
   [8] {icon-material}{icon-body}{icon-rank} ブレストプレート
   [9] {icon-material}{icon-body}{icon-rank} セグメンテータ
  [10] {icon-material}{icon-body}{icon-rank} スケールアーマー
  [11] {icon-material}{icon-body}{icon-rank} ブリガンダイン
  [12] {icon-material}{icon-body}{icon-rank} プレイトメイル
  [13] {icon-material}{icon-body}{icon-rank} フリュートメイル
  [14] {icon-material}{icon-body}{icon-rank} ホプロンアーマー
  [15] {icon-material}{icon-body}{icon-rank} ロゼンジアーマー
  [16] {icon-material}{icon-body}{icon-rank} ドレッドアーマー
}

arms = { $rank ->
  *[1] {icon-material}{icon-arms}{icon-rank} バンテージ
   [2] {icon-material}{icon-arms}{icon-rank} レザーグローブ
   [3] {icon-material}{icon-arms}{icon-rank} ジポングローブ
   [4] {icon-material}{icon-arms}{icon-rank} キュイラッサー
   [5] {icon-material}{icon-arms}{icon-rank} リングスリーブ
   [6] {icon-material}{icon-arms}{icon-rank} チェインスリーブ
   [7] {icon-material}{icon-arms}{icon-rank} ガントレット
   [8] {icon-material}{icon-arms}{icon-rank} カラビニエール
   [9] {icon-material}{icon-arms}{icon-rank} プレイトグローブ
  [10] {icon-material}{icon-arms}{icon-rank} ロンダンス
  [11] {icon-material}{icon-arms}{icon-rank} チルトグローブ
  [12] {icon-material}{icon-arms}{icon-rank} フレイタニエル
  [13] {icon-material}{icon-arms}{icon-rank} フリュートハンド
  [14] {icon-material}{icon-arms}{icon-rank} ホプロングローブ
  [15] {icon-material}{icon-arms}{icon-rank} ロゼンジグローブ
  [16] {icon-material}{icon-arms}{icon-rank} ドレッドグローブ
}

legs = { $rank ->
  *[1] {icon-material}{icon-legs}{icon-rank} サンダル
   [2] {icon-material}{icon-legs}{icon-rank} ブーツ
   [3] {icon-material}{icon-legs}{icon-rank} ロングブーツ
   [4] {icon-material}{icon-legs}{icon-rank} サイクゥイス
   [5] {icon-material}{icon-legs}{icon-rank} ライトグリーブ
   [6] {icon-material}{icon-legs}{icon-rank} リングレッグス
   [7] {icon-material}{icon-legs}{icon-rank} チェインレッグス
   [8] {icon-material}{icon-legs}{icon-rank} フースカンプ
   [9] {icon-material}{icon-legs}{icon-rank} ポレインガード
  [10] {icon-material}{icon-legs}{icon-rank} ジャムボウタイプ
  [11] {icon-material}{icon-legs}{icon-rank} ミサグリアタイプ
  [12] {icon-material}{icon-legs}{icon-rank} プレイトレッグス
  [13] {icon-material}{icon-legs}{icon-rank} フリュートタイプ
  [14] {icon-material}{icon-legs}{icon-rank} ホプロンレッグス
  [15] {icon-material}{icon-legs}{icon-rank} ロゼンジレッグス
  [16] {icon-material}{icon-legs}{icon-rank} ドレッドレッグス
}
