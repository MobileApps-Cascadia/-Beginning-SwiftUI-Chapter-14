import SwiftUI


struct ExercisesView: View {
    @State var username = ""
    @State var name = ""
    @State var modeOn = true
    @State var mode = "Easy"
    var body: some View {
        VStack {
            Text("Exercises")
                .font(.largeTitle)
            VStack {
                Form {
                    Text("Welcome to a fun rp game")
                    TextField("Username", text: $username)
                    TextField("Actual name", text: $name)
                    Toggle(modeOn ? "Mode: Easy" : "Mode: Hard", isOn: $modeOn)
                }
            }
            if self.modeOn{
                Text("Welcome \(name), your username is \(username) and you have chosen Easy Mode")
                    .padding()
            } else{
                Text("Welcome \(name), your username is \(username) and you have chosen Hard Mode")
                    .padding()
            }
            
            
        }
    }
}

struct ExercisesView_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesView()
    }
}
