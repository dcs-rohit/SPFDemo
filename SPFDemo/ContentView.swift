//
//  ContentView.swift
//  SPFDemo
//
//  Created by differenz157 on 16/02/21.
//

import SwiftUI
import GoogleSignIn

struct ContentView: View {
  
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                HStack{
                    Image("iconSpotify")
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                    Text("Spotify")
                        .font(.system(size: 50, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                }
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                    Text("Sign up for free")
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(MyButtonStyle(btnBgColor:.green))
                .padding(10)
                
                Button(action: {}){
                    HStack{
                        Image(systemName: "iphone")
                            .resizable()
                            .frame(width: 18, height: 22, alignment: .center)
                            .padding(.horizontal)
                        Text("Sign up with Mobile number")
                            .font(.system(size: 20, weight: .bold, design: .rounded))
                            .frame(maxWidth: .infinity)
                        
                    }
                   
                    
                }
                .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.white, lineWidth: 1.2)
                        )
                .buttonStyle(MyButtonStyle(btnBgColor:.black))
                .padding(10)
                
                
                Button(action:{
                    GIDSignIn.sharedInstance()?.presentingViewController = UIApplication.shared.windows.last?.rootViewController
                    GIDSignIn.sharedInstance()?.signIn()
                    if let user = GIDSignIn.sharedInstance()?.currentUser {
                            // User signed in
                         print("\(user.profile.givenName!)")
                        }
                }){
                    HStack{
                        Image("iconGoogle")
                            .resizable()
                            .frame(width: 40, height: 35, alignment: .center)
                        
                        
                        Text("Sign up with Google")
                            .font(.system(size: 20, weight: .bold, design: .rounded))
                            .frame(maxWidth: .infinity)
                        
                        
                    }
                    
                }
                
                .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.white, lineWidth: 1.2)
                        )
                .buttonStyle(MyButtonStyle(btnBgColor:.black))
                .padding(10)
                
                Button(action: {}){
                    HStack{
                        Image("iconFb")
                            .resizable()
                            .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        
                        Text("Sign up with Facebook")
                            .font(.system(size: 20, weight: .bold, design: .rounded))
                            .frame(maxWidth: .infinity)
                        
                        
                    }
                    
                }
                .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.white, lineWidth: 1.2)
                        )
                .buttonStyle(MyButtonStyle(btnBgColor:.black))
                .padding(10)
                Spacer()
            }
            .padding()
            .frame(maxWidth: .infinity)
        }
        .background(Color .black)
        .ignoresSafeArea()
            
        
        
        
        
    }
    
}

//struct ContentView_Previews: PreviewProvider {
//
//    static var previews: some View {
//        ContentView()
//    }
//}

