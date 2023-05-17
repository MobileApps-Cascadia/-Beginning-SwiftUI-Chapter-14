import SwiftUI


struct ExercisesView: View {
    @State var messageOne = " "
    @State var messageTwo = " "
    @State var messageThree = " "
    @State var messageFour = " "
    @State var flag = false
    var body: some View {
        VStack {
            Text("Exercises")
                .font(.largeTitle)
            Form {
                Section("What Character role would you like?") {
                    
                    GroupBox{
                        HStack{
                            characters(title: "Tank")
                            Spacer()
                            characters(title: "Assasin")
                            Spacer()
                            characters(title: "Dps")
                            Spacer()
                            characters(title: "Support")
                        }
                    }
                    .groupBoxStyle(GroupBoxingStyle())
                }
                Section("What is your in game name?") {
                    TextField("here", text: $messageTwo)
                }
                Section("What is your real name?") {
                    TextField("here", text: $messageThree)
                }
                Section {
                    Toggle(isOn: $flag) {
                        Text("Would you like to play the easy version?")
                    }
                }
                Section("Summary"){
                    Text("Your character is a \(messageOne) named \(messageTwo) controled by \(messageThree) playing on \(flag ? "Nightmare" : "Easy")")
                }
 
            }
        }
        .padding()
    }
    func characters(title:String) -> some View{
        Button(action: {
            messageOne = title
        }) {
            Text(title)
                .foregroundColor(messageOne == title ? .pink : .primary)
        }
    }
}

struct GroupBoxingStyle: GroupBoxStyle{
    func makeBody(configuration: Configuration) -> some View {
        GroupBox(label: configuration.label){
            configuration.content
                .padding()
                .background(Color.black.opacity(0.5))
                .cornerRadius(24)
        }
    }
}
struct ExercisesView_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesView()
    }
}
