import UIKit

class ZukanViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    var zukan:[Int:String] = [0:"ポケモンマスター"]
    let defaults = NSUserDefaults.standardUserDefaults()
    var newnumber: Int!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //保存されたデータを読み込む
        newnumber = defaults.objectForKey("bookmarks") as Int
        
        
        zukan[1]="フシギダネ"
        zukan[2]="フシギソウ"
        zukan[3]="フシギバナ"
        zukan[4]="ヒトカゲ"
        zukan[5]="リザード"
        zukan[6]="リザードン"
        zukan[7]="ゼニガメ"
        zukan[8]="カメール"
        zukan[9]="カメックス"
        zukan[10]="キャタピー"
        zukan[11]="トランセル"
        zukan[12]="バタフリー"
        zukan[13]="ビードル"
        zukan[14]="コクーン"
        zukan[15]="スピアー"
        zukan[16]="ポッポ"
        zukan[17]="ピジョン"
        zukan[18]="ピジョット"
        zukan[19]="コラッタ"
        zukan[20]="ラッタ"
        zukan[21]="オニスズメ"
        zukan[22]="オニドリル"
        zukan[23]="アーボ"
        zukan[24]="アーボック"
        zukan[25]="ピカチュウ"
        zukan[26]="ライチュウ"
        zukan[27]="サンド"
        zukan[28]="サンドパン"
        zukan[29]="ニドラン♀"
        zukan[30]="ニドリーナ"
        zukan[31]="ニドクイン"
        zukan[32]="ニドラン♂"
        zukan[33]="ニドリーノ"
        zukan[34]="ニドキング"
        zukan[35]="ピッピ"
        zukan[36]="ピクシー"
        zukan[37]="ロコン"
        zukan[38]="キュウコン"
        zukan[39]="プリン"
        zukan[40]="プクリン"
        zukan[41]="ズバット"
        zukan[42]="ゴルバット"
        zukan[43]="ナゾノクサ"
        zukan[44]="クサイハナ"
        zukan[45]="ラフレシア"
        zukan[46]="パラス"
        zukan[47]="パラセクト"
        zukan[48]="コンパン"
        zukan[49]="モルフォン"
        zukan[50]="ディグダ"
        zukan[51]="ダグトリオ"
        zukan[52]="ニャース"
        zukan[53]="ペルシアン"
        zukan[54]="コダック"
        zukan[55]="ゴルダック"
        zukan[56]="マンキー"
        zukan[57]="オコリザル"
        zukan[58]="ガーディ"
        zukan[59]="ウインディ"
        zukan[60]="ニョロモ"
        zukan[61]="ニョロゾ"
        zukan[62]="ニョロボン"
        zukan[63]="ケーシィ"
        zukan[64]="ユンゲラー"
        zukan[65]="フーディン"
        zukan[66]="ワンリキー"
        zukan[67]="ゴーリキー"
        zukan[68]="カイリキー"
        zukan[69]="マダツボミ"
        zukan[70]="ウツドン"
        zukan[71]="ウツボット"
        zukan[72]="メノクラゲ"
        zukan[73]="ドククラゲ"
        zukan[74]="イシツブテ"
        zukan[75]="ゴローン"
        zukan[76]="ゴローニャ"
        zukan[77]="ポニータ"
        zukan[78]="ギャロップ"
        zukan[79]="ヤドン"
        zukan[80]="ヤドラン"
        zukan[81]="コイル"
        zukan[82]="レアコイル"
        zukan[83]="カモネギ"
        zukan[84]="ドードー"
        zukan[85]="ドードリオ"
        zukan[86]="パウワウ"
        zukan[87]="ジュゴン"
        zukan[88]="ベトベター"
        zukan[89]="ベトベトン"
        zukan[90]="シェルダー"
        zukan[91]="パルシェン"
        zukan[92]="ゴース"
        zukan[93]="ゴースト"
        zukan[94]="ゲンガー"
        zukan[95]="イワーク"
        zukan[96]="スリープ"
        zukan[97]="スリーパー"
        zukan[98]="クラブ"
        zukan[99]="キングラー"
        zukan[100]="ビリリダマ"
        zukan[101]="マルマイン"
        zukan[102]="タマタマ"
        zukan[103]="ナッシー"
        zukan[104]="カラカラ"
        zukan[105]="ガラガラ"
        zukan[106]="サワムラー"
        zukan[107]="エビワラー"
        zukan[108]="ベロリンガ"
        zukan[109]="ドガース"
        zukan[110]="マタドガス"
        zukan[111]="サイホーン"
        zukan[112]="サイドン"
        zukan[113]="ラッキー"
        zukan[114]="モンジャラ"
        zukan[115]="ガルーラ"
        zukan[116]="タッツー"
        zukan[117]="シードラ"
        zukan[118]="トサキント"
        zukan[119]="アズマオウ"
        zukan[120]="ヒトデマン"
        zukan[121]="スターミー"
        zukan[122]="バリヤード"
        zukan[123]="ストライク"
        zukan[124]="ルージュラ"
        zukan[125]="エレブー"
        zukan[126]="ブーバー"
        zukan[127]="カイロス"
        zukan[128]="ケンタロス"
        zukan[129]="コイキング"
        zukan[130]="ギャラドス"
        zukan[131]="ラプラス"
        zukan[132]="メタモン"
        zukan[133]="イーブイ"
        zukan[134]="シャワーズ"
        zukan[135]="サンダース"
        zukan[136]="ブースター"
        zukan[137]="ポリゴン"
        zukan[138]="オムナイト"
        zukan[139]="オムスター"
        zukan[140]="カブト"
        zukan[141]="カブトプス"
        zukan[142]="プテラ"
        zukan[143]="カビゴン"
        zukan[144]="フリーザー"
        zukan[145]="サンダー"
        zukan[146]="ファイヤー"
        zukan[147]="ミニリュウ"
        zukan[148]="ハクリュー"
        zukan[149]="カイリュー"
        zukan[150]="ミュウツー"
        zukan[151]="ミュウ"
        
        
    }
   
    
    
    // MARK: - UICollectionViewDelegate Protocol
    func collectionView(collectionView: UICollectionView,
        cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
            let cell:CustomCell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as CustomCell
            //名前表示
            cell.title.text = zukan[indexPath.row + 1]
            //画像表示
            if  (indexPath.row + 1) == (newnumber + 1) {
                cell.image.image = UIImage(named: "\(newnumber + 1).gif")
            }else{
                cell.image.image = UIImage(named: "mark_question.png")
            }
            cell.backgroundColor = UIColor.blackColor()
            return cell
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 151;
    }
}

/*
//ポケモン全表示
cell.image.image = UIImage(named: "\(indexPath.row + 1).gif")
*/

