//
//  ShapeCircleView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 07/09/2020.
//

import SwiftUI

struct ShapeCircleView: View {
    private var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State private var trimFrom: CGFloat = 0
    @State private var trimTo: CGFloat = 0
    
    var body: some View {
        ScrollView {
            VStack(spacing: 15) {
                VStack(spacing: 15) {
                    Group {
                        HeaderSectionView("Init")
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 70, height: 70)
                        Divider()
                    }
                    Group {
                        HeaderSectionView("clipShape")
                        Text("S")
                            .font(.title)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .clipShape(Circle())
                        Divider()
                    }
                    Group {
                        HeaderSectionView("clipShape + overlay")
                        Text("S")
                            .font(.title)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.green]), startPoint: .leading, endPoint: .trailing), lineWidth: 5)
                            )
                        Divider()
                    }
                    Group {
                        HeaderSectionView("clipShape + overlay + custom stroke")
                        Text("S")
                            .font(.title)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(Color.red, style: StrokeStyle(lineWidth: 5, dash: [10]))
                            )
                        Divider()
                    }
                    Group {
                        HeaderSectionView("Animated clipShape + overlay")
                        Text("S")
                            .font(.title)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .trim(from: trimFrom, to: trimTo)
                                    .stroke(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.purple]), startPoint: .leading, endPoint: .trailing), lineWidth: 5)
                            )
                            .onReceive(timer) { _ in
                                withAnimation {
                                    let increment: CGFloat = 0.2
                                    if trimFrom == 0 && trimTo != 1 {
                                        trimTo += increment
                                        if trimTo > 1 {
                                            trimTo = 1
                                        }
                                    } else if trimTo == 1 && trimFrom != 1 {
                                        trimFrom += increment
                                        if trimFrom > 1 {
                                            trimFrom = 1
                                        }
                                    } else if trimTo == 1 && trimFrom == 1 {
                                        trimFrom = 0
                                        trimTo = 0
                                    }
                                }
                                
                            }
                        Divider()
                    }
                }
            }
            .padding()
        }
        .navigationBarTitle("Circle", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct ShapeCircleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ShapeCircleView()
        }
    }
}
