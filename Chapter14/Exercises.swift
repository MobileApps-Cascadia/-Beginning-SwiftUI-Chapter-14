import SwiftUI


struct ExercisesView: View {
    @State var username = ""
    @State var name = ""
    @State var modeOn = true
    @State var mode = "Easy"
    @State var character = ""
    var body: some View {
        VStack {
            Text("Exercises")
                .font(.largeTitle)
            VStack {
                Form {
                    Text("Welcome to a fun rp game")
                    TextField("Username", text: $username)
                    TextField("Actual name", text: $name)
                    Toggle(modeOn ? "Mode: Easy" : "Mode: Hard", isOn: $modeOn).onTapGesture {
                        if(modeOn){
                            self.mode = "Hard"
                        }else{
                            self.mode = "Easy"
                        }
                    }
                    LazyVGrid(columns: [.init(), .init()]) {
                        GroupBox(
                                label: Label("Warrior", systemImage: "")
                            ) {}
                            .onTapGesture {
                                self.character = "Warrior"
                            }
                            .groupBoxStyle(CardGroupBoxStyle())
                        GroupBox(
                                label: Label("Mage", systemImage: "")
                            ) {}
                            .onTapGesture {
                                self.character = "Mage"
                            }
                            .groupBoxStyle(CardGroupBoxStyle())
                        GroupBox(
                                label: Label("Paladin", systemImage: "")
                            ) {}
                            .onTapGesture {
                                self.character = "Paladin"
                            }
                            .groupBoxStyle(CardGroupBoxStyle())
                        GroupBox(
                                label: Label("Fighter", systemImage: "")
                            ) {}
                            .onTapGesture {
                                self.character = "Fighter"
                            }
                            .groupBoxStyle(CardGroupBoxStyle())
                    }
                }
            }
            Text("Welcome \(name), your username is \(username) and you have chosen \(mode) Mode")
                .padding()
            Text("Your character is a \(character)")
            
        }
    }
}

struct ExercisesView_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesView()
    }
}
