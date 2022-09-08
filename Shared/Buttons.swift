
import SwiftUI

struct Buttons: View {
    var body: some View {
        
        VStack {
            // buttonStyle:
            // bordered -> butonun backgroundu olması -> default: şeffaf gri
            // borderedProminent -> butonun şeffaf olmayan backgroundu olması -> default: mavi
            // borderedProminent + destructive role -> arkası kırmızı ve (diğer dest. özellikler)
            // borderedProminent + istediğimiz renk -> .tint(.color)
            
            
            Button("Button 1") { }
                .buttonStyle(.bordered)
            Button("Button 2", role: .destructive) { }
                .buttonStyle(.bordered)
            Button("Button 3") { }
                .buttonStyle(.borderedProminent)
            Button("Button 4", role: .destructive) { }
                .buttonStyle(.borderedProminent)
            Button("Button 3") { }
                .buttonStyle(.borderedProminent)
                .tint(.mint)
            Image("pencil")
            Image(decorative: "pencil") // yukardakinin screenreadersız hali
            
            Button {
                print("Edit butonuna tıklandı")
            } label: {
                HStack(spacing: 0) {
                    
                    Image(systemName: "pencil")
                    Text("Edit")
                }
                
            }
            Button {
                print("Edit button was tapped")
            } label: {
                Label("Edit", systemImage: "pencil")
                // Gösterim olarak aynı + label kullanıldığında ikon mu, text mi, her ikisi mi
                // gösterilecek kararı otomatikman verilir!
            }

        }
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
