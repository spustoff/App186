//
//  Users_1.swift
//  App186
//
//  Created by Вячеслав on 9/7/23.
//

import SwiftUI

struct Users_1: View {

    let telegram: URL
    let isTelegram: Bool
    let isContacts: Bool
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Image("users_1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                VStack(spacing: 7, content: {
                    
                    Text("The new Trading view")
                        .foregroundColor(.black)
                        .font(.system(size: 23, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                    Text("Achieve success step by step")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                .padding(.horizontal)
                
                Spacer()
                
                NavigationLink(destination: {
                    
                    Users_2(telegram: telegram, isTelegram: isTelegram, isContacts: isContacts)
                        .navigationBarBackButtonHidden()
                    
                }, label: {
                    
                    Text("Next")
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .medium))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color(red: 0/255, green: 107/255, blue: 233/255)))
                        .padding()
                })
            }
            .ignoresSafeArea(.all, edges: .top)
        }
    }
}

struct Users_1_Previews: PreviewProvider {
    static var previews: some View {
        Users_1(telegram: URL(string: "h")!, isTelegram: false, isContacts: false)
    }
}
