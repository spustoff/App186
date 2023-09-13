//
//  Users_5.swift
//  App186
//
//  Created by Вячеслав on 9/7/23.
//

import SwiftUI

struct Users_5: View {
    
    @AppStorage("status") var status: Bool = false
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Image("users_5")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                VStack(spacing: 7, content: {
                    
                    Text("Don't miss anything important")
                        .foregroundColor(.black)
                        .font(.system(size: 23, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                    Text("The most up-to-date information")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                .padding(.horizontal)
                
                Spacer()
                
                Button(action: {
                    
                    status = true
                    
                }, label: {
                    
                    Text("Enable Notifications")
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .medium))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color(red: 0/255, green: 107/255, blue: 233/255)))
                        .padding()
                })
                
                Button(action: {
                    
                    status = true
                    
                }, label: {
                    
                    Text("Skip")
                        .foregroundColor(.black)
                        .font(.system(size: 14, weight: .medium))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                })
            }
            .ignoresSafeArea(.all, edges: .top)
        }
    }
}

struct Users_5_Previews: PreviewProvider {
    static var previews: some View {
        Users_5()
    }
}
