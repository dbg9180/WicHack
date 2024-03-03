
//  Barcode.swift
//  Using CodeScanner : https://github.com/twostraws/CodeScanner Copyright (c) 2021 Paul Hudson
//  WicHacks
//  Created by Deen Grey on 3/2/2024


import UIKit
import CodeScanner



class Barcode: UIViewController {
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
            ZStack {
                Text(scannedCode)
                Button("Scan QR Code"){
                    self.isPresentingScanner = true
                }
                .sheet(isPresented: $isPresentingScanner){
                    self.scannerSheet
                }
            }
        }

}