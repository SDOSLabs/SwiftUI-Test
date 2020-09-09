//
//  HomeView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 03/08/2020.
//

import SwiftUI

struct HomeView: View {
//    private let screens : [String: AnyView] = {
//        ["Login": AnyView(LoginOptionsView()),
//        "View": AnyView(ViewStyleView()),
//        "Group": AnyView(GroupOptionsView()),
//        "Text": AnyView(TextOptionsView()),
//        "Button": AnyView(ButtonOptionsView()),
//        "TextField": AnyView(TextFieldOptionsView()),
//        "Image": AnyView(ImageOptionsView()),
//        "Slider": AnyView(SliderOptionsView()),
//        "Toogle": AnyView(ToggleOptionsView()),
//        "Divider": AnyView(DividerView()),
//        "EmptyView": AnyView(EmptyViewView()),
//        "Spacer": AnyView(SpacerView()),
//        "NavigationView": AnyView(NavigationViewOptionsView()),
//        "TabView": AnyView(TabViewOptionsView()),
//        "ScrollView": AnyView(ScrollViewOptionsView()),
//        "VStack": AnyView(VStackView()),
//        "HStack": AnyView(HStackView()),
//        "GeometryReader": AnyView(GeometryReaderOptionsView()),
//        "List": AnyView(ListOptionsView()),
//        "Picker": AnyView(PickerOptionsView()),
//        "DatePicker": AnyView(DatePickerOptionsView()),
//        "ColorPicker": AnyView(ColorPickerView()),
//        "Shape": AnyView(ShapeOptionsView()),
//        "Form": AnyView(FormView())]
//    }()
//    
//    var body: some View {
//        NavigationView {
//            List {
//                ForEach(screens.map { $0.0 }, id: \.self) {
//                    if let view = screens[$0]  {
//                        NavigationLink($0, destination: view)
//                    }
//                }
//            }
//            .navigationBarTitle("Home", displayMode: .inline)
//            .background(NavigationConfigurator(backgroundColor: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), titleColor: .white))
//        }
//        
//    }
    
    var body: some View {
        NavigationView {
            List {
                Group {
                    NavigationLink("Login", destination: LoginOptionsView())
                    NavigationLink("View", destination: ViewStyleView())
                    NavigationLink("Group", destination: GroupOptionsView())
                    NavigationLink("Text", destination: TextOptionsView())
                    NavigationLink("Button", destination: ButtonOptionsView())
                    NavigationLink("TextField", destination: TextFieldOptionsView())
                    NavigationLink("Image", destination: ImageOptionsView())
                    NavigationLink("Slider", destination: SliderOptionsView())
                    NavigationLink("Toogle", destination: ToggleOptionsView())
                    NavigationLink("Divider", destination: DividerView())
                }
                Group {
                    NavigationLink("EmptyView", destination: EmptyViewView())
                    NavigationLink("Spacer", destination: SpacerView())
                    NavigationLink("NavigationView", destination: NavigationViewOptionsView())
                    NavigationLink("TabView", destination: TabViewOptionsView())
                    NavigationLink("ScrollView", destination: ScrollViewOptionsView())
                    NavigationLink("VStack", destination: VStackView())
                    NavigationLink("HStack", destination: HStackView())
                    NavigationLink("ZStack", destination: ZStackView())
                    NavigationLink("GeometryReader", destination: GeometryReaderOptionsView())
                    NavigationLink("List", destination: ListOptionsView())
                }
                Group {
                    NavigationLink("Picker", destination: PickerOptionsView())
                    NavigationLink("DatePicker", destination: DatePickerOptionsView())
                    NavigationLink("ColorPicker", destination: ColorPickerView())
                    NavigationLink("Shape", destination: ShapeOptionsView())
                    NavigationLink("Form", destination: FormView())
                    NavigationLink("Alert", destination: AlertView())
                    NavigationLink("ActionSheet", destination: ActionSheetView())
                    NavigationLink("Popover", destination: PopoverView())
                }
            }
            .navigationBarTitle("Home", displayMode: .inline)
            .background(NavigationConfigurator(backgroundColor: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), titleColor: .white))
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
