////
////  Test.swift
////  SPFDemo
////
////  Created by differenz157 on 16/02/21.
////
//
import SwiftUI

struct Test: View {
//    var body: some View {
//        Picker(selection: .constant(1), label: Text("Picker")){
//            Text("1").tag(1)
//            Text("2").tag(2)
//        }
//      .pickerStyle(SegmentedPickerStyle())
//    }
    var colors = ["Red", "Green", "Blue", "Yello"]
    @State private var selectedColor = "Red"
    @State private var color : Color = Color .white
        var body: some View {
            VStack {
                Spacer()
                Picker("Please choose a color", selection: $selectedColor) {
                 
                    ForEach(colors, id: \.self) {
                        Text($0)
                    }
                }.pickerStyle(SegmentedPickerStyle())
                Text("You selected: \(selectedColor)")
               
                Spacer()
            }
            .background(selectedColor == "Red" ? Color .red : selectedColor == "Green" ? Color .green : selectedColor == "Blue" ? Color .blue : selectedColor == "Yello" ?  Color .yellow : Color .white)
            
        }
       
}
//
//struct Test_Previews: PreviewProvider {
//    static var previews: some View {
//        Test()
//    }
//}
//import SwiftUI
//import GoogleSignIn
//import FBSDKLoginKit
//
//struct LoginView {
//    
//    
//    var body: some View {
//        LoadingView(isShowing: .constant(loading)) {
//            NavigationView {
//                ScrollView {
//                    VStack {
//                        
//                        Text("Or Login with").font(.footnote)
//                        
//                        HStack {
//                            Button(action: {}, label: {
//                                Image("ic_facebook").foregroundColor(Color.white).frame(width: 20, height: 20)
//                            })
//                            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
//                            .background(Color("facebook"))
//                            .cornerRadius(8.0)
//                            
//                            Button(action: self.socialLogin.attemptLoginGoogle, label: {
//                                Image("ic_google").frame(width: 20, height: 20)
//                            })
//                            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
//                            .background(Color.white)
//                            .cornerRadius(8.0)
//                            .shadow(radius: 4.0)
//                            
//                            
//                        }.padding()
//                    }.padding(.all, 32)
//                }.navigationBarTitle(Text("Login"))
//            }
//        }
//    }
//}
////    func logginFb() {
////        socialLogin.attemptLoginFb(completion: { result, error in
////
////        })
////    }
//
//
//struct SocialLogin: UIViewRepresentable {
//    
//    func makeUIView(context: UIViewRepresentableContext<SocialLogin>) -> UIView {
//        return UIView()
//    }
//    
//    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<SocialLogin>) {
//    }
//    
//    func attemptLoginGoogle() {
//        GIDSignIn.sharedInstance()?.presentingViewController = UIApplication.shared.windows.last?.rootViewController
//        GIDSignIn.sharedInstance()?.signIn()
//    }
//    
//    //    func attemptLoginFb(completion: @escaping (_ result: LoginManagerLoginResult?, _ error: Error?) -> Void) {
//    //        let fbLoginManager: LoginManager = LoginManager()
//    //        fbLoginManager.logOut()
//    //        fbLoginManager.logIn(withReadPermissions: ["email"], from: UIApplication.shared.windows.last?.rootViewController) { (result, error) -> Void in
//    //            completion(result, error)
//    //        }
//    //    }
//    
//}
//
//struct LoginView_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginView()
//    }
//}
