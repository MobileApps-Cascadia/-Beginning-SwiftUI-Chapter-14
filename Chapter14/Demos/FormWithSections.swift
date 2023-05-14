import SwiftUI
@available(iOS 15.0, *)
struct FormWithSectionsView: View {
    var body: some View {
        Form {
            Section {
                Text("This Section has no header")
            }
            Section("Just a Header") {
                Text("This Section uses a simple header")
            }
            Section {
                Text("This Section uses a simple footer")
            } footer: {
                Text("Just a Footer")
            }
            Section {
                Text("This Section uses both a header and footer")
            } header: {
                Text("The header")
            } footer: {
                Text("The footer")
            }
        }
    }
}
@available(iOS 15.0, *)
struct FormWithSectionsView_Previews: PreviewProvider {
    static var previews: some View {
        FormWithSectionsView()
    }
}
