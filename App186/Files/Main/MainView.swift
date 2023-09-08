//
//  MainView.swift
//  App186
//
//  Created by Вячеслав on 9/7/23.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Text("Main")
                    .foregroundColor(.black)
                    .font(.system(size: 21, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                VStack(alignment: .leading, content: {
                    
                    Text("All Lessons")
                        .foregroundColor(.gray)
                        .font(.system(size: 15, weight: .regular))
                        .padding(.horizontal)
                    
                    ScrollView(.vertical, showsIndicators: true) {
                        
                        LazyVStack {
                            
                            ForEach(viewModel.lessons) { index in
                                
                                Button(action: {
                                    
                                    viewModel.isDetail = true
                                    viewModel.selectedLesson = index
                                    
                                }, label: {
                                    
                                    Image("image")
                                        .resizable()
                                        .frame(height: 100)
                                        .overlay (
                                        
                                            VStack(alignment: .leading, content: {
                                                
                                                Text(index.title)
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 19, weight: .bold))
                                                
                                                Text(index.text)
                                                    .foregroundColor(.white.opacity(0.9))
                                                    .font(.system(size: 13, weight: .regular))
                                                    .lineLimit(3)
                                            })
                                            .padding()
                                        )
                                        .cornerRadius(10)
                                })
                            }
                        }
                        .padding()
                    }
                })
                
                Spacer()
            }
        }
        .sheet(isPresented: $viewModel.isDetail, content: {
            
            if let index = viewModel.selectedLesson {
                
                MainDetail(index: index)
            }
        })
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
