//
//  MyButton.swift
//  Caroons Dev
//
//  Created by Fa Ainama Caldera S  on 04/03/25.
//

import SwiftUI

struct MyButton: View {
    enum BtnType {
        case Fill
        case Outlined
        case Transparent
    }
    
    let text: String
    let btnType: BtnType
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(text)
                .font(.system(size: 16, weight: .medium
                             ))
                .padding()
                .frame(maxWidth: .infinity)
                .background(backgroundColor)
                .foregroundColor(textColor)
                .overlay(
                    RoundedRectangle(cornerRadius: 100)
                        .stroke(borderColor, lineWidth: 0.5)
                )
                .clipShape(Capsule())
        }
    }
    
    private var backgroundColor: Color {
        switch btnType {
        case .Fill:
            return Color.black
        case .Outlined, .Transparent:
            return Color.clear
        }
    }
    
    private var textColor: Color {
        switch btnType {
        case .Fill:
            return Color.white
        case .Outlined, .Transparent:
            return Color.black
        }
    }
    
    private var borderColor: Color {
        switch btnType {
        case .Fill:
            return Color.clear
        case .Outlined:
            return Color.black
        case .Transparent:
            return Color.clear
        }
    }
}

#Preview {
    VStack(spacing: 16) {
        MyButton(text: "Fill Button", btnType: .Fill) {
            print("Fill button tapped")
        }
        
        MyButton(text: "Outlined Button", btnType: .Outlined) {
            print("Fill button tapped")
        }
    }
    .padding()
}
