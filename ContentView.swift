//
//  ContentView.swift
//  login page
//
//  Created by Amit Sharma on 27/04/24.
//

import SwiftUI

struct ContentView: View {
    @State private var userName: String = String()
    
    @State private var userPassword:String = String()
    
    var body: some View {
        
        VStack{
            Text("Login").font(.largeTitle).padding()
            
            Text("Explore SwiftUI with Codecat15").font(.subheadline).padding()
            
            TextField("userName", text: $userName).padding().background(Color.gray).cornerRadius(4)
            
            SecureField("password", text: $userPassword).padding().background(Color.gray).cornerRadius(4)
            
            HStack{
                Button(action: {
                    debugPrint("login tapped")
                    
                }, label: {
                    Text("Login")
                })
                Spacer()
                
                Button(action: {
                    debugPrint("forgot password tapped")
                    
                }, label: {
                    Text("forgot password")
                })
            }.padding()
            
        }.padding()
        
        
       
        
    }
}

#Preview {
    ContentView()
}
