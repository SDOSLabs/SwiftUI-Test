//
//  SliderCustom.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 19/08/2020.
//

import SwiftUI
import UIKit

public struct SliderCustom: UIViewRepresentable {
    final public class Coordinator: NSObject {
        var value: Binding<Double>
        
        init(value: Binding<Double>) {
            self.value = value
        }
        
        @objc func valueChanged(_ sender: UISlider) {
            self.value.wrappedValue = Double(sender.value)
        }
    }
    
    var slider: UISlider = {
        var slider = UISlider(frame: .zero)
        return slider
    }()
    
    var thumbTintColor: UIColor? = nil
    var minimumTrackTintColor: UIColor? = nil
    var maximumTrackTintColor: UIColor? = nil
    var value: Binding<Double>
    
    public init(value: Binding<Double>) {
        self.value = value
    }
    
    public func makeUIView(context: Context) -> UISlider {
        slider.thumbTintColor = thumbTintColor
        slider.minimumTrackTintColor = minimumTrackTintColor
        slider.maximumTrackTintColor = maximumTrackTintColor
        slider.value = Float(value.wrappedValue)
        
        slider.addTarget(
            context.coordinator,
            action: #selector(Coordinator.valueChanged(_:)),
            for: .valueChanged
        )
        
        return slider
    }
    
    public func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = Float(self.value.wrappedValue)
    }
    
    public func makeCoordinator() -> Coordinator {
        Coordinator(value: value)
    }
}

public extension SliderCustom {
    func sliderThumbTintColor(_ thumbTintColor: UIColor) -> SliderCustom {
        var result = self
        result.thumbTintColor = thumbTintColor
        return result
    }
    
    func sliderMinimumTrackTintColor(_ minimumTrackTintColor: UIColor) -> SliderCustom {
        var result = self
        result.minimumTrackTintColor = minimumTrackTintColor
        return result
    }
    
    func sliderMaximumTrackTintColor(_ maximumTrackTintColor: UIColor) -> SliderCustom {
        var result = self
        result.maximumTrackTintColor = maximumTrackTintColor
        return result
    }
}

struct SliderCustom_Previews: PreviewProvider {
    static var previews: some View {
        SliderCustom(value: .constant(0.5))
            .sliderThumbTintColor(.red)
            .sliderMinimumTrackTintColor(.green)
            .sliderMaximumTrackTintColor(.purple)
    }
}
