//
//  ContentView.swift
//  Hyeon Card
//
//  Created by Hyeon Kim on 2020/03/23.
//  Copyright © 2020 Hyeon Kim. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red:0.09, green:0.63, blue:0.52)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("me")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                    .shadow(radius: 10.0)
                
                VStack {
                    Text("Hyeon Kim")
                        .foregroundColor(.white)
                        .font(Font.custom("Pacifico-Regular", size: 40))
                        .bold()
                    
                    Text("iOS Developer")
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                }
                .shadow(radius: 5.0)
                
                Divider()
                
                VStack {
                    InfoView(name: "+82 10-1234-5678", imageName: "phone.fill")
                    
                    InfoView(name: "veryimportantprogrammer@gmail.com", imageName: "envelope.fill")
                }
                .padding(.all)
                .shadow(radius: 10.0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View  {
        ContentView()
    }
}


