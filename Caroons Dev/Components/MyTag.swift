//
//  MyTag.swift
//  Caroons Dev
//
//  Created by Fa Ainama Caldera S  on 04/03/25.
//

import SwiftUI

struct MyTag: View {
    enum TagType {
        case Filled
        case Outlined
        case Transparent
    }
    
    let text: String
    let tagType: TagType
    
    var body: some View {
        Text(text)
            .font(.system(size: 14, weight: .medium))
            .padding(.vertical, 6)
            .padding(.horizontal, 12)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .overlay(
                RoundedRectangle(cornerRadius: 100)
                    .stroke(borderColor, lineWidth: 2)
            )
            .clipShape(Capsule())
    }
    
    private var backgroundColor: Color {
        switch tagType {
        case .Filled:
            return Color.black
        case .Outlined, .Transparent:
            return Color.clear
        }
    }
    
    private var textColor: Color {
        switch tagType {
        case .Filled:
            return Color.white
        case .Outlined, .Transparent:
            return Color.black
        }
    }
    
    private var borderColor: Color {
        switch tagType {
        case .Filled:
            return Color.clear
        case .Outlined:
            return Color.black
        case .Transparent:
            return Color.clear
        }
    }
}

#Preview {
    VStack(spacing: 8) {
        MyTag(text: "SwiftUI", tagType: .Filled)
        MyTag(text: "Outlined", tagType: .Outlined)
    }
    .padding()
}
