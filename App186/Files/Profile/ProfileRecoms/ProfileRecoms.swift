//
//  ProfileRecoms.swift
//  App186
//
//  Created by Вячеслав on 9/7/23.
//

import SwiftUI

struct ProfileRecoms: View {
    
    @Environment(\.presentationMode) var router
    
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Recommendations for the day")
                        .foregroundColor(.black)
                        .font(.system(size: 16, weight: .medium))
                    
                    HStack {
                        
                        Button(action: {
                            
                            router.wrappedValue.dismiss()
                            
                        }, label: {
                            
                            Image(systemName: "chevron.left")
                                .foregroundColor(Color("primary"))
                                .font(.system(size: 17, weight: .semibold))
                        })
                        
                        Spacer()
                    }
                }
                .padding()
                
                ScrollView(.vertical, showsIndicators: true) {
                    
                    LazyVStack {
                        
                        VStack(alignment: .leading, content: {
                            
                            Text("Lessons")
                                .foregroundColor(.gray)
                                .font(.system(size: 15, weight: .regular))
                                .padding(.horizontal)
                            
                            ScrollView(.vertical, showsIndicators: true) {
                                
                                LazyVStack {
                                    
                                    ForEach(viewModel.lessons.prefix(3)) { index in
                                        
                                        Button(action: {
                                            
                                            viewModel.isDetail = true
                                            viewModel.selectedLesson = index
                                            
                                        }, label: {
                                            
                                            HStack {
                                                
                                                Image("image")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 66, height: 66)
                                                    .cornerRadius(10)
                                                
                                                VStack(alignment: .leading, spacing: 7, content: {
                                                    
                                                    Text(index.title)
                                                        .foregroundColor(.black)
                                                        .font(.system(size: 16, weight: .medium))
                                                        .lineLimit(1)
                                                        .multilineTextAlignment(.leading)
                                                    
                                                    Text(index.text)
                                                        .foregroundColor(.gray)
                                                        .font(.system(size: 13, weight: .regular))
                                                        .lineLimit(2)
                                                        .multilineTextAlignment(.leading)
                                                })
                                            }
                                            .padding()
                                        })
                                    }
                                }
                            }
                        })
                    }
                }
            }
        }
        .sheet(isPresented: $viewModel.isDetail, content: {
            
            if let index = viewModel.selectedLesson {
                
                MainDetail(index: index)
            }
        })
    }
}

struct ProfileRecoms_Previews: PreviewProvider {
    static var previews: some View {
        ProfileRecoms()
    }
}
