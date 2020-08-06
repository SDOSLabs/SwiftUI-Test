//
//  TextStyleView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 06/08/2020.
//

import SwiftUI

struct TextStyleView: View {
    var body: some View {
        ScrollView {
            VStack {
                Group {
                    Group {
                        Text("This is a long text with line limit set to 2. I need more text for ensure is a real multiline text, so I repeat all to say before. `This is a long text with line limit set to 1`. Now, for sure it's a multiline text")
                            .lineLimit(2)
                        Divider()
                    }
                    Group {
                        Text("This is a long text with line limit set to 1 and tuncationMode set to middle. I need more text for ensure is a real multiline text, so I repeat all to say before. `This is a long text with line limit set to 1 and tuncationMode set to middle`. Now, for sure it's a multiline text")
                            .lineLimit(1)
                            .truncationMode(.middle)
                        Divider()
                    }
                    Group {
                        Text("Text with background")
                            .background(Color.yellow)
                        Text("Text with background (frame set)")
                            .frame(maxWidth: .infinity)
                            .background(Color.yellow)
                        Divider()
                    }
                    Group {
                        Text("Text with foreground")
                            .foregroundColor(Color.red)
                        Divider()
                    }
                    Group {
                        Text("Text with font")
                            .font(.headline)
                        Text("Text with custom font")
                            .font(.custom("AmericanTypewriter", size: 15))
                        Divider()
                    }
                    Group {
                        Text("This is a long text with multiline alignment and set to trailing to view the effect")
                            .multilineTextAlignment(.trailing)
                        Divider()
                    }
                    Group {
                        Text("This is a long text with line spacing and large title for show de line spacing modification")
                            .font(.title)
                            .lineSpacing(30)
                        Divider()
                    }
                    Group {
                        Text("kerning: ffi")
                            .font(.custom("AmericanTypewriter", size: 20))
                            .kerning(10)
                        Text("tracking: ffi")
                            .font(.custom("AmericanTypewriter", size: 20))
                            .tracking(10)
                        Divider()
                    }
                }
                Group {
                    Group {
                        Text("Text strikethrough")
                            .strikethrough()
                        Text("Text strikethrough red")
                            .strikethrough(true, color: Color.red)
                        Divider()
                    }
                    Group {
                        Text("Text underline")
                            .underline()
                        Text("Text underline red")
                            .underline(true, color: Color.red)
                        Divider()
                    }
                    
                    Group {
                        Text("Text baseline")
                            .baselineOffset(30)
                            .background(Color.yellow)
                        Divider()
                    }
                    Group {
                        TextHtml("<head><style type='text/css'>p { font: 20pt 'AmericanTypewriter'; color: #1a004b; }</style></head><p><strong>HTML text</strong></br> This work fine.</p>")
                        Divider()
                    }
                }
            }
            .padding()
        }
        .navigationBarTitle("Text Simple", displayMode: .inline)
    }
}

struct TextStyleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TextStyleView()
                .background(NavigationConfigurator(backgroundColor: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), titleColor: .white))
        }
    }
}
