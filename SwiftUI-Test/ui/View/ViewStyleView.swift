//
//  ViewStyleView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 12/08/2020.
//

import SwiftUI

struct ViewStyleView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 15) {
                Group {
                    Group {
                        Group {
                            HeaderSectionView("frame + background")
                            Text("Hello, World!")
                                .frame(width: 300, height: 100, alignment: .center)
                                .background(Color.red)
                            Divider()
                        }
                        Group {
                            HeaderSectionView("background + frame")
                            Text("Hello, World!")
                                .background(Color.red)
                                .frame(width: 300, height: 100, alignment: .center)
                            Divider()
                        }
                        Group {
                            HeaderSectionView("Two backgrounds")
                            Text("Hello, World!")
                                .padding()
                                .background(Color.yellow)
                                .frame(width: 300, height: 100, alignment: .center)
                                .background(Color.red)
                                .clipShape(Capsule())
                            Divider()
                        }
                        Group {
                            HeaderSectionView("accentColor")
                            Group {
                                Button("Hello, World!") { }
                                Slider(value: .constant(5), in: 0...10)
                            }
                            .accentColor(.purple)
                            Divider()
                        }
                    }
                    Group {
                        HeaderSectionView("background")
                        Text("Hello, World!")
                            .background(Color.yellow)
                        Divider()
                    }
                    Group {
                        HeaderSectionView("blur")
                        Text("Hello, World!")
                            .background(
                                Ellipse()
                                    .fill(Color.gray).padding(.all, -10)
                            ).blur(radius: 3)
                        Divider()
                    }
                    Group {
                        HeaderSectionView("border")
                        Text("Hello, world!")
                            .padding()
                            .border(Color.black, width: 5)
                        Text("Hello, world!")
                            .padding()
                            .border(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing), width: 5)
                        Divider()
                    }
                    Group {
                        HeaderSectionView("clipShape")
                        Button("Hello, World") {
                            //Do something
                        }
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        Divider()
                    }
                    Group {
                        HeaderSectionView("contentShape")
                        VStack {
                            Image("sdos_office")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100, alignment: .center)
                            Spacer()
                                .frame(height: 50)
                            Text("Hello, World!")
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            print("Execute and watch log")
                        }
                        .padding()
                        .border(Color.black, width: 1)
                        Divider()
                    }
                    Group {
                        HeaderSectionView("cornerRadius")
                        Button("Hello, World") {
                            //Do something
                        }
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(10.0)
                        Divider()
                    }
                    Group {
                        Group {
                            HeaderSectionView("disabled")
                            Button("Hello, World") {
                                //Do something
                            }
                            .disabled(true)
                            Divider()
                        }
                        Group {
                            HeaderSectionView("foreground")
                            Button("Hello, World") {
                                //Do something
                            }
                            .foregroundColor(.red)
                            Divider()
                        }
                        Group {
                            HeaderSectionView("frame")
                            Button("Hello, World") {
                                //Do something
                            }
                            .frame(width: 250)
                            .padding()
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(10.0)
                            VStack(spacing: 30) {
                                Text("Hello, World!")
                                    .frame(height: 200)
                                    .background(Color.yellow)
                                Text("Bye, World!")
                                    .frame(maxWidth: .infinity)
                                    .background(Color.green)
                            }
                            .frame(maxHeight: .infinity, alignment: .topTrailing)
                            .background(Color.red)
                            Divider()
                        }
                        Group {
                            HeaderSectionView("offset")
                            Group {
                                Button("Hello, World") {
                                    //Do something
                                }
                                .padding()
                                .background(Color.black)
                                .foregroundColor(.white)
                                .cornerRadius(10.0)
                                .offset(x: 10.0, y: 10.0)
                            }
                            .background(Color.red)
                            Divider()
                        }
                        Group {
                            HeaderSectionView("opacity")
                            Group {
                                Button("Hello, World") {
                                    //Do something
                                }
                                .padding()
                                .background(Color.black)
                                .foregroundColor(.white)
                                .cornerRadius(30.0)
                                .opacity(0.7)
                            }
                            .background(Color.red)
                            .padding()
                            Divider()
                        }
                        Group {
                            HeaderSectionView("overlay")
                            Image(systemName: "folder")
                                .font(.system(size: 55, weight: .thin))
                                .overlay(Text("❤️")
                                            .offset(y: -5)
                                         , alignment: .bottom)
                            Text("Hello, World!")
                                .padding()
                                .background(Color.black)
                                .foregroundColor(.white)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.green, lineWidth: 10)
                                )
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Divider()
                        }
                        Group {
                            HeaderSectionView("padding")
                            Text("Hello, World!")
                                .padding()
                                .background(Color.black)
                                .foregroundColor(.white)
                            Text("Hello, World!")
                                .padding(3)
                                .background(Color.black)
                                .foregroundColor(.white)
                            Text("Hello, World!")
                                .padding(.all, 30)
                                .background(Color.black)
                                .foregroundColor(.white)
                            Text("Hello, World!")
                                .padding([.leading, .trailing], 30)
                                .background(Color.black)
                                .foregroundColor(.white)
                            Divider()
                        }
                        Group {
                            HeaderSectionView("rotationEffect")
                            Text("Hello, World!")
                                .padding()
                                .background(Color.black)
                                .foregroundColor(.white)
                                .rotationEffect(.init(degrees: 90))
                            Divider()
                        }
                        Group {
                            HeaderSectionView("shadow")
                            Text("Hello, World!")
                                .padding()
                                .shadow(color: .red, radius: 2, x: 2, y: 5)
                            Divider()
                        }
                        Group {
                            Group {
                                HeaderSectionView("onAppear")
                                Group {
                                    Text("Hello, World!")
                                        .onAppear {
                                            print("Text Appear")
                                        }
                                }.onAppear {
                                    print("Group Appear")
                                }
                                Divider()
                            }
                            Group {
                                HeaderSectionView("onDisappear")
                                Group {
                                    Text("Hello, World!")
                                        .onDisappear {
                                            print("Text Disappear")
                                        }
                                }.onDisappear {
                                    print("Group Disappear")
                                }
                                Divider()
                            }
                            Group {
                                HeaderSectionView("onTapGesture")
                                Text("Hello, World! (Default)")
                                    .onTapGesture {
                                        print("Tap gesture")
                                    }
                                Text("Hello, World! (3 taps)")
                                    .onTapGesture(count: 3) {
                                        print("Tap gesture")
                                    }
                                Divider()
                            }
                            Group {
                                HeaderSectionView("onLongPressGesture")
                                Text("Hello, World! (Default)")
                                    .onLongPressGesture {
                                        print("Long gesture")
                                    }
                                Text("Hello, World! (2 seconds)")
                                    .onLongPressGesture(minimumDuration: 2) {
                                        print("Long gesture")
                                    }
                                Divider()
                            }
                        }
                    }
                    
                }
            }
            .navigationBarTitle("View Style", displayMode: .automatic)
            .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
            .padding()
        }
    }
}

struct ViewStyleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ViewStyleView()
        }
    }
}
