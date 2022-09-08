
import SwiftUI

struct Gradients: View {
    var body: some View {
        
        ZStack {
        AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
            .ignoresSafeArea()
        Text("Berkay")
                .foregroundStyle(.secondary)
        }
    }
}

struct Gradients_Previews: PreviewProvider {
    static var previews: some View {
        Gradients()
    }
}
