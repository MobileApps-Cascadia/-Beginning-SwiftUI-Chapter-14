import SwiftUI


struct SimpleFormView: View {
    @State var messageOne = ""
    @State var messageTwo = ""
    var body: some View {
        VStack {
            Form {
                Text("This is the first Form")
                TextField("Type here", text: $messageOne)
            }
            Form {
                Text("This is the second Form")
                TextField("Type here", text: $messageTwo)
            }
            Text("Form #1 = \(messageOne)")
            Text("Form #2 = \(messageTwo)")
        }
    }
}
struct SimpleFormView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleFormView()
    }
}
