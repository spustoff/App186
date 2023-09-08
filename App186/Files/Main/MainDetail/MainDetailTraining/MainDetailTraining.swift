//
//  MainDetailTraining.swift
//  App186
//
//  Created by Вячеслав on 9/7/23.
//

import SwiftUI

struct MainDetailTraining: View {
    
    @State var isVisible: Bool = true
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Text("DAY 1")
                    .foregroundColor(.black)
                    .font(.system(size: 17, weight: .regular))
                    .padding(.top)
                    .padding(.top)
                
                if isVisible {
                    
                    Chart(pair: "EURUSD")
                        .disabled(true)
                    
                    HStack {
                        
                        Button(action: {
                            
                            isVisible = false
                            
                        }, label: {
                            
                            Text("UP")
                                .foregroundColor(.white)
                                .font(.system(size: 16, weight: .medium))
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                                .background(RoundedRectangle(cornerRadius: 10).fill(.green))
                        })
                        
                        Spacer()
                        
                        Button(action: {
                            
                            isVisible = false
                            
                        }, label: {
                            
                            Text("DOWN")
                                .foregroundColor(.white)
                                .font(.system(size: 16, weight: .medium))
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                                .background(RoundedRectangle(cornerRadius: 10).fill(.red))
                        })
                    }
                    .padding(.horizontal)
                    
                } else {
                    
                    VStack(spacing: 7) {
                        
                        Text("Well done")
                            .foregroundColor(.black)
                            .font(.system(size: 19, weight: .semibold))
                        
                        Image("empty")
                        
                        Text("You answered all the questions correctly")
                            .foregroundColor(.gray)
                            .font(.system(size: 14, weight: .regular))
                            .multilineTextAlignment(.center)
                        
                        Button(action: {
                            
                            isVisible = true
                            
                        }, label: {
                            
                            Text("Finish")
                                .foregroundColor(.white)
                                .font(.system(size: 15, weight: .medium))
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                                .background(RoundedRectangle(cornerRadius: 10).fill(Color("primary")))
                                .padding()
                                .padding(.top, 40)
                        })
                    }
                    .padding(.horizontal)
                    .frame(maxHeight: .infinity, alignment: .center)
                }
            }
        }
    }
}

struct MainDetailTraining_Previews: PreviewProvider {
    static var previews: some View {
        MainDetailTraining()
    }
}
