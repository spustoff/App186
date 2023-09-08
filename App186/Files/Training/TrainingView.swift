//
//  TrainingView.swift
//  App186
//
//  Created by Вячеслав on 9/7/23.
//

import SwiftUI

struct TrainingView: View {
    
    @State var isTraining: Bool = false
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Text("Training")
                    .foregroundColor(.black)
                    .font(.system(size: 21, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                VStack(spacing: 35, content: {
                    
                    Text("Here you can train in addition to\nlessons")
                        .foregroundColor(Color("primary"))
                        .font(.system(size: 16, weight: .medium))
                        .multilineTextAlignment(.center)
                    
                    Image("gift")
                    
                    Text("Hone your skills and gain experience")
                        .foregroundColor(.black)
                        .font(.system(size: 13, weight: .medium))
                    
                    Button(action: {
                        
                        isTraining = true
                        
                    }, label: {
                        
                        Text("Start")
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .medium))
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("primary")))
                            .padding()
                    })
                })
                .frame(maxHeight: .infinity, alignment: .center)
                
                Spacer()
            }
        }
        .sheet(isPresented: $isTraining, content: {
            
            MainDetailTraining()
        })
    }
}

struct TrainingView_Previews: PreviewProvider {
    static var previews: some View {
        TrainingView()
    }
}
