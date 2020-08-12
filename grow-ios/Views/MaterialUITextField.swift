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

    func makeUIView(context: Context) -> Material.TextField {
        let textField = Material.TextField()
        textField.placeholder = placeholder
        textField.clearButtonMode = .whileEditing
        textField.placeholderActiveColor = Color.green1.uiColor()
        textField.dividerActiveColor = Color.green1.uiColor()
        return textField
    }

    func updateUIView(_ uiView: Material.TextField, context: Context) {
        uiView.placeholder = placeholder
    }
}
