import SwiftUI
@available(iOS 15.0, *)
struct DisabledFormElementsView: View {
    @State var flag = false
    var body: some View {
        Form {
            Section {
                Toggle(isOn: $flag) {
                    Text("Are you married?")
                }
                Button(flag ? "Disabled" : "Click Me") {
                }.disabled(flag)
            } header: {
                Text("Header")
            } footer: {
                Text("Footer")
            }
        }.padding()
    }
}
@available(iOS 15.0, *)
struct DisabledFormElementsView_Previews: PreviewProvider {
    static var previews: some View {
        DisabledFormElementsView()
    }
}
