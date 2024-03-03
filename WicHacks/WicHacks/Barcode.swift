
//  Barcode.swift
//  Using CodeScanner : https://github.com/twostraws/CodeScanner Copyright (c) 2021 Paul Hudson
//  WicHacks
//  Created by Deen Grey on 3/2/2024


import UIKit
import SwiftUI
import CodeScanner
import Combine


struct Barcode: View {


    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as UIViewController
        destinationVC.title = "Barcode"
    }

    @State private var initialCode: String?

        @State var isPresentingScanner = false
        @State var scannedCode: String = "Scan a QR Code to take your pill!"
    @State var scanResult:String = "initial"


        var scannerSheet : some View {
            CodeScannerView(
                codeTypes: [.qr, .upce],
                completion: {result in
                    if case let .success(code) = result{
                        if let initialCode = initialCode {
                            if code.string == initialCode {
                                scanResult = "match"
                                
                            } else {
                                scanResult = "no"
                            }
                        } else {
                            initialCode = code.string
                        }
                        self.scannedCode = code.string
                        //                    Text(code.string)
                        self.isPresentingScanner = false
                    }
                }
            )
        }
    

        var body: some View {
            VStack (spacing:10){
                Text(scanResult)
                Button("Scan QR Code"){
                    self.isPresentingScanner = true
                }
                .sheet(isPresented: $isPresentingScanner){
                    self.scannerSheet
                }
            }
        }

}

struct Barcode_Previews: PreviewProvider {
    static var previews: some View {
        Barcode()
    }
}


