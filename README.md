# maho

manabaよりさらに進化したhope体験  

## 方針
Viewの状態管理->Hooks  
処理の状態管理(キャッシュとったりDIしたり)->Provider  
データのストア->Drift,firestore  
状態の伝播  
Hooks(View)->InputProviders(usecaseを握ってる)->Drift, firestore ,etc...(domain)->DomainProviders(streamやfuture)->CacheProviders(Viewに最適な形に加工する)->View   
依存順  
domain,ui->interface->usecase->entities  

interface usecase = ref.watch(usecaseProvider);で依存性を逆転  

## Todo
hopeのデータひっぱり  
login画面実装

## 実装済み
apiのログインメソッド  
Funのユーザ情報のストア  


## 目標
Hooksを利用することでViewのテストはViewだけで行う  
Providerからusecaseクラスを返すことでrefをusecaseクラスに持たせて実質的なシングルトンを作る  
