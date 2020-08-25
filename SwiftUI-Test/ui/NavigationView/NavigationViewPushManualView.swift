//
//  NavigationViewPushManualView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 21/08/2020.
//

import SwiftUI
import Combine

struct NavigationViewPushManualView: View {
    var body: some View {
        VStack {
            HeaderSectionView("NavigationLink")
            NavigationViewPushManualFirstView()
        }
        .navigationBarTitle("Push manual", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
        .padding()
    }
}

struct NavigationViewPushManualFirstView: View {
    @State var navigateToSecond = false
    @State var navigateToThird = false
    
    var body: some View {
        NavigationView {
            Group {
                
                VStack(spacing: 20) {
                    Text("First View")
                    Button("Go to second view") {
                        navigateToSecond = true
                    }
                    Button("Go to third view") {
                        navigateToThird = true
                    }
                    NavigationLink(
                        destination: NavigationViewPushManualSecondView(navigateToSecond: $navigateToSecond),
                        isActive: $navigateToSecond,
                        label: {
                            EmptyView()
                        })
                    NavigationLink(
                        destination: NavigationViewPushManualThirdView(navigateToThird: $navigateToThird),
                        isActive: $navigateToThird,
                        label: {
                            EmptyView()
                        })
                }
                .navigationBarTitle("First", displayMode: .inline)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.yellow.opacity(0.3))
            }
        }
    }
}

struct NavigationViewPushManualSecondView: View {
    var navigateToSecond: Binding<Bool>
    @State var navigateToThird = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Second View")
            Button("Go to third view") {
                navigateToThird = true
            }
            NavigationLink(
                destination: NavigationViewPushManualThirdView(navigateToSecond: navigateToSecond, navigateToThird: $navigateToThird),
                isActive: $navigateToThird,
                label: {
                    EmptyView()
                })
            Button("Back") {
                navigateToSecond.wrappedValue = false
            }
        }
        .navigationBarTitle("Second", displayMode: .inline)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(Color.green.opacity(0.3))
    }
}

struct NavigationViewPushManualThirdView: View {
    var navigateToSecond: Binding<Bool>?
    @Binding var navigateToThird: Bool
    @ObservedObject private var vmTimer = TimerViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Third View")
            Text("Back automatically in \(5 - vmTimer.seconds) seconds")
                .onChange(of: vmTimer.seconds) { seconds in
                    if seconds == 5 {
                        navigateToThird = false
                    }
                }
            if let navigateToSecond = navigateToSecond {
                Button("Back to root") {
                    navigateToSecond.wrappedValue = false
                }
            }
        }
        .navigationBarTitle("Third", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(Color.red.opacity(0.3))
        .onAppear {
            self.vmTimer.setup()
        }
        .onDisappear {
            self.vmTimer.cleanup()
        }
        
    }
}

class TimerViewModel: ObservableObject {
    @Published var seconds = 0
    var subscriber: AnyCancellable?

    func setup() {
        self.seconds = 0
        self.subscriber = Timer
            .publish(every: 1, on: .main, in: .common)
            .autoconnect()
            .sink(receiveValue: { _ in
                self.seconds += 1
            })
    }

    func cleanup() {
        self.subscriber = nil
    }
}

struct NavigationViewPushManualView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NavigationViewPushManualView()
        }
    }
}
