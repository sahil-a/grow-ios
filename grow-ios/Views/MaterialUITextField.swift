//
//  MaterialUITextField.swift
//  grow-ios
//
//  Created by Sahil Ambardekar on 8/11/20.
//  Copyright © 2020 hackthis. All rights reserved.
//

import SwiftUI
import UIKit
import Material

struct MaterialUITextField: UIViewRepresentable {
    @Binding var placeholder: String
    @Binding var text: String
 
    func makeUIView(context: Context) -> Material.TextField {
        let textField = Material.TextField()
        textField.placeholder = placeholder
        textField.clearButtonMode = .whileEditing
        textField.placeholderActiveColor = Color.green1.uiColor()
        textField.dividerActiveColor = Color.green1.uiColor()
        textField.text = text
        textField.delegate = context.coordinator
        return textField
    }

    func updateUIView(_ uiView: Material.TextField, context: Context) {
        uiView.placeholder = placeholder
        uiView.text = text
    }
    
    func makeCoordinator() -> MaterialUITextField.Coordinator {
        Coordinator(parent: self)
    }

    class Coordinator: NSObject, UITextFieldDelegate {
        var parent: MaterialUITextField

        init(parent: MaterialUITextField) {
            self.parent = parent
        }

        func textFieldDidEndEditing(_ textField: UITextField) {
            parent.text = textField.text ?? ""
        }

    }
}
