// Modified Exercise.Swift
import SwiftUI

struct ExercisesView: View {
    @State var messageOne = ""
    @State var username = ""
    @State var realName = ""
    @State var isEasyMode = false
    @State var selectedCharacter = "Warrior"
    
    var characterOptions = ["Warrior", "Wizard", "Orc", "Gelatinous Cube"]
    
    var summary: String {
          """
          Username: \(username)
          Real Name: \(realName)
          Easy Mode: \(isEasyMode ? "Enabled" : "Disabled")
           Character: \(selectedCharacter)
          """
      }
    
    var body: some View {
        
        VStack {
            Text("Exercises")
                .font(.largeTitle)
            Text("Your form goes here")
            Text("More text after the form")
            
            Form {
                Section(header: Text("Character Type")) {
              
                    Picker("Select Character Type", selection: $selectedCharacter) {
                        ForEach(characterOptions, id: \.self) { character in
                            Text(character)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("Player Information")) {
                    TextField("Username", text: $username)
                    TextField("Real Name", text: $realName)
                    Toggle("Easy Mode", isOn: $isEasyMode)
                }
            }
            
            GroupBox(label: Text("Character Options")) {
                VStack(alignment: .leading) {
                    ForEach(characterOptions, id: \.self) { character in
                        Button(action: {
                            selectedCharacter = character
                        }) {
                            Text(character)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                    }
                }
            }
            .padding()
            
            Text("More text after the form")
            
            Divider()
            
            Text("Summary:")
                .font(.headline)
            
            Text(summary)
                .multilineTextAlignment(.center)
            
        }
        .padding()
    }
}


struct ExercisesView_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesView()
    }
}
