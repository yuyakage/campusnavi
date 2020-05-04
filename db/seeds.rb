User.create!(
  [
    {
      name:  "山田 良子",
      email: "yamada@example.com",
      password:              "foobar",
      password_confirmation: "foobar"
    },
    {
      name:  "鈴木 恵子",
      email: "suzuki@example.com",
      password:              "passport",
      password_confirmation: "passport"
    },
    {
      name:  "採用 太郎",
      email: "recruit@example.com",
      password:              "password",
      password_confirmation: "password",
      admin: true
    },
    {
      name:  "加藤 心",
      email: "katou@example.com",
      password:              "lpoooplj",
      password_confirmation: "lpoooplj"
    }, 
    {
      name:  "佐藤　悠",
      email: "satou@example.com",
      password:              "countttt",
      password_confirmation: "countttt"
    },
     {
      name:  "飯田　大",
      email: "iida@example.com",
      password:              "passport",
      password_confirmation: "passport"
    },
    {
      name:  "岡　健太郎",
      email: "oka@example.com",
      password:              "kenkenken",
      password_confirmation: "kenkenken"
    }
  ]
)

user1 = User.find(1)
user2 = User.find(2)
user3 = User.find(3)
user4 = User.find(4)
user5 = User.find(5)
user6 = User.find(6)
user7 = User.find(7)

user1.follow(user2)
user1.follow(user3)

user2.follow(user1)
user2.follow(user3)

user3.follow(user1)
user3.follow(user2)
user3.follow(user4)
user3.follow(user5)
user3.follow(user6)
user3.follow(user7)

user4.follow(user1)
user4.follow(user3)

user5.follow(user3)
user5.follow(user5)

user6.follow(user3)
user6.follow(user4)

user7.follow(user3)
user7.follow(user7)

Micropost.create!([
    {
      user_id: 1,
      university: "福岡大学",
      faculty: "法学部",
      department: "法律学科",
      professor: "町田教授",
      subject: "政治学A",
      content: "中間テストが2回あります。成績に反映されるので、しっかり勉強する必要があります。"
     },
     {
      user_id: 2,
      university: "九州大学",
      faculty: "経済学部",
      department: "経済学科",
      professor: "中田教授",
      subject: "心理学B",
      content: "グループワークがあって楽しいです。"
     },
     {
      user_id: 3,
      university: "福岡大学",
      faculty: "商学部",
      department: "商学科",
      professor: "島教授",
      subject: "物理学",
      content: "中学・高校理科の内容で、一般常識程度のものである。"
     },
     {
      user_id: 4,
      university: "早稲田大学",
      faculty: "法学部",
      department: "法律学科",
      professor: "宗教授",
      subject: "民法",
      content: "喋り方がゆっくりで聞き取りやすい！わかりやすく説明してもらえる"
     },
     {
      user_id: 5,
      university: "慶應義塾大学大学",
      faculty: "法学部",
      department: "法律学科",
      professor: "菊池教授",
      subject: "憲法",
      content: "この授業は毎回非常に多い文章を書いて、あまり暇な時間がなくてずっと授業に集中できる講義だと思う"
     },
     {
      user_id: 6,
      university: "福岡大学",
      faculty: "経済学部",
      department: "経済学科",
      professor: "白石教授",
      subject: "社会学A",
      content: "現代社会をアイドル、バンドなど私たちの身近なところから見る。ビデオなど見ることが多く楽しい。テストは記述式だが、授業をしっかり受けていれば大丈夫です。"
     },
     {
      user_id: 7,
      university: "福岡大学",
      faculty: "法学部",
      department: "法律学科",
      professor: "多田教授",
      subject: "宗教学A",
      content: "日本の宗教について本に沿って進められていく"
     },
     {
      user_id: 1,
      university: "東京大学",
      faculty: "経済学部",
      department: "経済学科",
      professor: "豊田教授",
      subject: "中国語",
      content: "日本語ですすめます。単語のテストがあります。"
     },
     {
      user_id: 2,
      university: "早稲田大学",
      faculty: "法学部",
      department: "法律学科",
      professor: "宗教授",
      subject: "民法",
      content: "やさしい先生です。説明が分かりやすいです。"
     },
     {
      user_id: 3,
      university: "慶應義塾大学",
      faculty: "商学部",
      department: "商学科",
      professor: "野中教授",
      subject: "社会学A",
      content: "楽しい講義です毎回授業に出ていれば単位取得は安心できます"
     },
     {
      user_id: 4,
      university: "早稲田大学",
      faculty: "法学部",
      department: "法律学科",
      professor: "山下教授",
      subject: "物権法",
      content: "女の子達に人気な、可愛らしい、穏やかな先生です。学生目線でわかりやすい講義をしてくださります。授業終わりに先生が出した問題の解答をミニッツペーパーに書いて提出します。 これが出席点になるため、きちんと提出しておいた方がいいです。試験は穴埋めと、論述です。"
     },
     {
      user_id: 5,
      university: "九州大学",
      faculty: "経済学部",
      department: "経済学科",
      professor: "多田教授",
      subject: "宗教学A",
      content: "休みは5回まで大丈夫。テストに関しては授業で板書したやつもでるからメモはしとったがいい。ページ数はめっちゃ多いってわけではないので4周くらい読めばいける"
     },
     {
      user_id: 6,
      university: "早稲田大学",
      faculty: "法律学部",
      department: "法律学科",
      professor: "山下教授",
      subject: "物権法",
      content: "先生とても優しくて授業楽しいです"
     },
     {
      user_id: 7,
      university: "福岡大学",
      faculty: "法学部",
      department: "法律学科",
      professor: "飯田教授",
      subject: "政治学B",
      content: "授業はかなりつまらなかった。持ち込みあるから単位は取れたけどオススメしません。"
     },
     {
      user_id: 1,
      university: "慶應義塾大学",
      faculty: "法学部",
      department: "法律学科",
      professor: "菊池教授",
      subject: "憲法",
      content: "優しい授業、お話をしてくださいます。授業中ボーッとしてるとノートを取るのが大変かも。"
     },
     {
      user_id: 2,
      university: "慶應義塾大学",
      faculty: "経済学部",
      department: "経済学科",
      professor: "伊藤教授",
      subject: "東洋史B",
      content: "はっきりと分かりやすく喋って下さる先生なので、講義を受けている私も、理解しやすいです。"
     },
     {
      user_id: 3,
      university: "福岡大学",
      faculty: "法律学部",
      department: "法学科",
      professor: "飯田教授",
      subject: "政治学B",
      content: "毎回配られるプリントをもとに講義が行われます。テストはそのプリントを持ち込めます"
     },
     {
      user_id: 4,
      university: "福岡大学",
      faculty: "経済学部",
      department: "経済学科",
      professor: "多田教授",
      subject: "宗教学A",
      content: "テキストに沿って講義が進みます。試験範囲はページ数まで細かく教えてくださいます。しっかりテキストを復習して勉強すれば取れます。"
     },
     {
      user_id: 5,
      university: "福岡大学",
      faculty: "商学部",
      department: "商学科",
      professor: "飯田教授",
      subject: "政治学B",
      content: "持ち込み可なので、試験開始と同時にプリントからテーマを見つけ出すだけ。でもプリントは多いよ。"
     },
     {
      user_id: 6,
      university: "福岡大学",
      faculty: "法学部",
      department: "法律学科",
      professor: "町田教授",
      subject: "政治学A",
      content: "出席も重要ですがレポート提出があるのでレポートを提出すれば単位はとれます。"
     },
     {
      user_id: 7,
      university: "福岡大学",
      faculty: "法学部",
      department: "法律学科",
      professor: "町田教授",
      subject: "政治学A",
      content: "教科書の内容を飛び飛びでやります。"
     },
     {
      user_id: 1,
      university: "慶應義塾大学",
      faculty: "経済学部",
      department: "経済学科",
      professor: "伊藤教授",
      subject: "東洋史B",
      content: "黒板は大きな字で書いてくれる。毎回感想を出しとけばOK"
     },
     {
      user_id: 2,
      university: "東京大学",
      faculty: "法学部",
      department: "法律学科",
      professor: "佐野教授",
      subject: "教育論",
      content: "授業はわかりやすく面白いです。"
     },
     {
      user_id: 3,
      university: "福岡大学",
      faculty: "法学部",
      department: "法律学科",
      professor: "山下教授",
      subject: "物権法",
      content: "先生はいつも明るく、内容もわかりやすくしてくれています。"
     },
     {
      user_id: 4,
      university: "慶應義塾大学",
      faculty: "商学部",
      department: "商学科",
      professor: "野中教授",
      subject: "社会学A",
      content: "授業内容は楽しい。履修して後悔しない。"
     },
     {
      user_id: 5,
      university: "九州大学",
      faculty: "商学部",
      department: "商学科",
      professor: "豊田教授",
      subject: "中国語",
      content: "毎回の授業かなり厳しかった。常に発音ができない人が怒られてた。案の定テストも難しい。"
     },
     {
      user_id: 6,
      university: "早稲田大学",
      faculty: "法学部",
      department: "法律学科",
      professor: "菊池教授",
      subject: "憲法",
      content: "先生はとても優しい。テストは最後の範囲をけっこう細かく絞ってくれるのでありがたいです。"
     },
     {
      user_id: 7,
      university: "早稲田大学",
      faculty: "経済学部",
      department: "経済学科",
      professor: "伊藤教授",
      subject: "東洋史B",
      content: "講義名通り、東洋の歴史を学ぶ。高校までの勉強において、歴史をあまり学んでない人でもわかりやすく説明してくれて、非常に充実していた。 話をちゃんと聞いて理解し、要点をまとめておくことができればテストは高得点が期待できると思う。"
     }
  ]
)
