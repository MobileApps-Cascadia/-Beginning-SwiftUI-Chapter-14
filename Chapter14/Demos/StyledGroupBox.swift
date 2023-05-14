//
//  StyledGroupBox.swift
//  Chapter14
//
//  Created by Mike Panitz on 5/14/23.
//

import SwiftUI

struct StyledGroupBoxesView: View {
    
    var body: some View {
        ScrollView {
            Text("PlainGroupBoxStyle:")
                .font(.title)
            LazyVGrid(columns: [.init(), .init()]) {
                ForEach(0..<4) { _ in
                    GroupBox(
                        label: Label("Heart Rate", systemImage: "heart.fill")
                            .foregroundColor(.red)
                    ) {
                        Text("Your heart rate is 90 BPM.")
                    }
                    .groupBoxStyle(PlainGroupBoxStyle())
                }
            }
            Divider()
            Text("CardGroupBoxStyle:")
                .font(.title)
            LazyVGrid(columns: [.init(), .init()]) {
                ForEach(0..<4) { _ in
                    GroupBox(
                        label: Label("Heart Rate", systemImage: "heart.fill")
                            .foregroundColor(.red)
                    ) {
                        Text("Your heart rate is 90 BPM.")
                    }
                    .groupBoxStyle(CardGroupBoxStyle())
                }
            }
            Divider()
            Text("FunkyBoxStyle:")
                .font(.title)
            LazyVGrid(columns: [.init(), .init()]) {
                ForEach(0..<4) { _ in
                    GroupBox(
                        label: Label("Heart Rate", systemImage: "heart.fill")
                            .foregroundColor(.red)
                    ) {
                        Text("Your heart rate is 90 BPM.")
                    }
                    .groupBoxStyle(FunkyBoxStyle())
                }
            }
        }.padding()
    }
}

struct PlainGroupBoxStyle: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading) {
            configuration.label
            configuration.content
        }
    }
}

struct CardGroupBoxStyle: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading) {
            configuration.label
            configuration.content
        }
        .padding()
        .background(Color(.systemGroupedBackground))
        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
    }
}

struct FunkyBoxStyle: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading) {
            configuration.label
            configuration.content
        }
        .padding()
        .background(Color(.yellow))
        .clipShape(Ellipse())
    }
}

struct StyledGroupBoxesView_Previews: PreviewProvider {
    static var previews: some View {
        StyledGroupBoxesView()
    }
}
