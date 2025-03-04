//
//  OnboardingView.swift
//  Caroons Dev
//
//  Created by Fa Ainama Caldera S  on 04/03/25.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 20) {
                Spacer()
                
                AsyncImage(
                    url: URL(string: "https://plus.unsplash.com/premium_photo-1728014305999-2515a0b4f575?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTAxfHxibGFjayUyMGFuZCUyMHdoaXRlfGVufDB8fDB8fHww"),
                    content: { image in
                        image.resizable()
                            .scaledToFill()
                            .frame(height: 298)
                            .cornerRadius(24)
                    },
                    placeholder: {
                        ProgressView()
                    }
                )
                
                VStack(alignment: .leading, spacing: 10)  {
                    Text("Human stories and ideas.")
                        .font(.system(size: 46, design: .default))
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.black)
                    
                    Text("Discover perspective that deepen understanding.")
                        .font(.system(.body, design: .default))
                        .fontWeight(.regular)
                        .foregroundStyle(Color.black)
                }
                
                Spacer()
                
                VStack(spacing: 14) {
                    MyButton(text: "Create account", btnType: .Fill) {
                        print("Fill button tapped")
                    }
                    
                    MyButton(text: "Sign in", btnType: .Outlined) {
                        print("Fill button tapped")
                    }
                }
                
                HStack {
                    Text("By signing up, you agree to our Terms of Service and acknowledge that our Privacy Policy applies to you")
                        .font(.system(.footnote, design: .default))
                        .fontWeight(.regular)
                        .foregroundStyle(Color.gray)
                        .lineLimit(2)
                        .multilineTextAlignment(.center)
                }.frame(maxWidth: .infinity)
            }.padding()
        }
    }
    
}

#Preview {
    OnboardingView()
}
