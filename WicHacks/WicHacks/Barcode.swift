
//  Barcode.swift
//  Using CodeScanner : https://github.com/twostraws/CodeScanner Copyright (c) 2021 Paul Hudson
//  WicHacks
//  Created by Deen Grey on 3/2/2024


import UIKit
import SwiftUI
import CodeScanner
import Combine


struct Barcode: View {


    @State var isPresentingScanner = false
        @State var scannedCode: String = "Scan a QR Code"
        @State var scanResult: String?
        @State var shouldExitView = false

        @State var initialCode: String?

        var scannerSheet : some View {
            CodeScannerView(
                codeTypes: [.qr],
                completion: {result in
                    if case let .success(code) = result{
                        if let initialCode = initialCode {
                            // Compare against initial code
                            if code.string == initialCode {
                                scanResult = "match"
                                shouldExitView = true;
                            } else {
                                scanResult = "not a match"
                            }
                        } else {
                            // Set initial code if it's empty
                            initialCode = code.string
                        }
                        // Update scanned code
                        scannedCode = code.string
                        isPresentingScanner = false

                    }
                }
            )
        }

        var body: some View {
            if shouldExitView {
                HomeController.points.points += 10
                return AnyView (
                    VStack {
                        Image("Congrats")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Text("Congragulations")
                    }
                )
            }
            else {
                return AnyView(
                VStack (spacing:10){
                    Text(scanResult ?? "")
                    Button("Scan QR Code"){
                        isPresentingScanner = true
                    }
                    .sheet(isPresented: $isPresentingScanner){
                        scannerSheet
                    }
                })
            }
        }

    }

    struct Barcode_Previews: PreviewProvider {
    static var previews: some View {
        Barcode()
    }

}
