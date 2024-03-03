
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
    
    
        @State var isPresentingScanner = false
        @State var scannedCode: String = "Scan a QR Code"

        var scannerSheet : some View {
            CodeScannerView(
                codeTypes: [.qr],
                completion: {result in 
                if case let .success(code) = result{
                    self.scannedCode = code.string
                    self.isPresentingScanner = false
                }}
            )
        }

        var body: some View {
            VStack (spacing:10){
                Text("Scan QR Code to continue")
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
