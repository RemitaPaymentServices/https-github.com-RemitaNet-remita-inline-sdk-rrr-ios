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

        let url: String = Constants.DEMO.rawValue

        let rrr: String = "240008239036"
        
        paymentGateway.initiatePayment(on: self, url:url, key: "QzAwMDAxOTUwNjl8NDMyNTkxNjl8ZTg0MjI2MDg4MjU0NzA2NTY2MTYwNGU1NjNiMjUzYjk4ZDQwZjljZGFiMTVmYTljMDUwMGQ0MDg2MjIyYjEyNTA1ZTE2MTMxNmE3ZjM1OTZmYmJkOTE2MTRiY2NmZTY5NTM4MGQ2MDBlZGJlZmM2ODc2YTc2M2M4MjgyZmFjODc=", rrr: rrr)
    }
    
    func onPaymentCompleted(paymentResponse: PaymentResponse) {
        print("+++ RESPONSE: \(String(describing: paymentResponse))")
    }
        
}

