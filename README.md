# My Bus API
自分の近くの家のバス停の時間と料金を取得するだけのオレオレAPI
# Set up 
Rails version(5.2.0)
Ruby version (2.4.0以上)

git cloneの後
```
$ cd MyBusAPI
$ bundle install
$ rake db:create
$ rake db:migrate
$ rails server
```
# API Doc
エンドポイント
```
<hostname>/api/v1/
```
# 平日
バスの本数が多いので朝、昼、夕にわけた

朝のデータを取得したい
```
api/v1/weekday/morning.json
```
昼のデータを取得したい
```
api/v1/weekday/noon.json
```
夕のデータを取得したい
```
api/v1/weekday/afternoon.json
```
土曜日のデータを取得したい
```
api/v1/sat.json
```
日曜日、祝日のデータを取得したい
```
api/v1/sun.json
```
## n番目の特定のデータのみ取得したい場合
例:土曜日の4番目のデータ
```
api/v1/sat/specify.json?id=4
```
# jsonの出力例
```json
[{"id":2,"time":"19:30","money":"330yen","created_at":"2018-04-17T12:37:44.052Z","updated_at":"2018-04-17T12:37:44.052Z"}]
```
