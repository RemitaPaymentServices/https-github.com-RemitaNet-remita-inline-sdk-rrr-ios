//
//  ViewController.swift
//  RemitaPaymentGatewayExampleSwift
//
//  Created by Diagboya Iyare on 30/08/2020.
//  Copyright © 2020 Systemspecs Nig. Ltd. All rights reserved.
//


import UIKit
import RemitaPaymentGateway

class ViewController: UIViewController, RemitaPaymentGatewayDelegate {

    var rCode: String!
    var rMessage: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func payButton(_ sender: UIButton) {
        let paymentGateway: RemitaPaymentGateway = RemitaPaymentGateway()
        paymentGateway.delegate = self

        /* TEST CARD
         CARD: 5178 6810 0000 0002,
         Expire Date : 05/30,
         CCV: 000,
         OTP: 123456
         */
        
        let url: String = Constants.DEMO.rawValue
        let rrr: String = "120008239892"
        paymentGateway.initiatePayment(on: self, url:url, key: "QzAwMDAxNjMwNzl8NDA4NDEyMjQ0MHw0ODZkYTZkOTE4NTVhNzMzZmIzZTM5MTU2ZDBjZDYxY2Y4MzY4ODQ1NzRkYzIyOTI2OWQzMTU1M2NlNzdkNGZkZGIyNjI1MzA1ZjZkNzkzYzM2NTE4NzUxNTI0OWVjYjAxODUyNGZmYTM3NjY3M2IwZWNjYTU3OWEwYjE5NGMyNQ==", rrr: rrr)
    }
    
    func onPaymentCompleted(paymentResponse: PaymentResponse) {
        print("+++ RESPONSE: \(String(describing: paymentResponse))")
    }
    
    func onPaymentFailed(paymentResponse: PaymentResponse) {
        print("+++ RESPONSE: \(String(describing: paymentResponse))")
    }
    
}

