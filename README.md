# maho

manabaよりさらに進化したhope体験  

## Todo
データベースの実装  
go_routerとproviderを組み合わせてリダイレクトを実装  
azureの調子が悪いので例外処理を徹底して途中でアプリが止まらないようにする  
ログイン画面のテキストフィールドのオートコンプリート  

## 実装済み
apiのログインメソッド  
Funのユーザ情報のストア    
ログイン画面の実装  

## 悩み
背景画像をpicsumから取るか、アセットで用意するか  
media queryで画面の大きさをとってきてstate providerで保存するのはできないっぽい(buildのタイミングの問題)  
future providerはstate providerをwatchしとかないとキャッシュを更新できないのでキャッシュの仕組みから作り直す必要がありそう
