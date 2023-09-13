//
//  Reviewers_1.swift
//  App186
//
//  Created by Вячеслав on 9/7/23.
//

import SwiftUI

struct Reviewers_1: View {
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Image("reviewers_1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                VStack(spacing: 7, content: {
                    
                    Text("Dive into the 30 day challenge")
                        .foregroundColor(.black)
                        .font(.system(size: 23, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                    Text("Practice every day for a month")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                .padding(.horizontal)
                
                Spacer()
                
                NavigationLink(destination: {
                    
                    Reviewers_2()
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

struct Reviewers_1_Previews: PreviewProvider {
    static var previews: some View {
        Reviewers_1()
    }
}
