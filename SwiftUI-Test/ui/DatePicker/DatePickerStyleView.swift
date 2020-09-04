//
//  DatePickerStyleView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 03/09/2020.
//

import SwiftUI

struct DatePickerStyleView: View {
    @State private var selectedDate1: Date = Date()
    @State private var selectedDate2: Date = Date()
    @State private var selectedDate3: Date = Date()
    @State private var selectedDate4: Date = Date()
    @State private var selectedDate5: Date = Date()

    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .long
        return formatter
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 15) {
                Group {
                    HeaderSectionView("datePickerStyle - CompactDatePickerStyle")
                    DatePicker("Select a date", selection: $selectedDate1)
                        .datePickerStyle(CompactDatePickerStyle())
                        .labelsHidden()
                    HStack(alignment: .firstTextBaseline) {
                        Text("Selected date:")
                        Text("\(selectedDate1, formatter: dateFormatter)")
                            .multilineTextAlignment(.center)
                    }
                    .padding(.all, 5)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    Divider()
                }
                Group {
                    HeaderSectionView("datePickerStyle - GraphicalDatePickerStyle")
                    DatePicker("Select a date", selection: $selectedDate2)
                        .datePickerStyle(GraphicalDatePickerStyle())
                        .labelsHidden()
                    HStack(alignment: .firstTextBaseline) {
                        Text("Selected date:")
                        Text("\(selectedDate2, formatter: dateFormatter)")
                            .multilineTextAlignment(.center)
                    }
                    .padding(.all, 5)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    Divider()
                }
                Group {
                    HeaderSectionView("datePickerStyle - WheelDatePickerStyle")
                    DatePicker("Select a date", selection: $selectedDate3)
                        .datePickerStyle(WheelDatePickerStyle())
                        .labelsHidden()
                    HStack(alignment: .firstTextBaseline) {
                        Text("Selected date:")
                        Text("\(selectedDate3, formatter: dateFormatter)")
                            .multilineTextAlignment(.center)
                    }
                    .padding(.all, 5)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    Divider()
                }
                Group {
                    HeaderSectionView("accentColor")
                    DatePicker("Select a date", selection: $selectedDate4)
                        .accentColor(.orange)
                    HStack(alignment: .firstTextBaseline) {
                        Text("Selected date:")
                        Text("\(selectedDate4, formatter: dateFormatter)")
                            .multilineTextAlignment(.center)
                    }
                    .padding(.all, 5)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    Divider()
                }
                Group {
                    HeaderSectionView("labelsHidden")
                    DatePicker("Select a date", selection: $selectedDate5)
                        .labelsHidden()
                    HStack(alignment: .firstTextBaseline) {
                        Text("Selected date:")
                        Text("\(selectedDate5, formatter: dateFormatter)")
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

struct DatePickerStyleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DatePickerStyleView()
        }
    }
}
