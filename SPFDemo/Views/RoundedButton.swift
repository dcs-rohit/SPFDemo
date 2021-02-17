//
//  RoundedButton.swift
//  SPFDemo
//
//  Created by differenz157 on 16/02/21.
//

import SwiftUI
struct MyButtonStyle: ButtonStyle {
    var btnBgColor :Color

  func makeBody(configuration: Self.Configuration) -> some View {
    configuration.label
      .padding()
      .foregroundColor(.white)
//      .background(configuration.isPressed ? Color.red : Color.blue)
        .background(btnBgColor)
       
        
        .cornerRadius(30)
  }

}


