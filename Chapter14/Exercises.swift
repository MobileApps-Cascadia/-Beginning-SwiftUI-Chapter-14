import SwiftUI

struct ExercisesView: View {
    @State private var username = ""
    @State private var realName = ""
    @State private var easyMode = false
    @State private var selectedCharacter = ""

    var body: some View {
        Form {
            Section(header: Text("Player Information")) {
                TextField("Username", text: $username)
                TextField("Real Name", text: $realName)
            }

            Section(header: Text("Game Settings")) {
                Toggle("Easy Mode", isOn: $easyMode)
            }

            Section(header: Text("Character Selection")) {
                GroupBox {
                    VStack {
                        characterSelectionButton(title: "Warrior")
                        characterSelectionButton(title: "Wizard")
                        characterSelectionButton(title: "Orc")
                        characterSelectionButton(title: "Gelatinous Cube")
                    }
                }
                .groupBoxStyle(CustomGroupBoxStyle())
            }

            Section(header: Text("Summary")) {
                Text("Username: \(username)")
                Text("Real Name: \(realName)")
                Text("Easy Mode: \(easyMode ? "Enabled" : "Disabled")")
                Text("Selected Character: \(selectedCharacter)")
            }
        }
        .padding()
    }

    func characterSelectionButton(title: String) -> some View {
        Button(action: {
            selectedCharacter = title
        }) {
            Text(title)
                .foregroundColor(selectedCharacter == title ? .blue : .primary)
        }
    }
}

struct CustomGroupBoxStyle: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        GroupBox(label: configuration.label) {
            configuration.content
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
        }
    }
}


    struct ExercisesView_Previews: PreviewProvider {
        static var previews: some View {
            ExercisesView()
        }
    }
