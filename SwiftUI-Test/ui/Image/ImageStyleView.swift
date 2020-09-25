//
//  ImageStyleView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 17/08/2020.
//

import SwiftUI

struct ImageStyleView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 15) {
                Group {
                    HeaderSectionView("resizable")
                    Image("star_wars")
                        .resizable()
                        .frame(height: 400)
                    Divider()
                }
                Group {
                    HeaderSectionView("aspectRatio / scaledToFit / scaledToFill")
                    HStack(spacing: 20) {
                        Image("star_wars")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 200)
                        Image("star_wars")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 200)
                            .clipped()
                    }
                    Divider()
                }
                Group {
                    HeaderSectionView("interpolation")
                    HStack(spacing: 20) {
                        VStack {
                            Image("lion")
                                .resizable()
                                .interpolation(.high)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 200)
                            Text(".high")
                        }
                        VStack {
                            Image("lion")
                                .resizable()
                                .interpolation(.none)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 200)
                            Text(".none")
                        }
                    }
                    Divider()
                }
                Group {
                    HeaderSectionView("renderingMode")
                    HStack(spacing: 20) {
                        VStack {
                            Button(action: {}, label: {
                                Image("marker")
                                    .resizable()
                                    .renderingMode(.template)
                                    .accentColor(Color.green)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                            })
                            Text(".template")
                        }
                        VStack {
                            Button(action: {}, label: {
                                Image("marker")
                                    .resizable()
                                    .renderingMode(.original)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                            })
                            Text(".original")
                        }
                        
                    }
                    Divider()
                }
                Group {
                    HeaderSectionView("mask")
                    Rectangle()
                        .foregroundColor(.green)
                        .frame(height: 200)
                        .background(Color.blue)
                        .mask(Image("message_bubble")
                                .resizable(capInsets: EdgeInsets(top: 10, leading: 50, bottom: 20, trailing: 10))
                        )
                    Image("star_wars")
                        .resizable()
                        .frame(width: 300, height: 200)
                        .mask(Text("Hello, World!")
                                .font(Font.system(size: 60, weight: .bold)
                                )
                        )
                    Divider()
                }
            }
            .padding()
        }
        .navigationBarTitle("Image Style", displayMode: .inline)
        .background(NavigationConfigurator(backgroundColor: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), titleColor: .white))
        
    }
}

struct ImageStyleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ImageStyleView()
        }
    }
}
