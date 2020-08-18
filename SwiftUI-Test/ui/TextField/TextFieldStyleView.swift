//
//  TextFieldStyleView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 12/08/2020.
//

import SwiftUI

struct TextFieldStyleView: View {
    @State var customPlaceholderText1: String = ""
    @State var customPlaceholderText2: String = ""
    
    let disableScroll: Bool
    
    init(disableScroll: Bool = false) {
        self.disableScroll = disableScroll
    }
    
    var body: some View {
        ScrollViewKeyboard(disableScroll: disableScroll) {
            VStack(spacing: 15) {
                Group {
                    Group {
                        HeaderSectionView("buttonStyle")
                        TextField("Default", text: .constant(""))
                            .textFieldStyle(DefaultTextFieldStyle())
                        TextField("Plain", text: .constant(""))
                            .textFieldStyle(PlainTextFieldStyle())
                        TextField("RoundedBorder", text: .constant(""))
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        Divider()
                    }
                    Group {
                        HeaderSectionView("background")
                        TextField("Background", text: .constant(""))
                            .padding()
                            .background(Color.yellow)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        Divider()
                    }
                    Group {
                        HeaderSectionView("foreground")
                        TextField("Foreground placeholder", text: .constant("Text foreground"))
                            .padding()
                            .foregroundColor(.blue)
                        Divider()
                    }
                    Group {
                        HeaderSectionView("font")
                        TextField("Font placeholder", text: .constant("Text font"))
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                            .font(.caption2)
                        Divider()
                    }
                    Group {
                        HeaderSectionView("textContentType")
                        TextField("Email placeholder", text: .constant(""))
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                            .textContentType(.emailAddress)
                        TextField("Country placeholder", text: .constant(""))
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                            .textContentType(.countryName)
                        Divider()
                    }
                    Group {
                        HeaderSectionView("keyboardType")
                        TextField("keyboardType numberPad", text: .constant(""))
                            .keyboardType(.numberPad)
                        TextField("keyboardType emailAddress", text: .constant(""))
                            .keyboardType(.emailAddress)
                        Divider()
                    }
                    Group {
                        HeaderSectionView("autocapitalization")
                        TextField("Autocapitalization allCharacters", text: .constant(""))
                            .autocapitalization(.allCharacters)
                        TextField("Autocapitalization words", text: .constant(""))
                            .autocapitalization(.words)
                        Divider()
                    }
                    Group {
                        HeaderSectionView("custom border")
                        TextField("Background", text: .constant(""))
                            .padding()
                            .background(Color.yellow)
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 2))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        Divider()
                    }
                    Group {
                        HeaderSectionView("custom placeholder")
                        TextField("", text: $customPlaceholderText1)
                            .padding()
                            .foregroundColor(.blue)
                            .placeholder(Text("Custom placeholder 1").padding().foregroundColor(.purple), show: customPlaceholderText1.isEmpty)
                        
                        TextField("", text: $customPlaceholderText2)
                            .padding()
                            .foregroundColor(.white)
                            .placeholder(Text("Custom placeholder 2").padding().foregroundColor(.orange), show: customPlaceholderText2.isEmpty)
                            .background(Color.black)
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.red, lineWidth: 3))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        Divider()
                    }
                    Group {
                        HeaderSectionView("hide keyboard")
                        TextField("Hide keyboard", text: .constant(""))
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        Button("Done!") {
                            self.hideKeyboard()
                        }
                        TextField("Hide keyboard 2", text: .constant(""))
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        Divider()
                    }
                }
                Group {
                    HeaderSectionView("SecureField")
                    SecureField("Secure placeholder", text: .constant(""))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Divider()
                }
            }
            .padding()
            
        }.navigationBarTitle("TextField Style", displayMode: .inline)
        .background(NavigationConfigurator(backgroundColor: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), titleColor: .white))
        .contentShape(Rectangle())
        .onTapGesture {
            self.hideKeyboard()
        }
    }
}

struct TextFieldStyleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TextFieldStyleView()
        }
    }
}
