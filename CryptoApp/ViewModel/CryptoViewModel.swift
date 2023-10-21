//
//  CryptoViewModel.swift
//  CryptoApp
//
//  Created by Berkay Sazak on 21.10.2023.
//

import Foundation
import RxSwift
import RxCocoa
class CryptoViewModel {
    
    let cryptos : PublishSubject <[Crypto]> = PublishSubject()
    let error : PublishSubject<String> = PublishSubject()
    let loading : PublishSubject<Bool> = PublishSubject()
    var cryptoList = [Crypto]()
    
    func requestData(){
        self.loading.onNext(true)
        let url = URL(string: "https://raw.githubusercontent.com/atilsamancioglu/K21-JSONDataSet/master/crypto.json")
        
        WebService().downloadCurrencies(url: url!) { result in
            self.loading.onNext(false)
            switch result {
            case .success(let cryptos):
                self.cryptos.onNext(cryptos)
            case.failure(let error):
                switch error {
                case .urlError:
                    self.error.onNext("URL'de hata var")
                case .decodingError:
                    self.error.onNext("Decoding'de hata var")
                case .serverError:
                    self.error.onNext("Server'da sıkıntı var")
                }
            }
        }
    }
}
