import SwiftUI

struct Title: ViewModifier { //custom modifier title
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}



struct ContentView: View {
    var body: some View {
        Text("hmt1")
            .modifier(Title()) //callling custom function title

    }
}

#Preview {
    ContentView()
}

