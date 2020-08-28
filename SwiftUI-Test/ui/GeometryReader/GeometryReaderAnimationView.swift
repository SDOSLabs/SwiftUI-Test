//
//  GeometryReaderAnimationView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 28/08/2020.
//

import SwiftUI

struct GeometryReaderAnimationView: View {
    let colors: [Color] = [.blue, .red, .orange, .yellow, .green, .purple]
    
    var body: some View {
        Group {
            GeometryReader { geometryParent in
                ScrollView {
                    ForEach(0..<50) { index in
                        GeometryReader { geometry in
                            Text("Index: \(index)")
                                .font(.title2)
                                .frame(width: geometryParent.size.width)
                                .background(colors[index % 6].opacity(0.3))
                                .scaleEffect(ratioScale(reference: geometryParent.size.height / 2, actual: geometry.frame(in: .global).minY))
                            
                        }
                        .frame(height: 50)
                    }
                }
            }
            .padding()
        }
        .navigationBarTitle("Animation", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
    
    func ratioScale(reference: CGFloat, actual: CGFloat) -> CGFloat {
        let value = min(abs(reference - actual), 50)
        return abs((value * 2 / 100) - 1) + 1
    }
}

struct GeometryReaderAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderAnimationView()
    }
}
