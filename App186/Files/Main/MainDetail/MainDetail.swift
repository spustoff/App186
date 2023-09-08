//
//  MainDetail.swift
//  App186
//
//  Created by Вячеслав on 9/7/23.
//

import SwiftUI

struct MainDetail: View {
    
    @State var isTraining: Bool = false
    
    let index: MainModel
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ScrollView(.vertical, showsIndicators: true) {
                    
                    LazyVStack {
                        
                        Image("image")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        VStack(alignment: .leading, spacing: 6, content: {
                            
                            Text(index.title)
                                .foregroundColor(.black)
                                .font(.system(size: 21, weight: .semibold))
                                .multilineTextAlignment(.leading)
                            
                            Text(index.text)
                                .foregroundColor(.gray)
                                .font(.system(size: 14, weight: .regular))
                                .multilineTextAlignment(.leading)
                        })
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    }
                }
                
                Spacer()
                
                Button(action: {
                    
                    isTraining = true
                    
                }, label: {
                    
                    Text("Training")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .medium))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("primary")))
                        .padding()
                })
            }
            .ignoresSafeArea(.all, edges: .top)
        }
        .sheet(isPresented: $isTraining, content: {
            
            MainDetailTraining()
        })
    }
}

struct MainDetail_Previews: PreviewProvider {
    static var previews: some View {
        MainDetail(index: MainModel(title: "gdfhgfhgf", text: "fdsgfgfd"))
    }
}
