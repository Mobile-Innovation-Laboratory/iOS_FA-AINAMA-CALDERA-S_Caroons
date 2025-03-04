//
//  MyTextField.swift
//  Caroons Dev
//
//  Created by Fa Ainama Caldera S  on 04/03/25.
//

import SwiftUI

struct MyTextField: View {
    @Binding var text: String
    
    @State private var isPasswordVisible: Bool = false
    
    let placeholder: String
    let isSecure: Bool
    let icon: String?
    let label: String?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(label ?? "")
                .font(.system(.callout, weight: .medium))
                .foregroundColor(.black)
            
            HStack {
                if let icon = icon {
                    Image(systemName: icon)
                        .foregroundColor(.black)
                }
                
                if isSecure {
                    if isPasswordVisible {
                        TextField(placeholder, text: $text)
                    } else {
                        SecureField(placeholder, text: $text)
                    }
                } else {
                    TextField(placeholder, text: $text)
                }
                
                if isSecure {
                    Button(action: {
                        isPasswordVisible.toggle()
                    }) {
                        Image(systemName: isPasswordVisible ? "eye.fill" : "eye.slash.fill")
                            .foregroundColor(isPasswordVisible ? .black : .gray)
                    }
                }
            }
            .padding(.vertical, 14)
            .padding(.horizontal, 10)
            .background(Color.white)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 0.5)
            )
        }
    }
}

#Preview {
    VStack(spacing: 40) {
        MyTextField(text: .constant(""), placeholder: "Enter your email", isSecure: false, icon: "", label: "Email")
        MyTextField(text: .constant(""), placeholder: "Enter your password", isSecure: true, icon: "lock", label: "Password")
    }
    .padding()
}

