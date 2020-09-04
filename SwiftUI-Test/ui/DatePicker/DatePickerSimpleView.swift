//
//  DatePickerSimpleView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 03/09/2020.
//

import SwiftUI

struct DatePickerSimpleView: View {
    @State private var selectedDate1: Date = Date()
    @State private var selectedDate2: Date = Date()
    @State private var selectedDate3: Date = Date()
    @State private var selectedDate4: Date = Date()
    @State private var selectedDate5: Date = Date()
    @State private var selectedDate6: Date = Date()
    
    var dateFormatterFull: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .long
        return formatter
    }
    
    var dateFormatterDate: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        return formatter
    }
    
    var dateFormatterTime: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .long
        return formatter
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 15) {
                Group {
                    HeaderSectionView("init")
                    DatePicker("Select a date", selection: $selectedDate1)
                    HStack(alignment: .firstTextBaseline) {
                        Text("Selected date:")
                        Text("\(selectedDate1, formatter: dateFormatterFull)")
                            .multilineTextAlignment(.center)
                    }
                    .padding(.all, 5)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    Divider()
                }
                Group {
                    HeaderSectionView("init - Range From")
                    DatePicker("Select a date", selection: $selectedDate2, in: Date()...)
                    HStack(alignment: .firstTextBaseline) {
                        Text("Selected date:")
                        Text("\(selectedDate2, formatter: dateFormatterFull)")
                            .multilineTextAlignment(.center)
                    }
                    .padding(.all, 5)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))


                    Divider()
                }
                Group {
                    HeaderSectionView("init - Range To")
                    DatePicker("Select a date", selection: $selectedDate3, in: ...Date())
                    HStack(alignment: .firstTextBaseline) {
                        Text("Selected date:")
                        Text("\(selectedDate3, formatter: dateFormatterFull)")
                            .multilineTextAlignment(.center)
                    }
                    .padding(.all, 5)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))


                    Divider()
                }
                Group {
                    HeaderSectionView("init - Range From To (1 week)")
                    DatePicker("Select a date", selection: $selectedDate4, in: Date(timeIntervalSinceNow: -60*60*24*7)...Date(timeIntervalSinceNow: 60*60*24*7))
                    HStack(alignment: .firstTextBaseline) {
                        Text("Selected date:")
                        Text("\(selectedDate4, formatter: dateFormatterFull)")
                            .multilineTextAlignment(.center)
                    }
                    .padding(.all, 5)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))


                    Divider()
                }
                Group {
                    HeaderSectionView("init - hour")
                    DatePicker("Select a date", selection: $selectedDate5, displayedComponents: .hourAndMinute)
                    HStack(alignment: .firstTextBaseline) {
                        Text("Selected date:")
                        Text("\(selectedDate5, formatter: dateFormatterTime)")
                            .multilineTextAlignment(.center)
                    }
                    .padding(.all, 5)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    Divider()
                }
                Group {
                    HeaderSectionView("init - date")
                    DatePicker("Select a date", selection: $selectedDate6, displayedComponents: .date)
                    HStack(alignment: .firstTextBaseline) {
                        Text("Selected date:")
                        Text("\(selectedDate6, formatter: dateFormatterDate)")
                            .multilineTextAlignment(.center)
                    }
                    .padding(.all, 5)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    Divider()
                }
                
            }
            .padding()
        }
        .navigationBarTitle("Simple", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct DatePickerSimpleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DatePickerSimpleView()
        }
    }
}
