//
//  ProfileView.swift
//  App186
//
//  Created by Вячеслав on 9/7/23.
//

import SwiftUI

struct ProfileView: View {
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Text("Profile")
                    .foregroundColor(.black)
                    .font(.system(size: 21, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                ScrollView(.vertical, showsIndicators: true) {
                    
                    LazyVStack {
                        
                        VStack(alignment: .leading, spacing: 10, content: {
                            
                            Text("Your days of activity")
                                .foregroundColor(.gray)
                                .font(.system(size: 15, weight: .regular))
                            
                            LazyVGrid(columns: [
                            
                                GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible()),
                                
                            ], content: {
                                
                                ForEach(1...31, id: \.self) { index in
                                    
                                    Text("\(index)")
                                        .foregroundColor(.black)
                                        .font(.system(size: 16, weight: .semibold))
                                        .frame(width: 30, height: 30)
                                }
                            })
                        })
                        .padding(.bottom)
                        
                        NavigationLink(destination: {
                            
                            ProfileRecoms()
                                .navigationBarBackButtonHidden()
                            
                        }, label: {
                            
                            HStack {
                                
                                Text("Recommendations for the day")
                                    .foregroundColor(.black)
                                    .font(.system(size: 17, weight: .medium))
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 13, weight: .regular))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.05)))
                        })
                    }
                    .padding()
                }
                
                Spacer()
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
