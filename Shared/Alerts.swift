
import SwiftUI

struct Alerts: View {
    
    @State private var showAlert = false
    @State private var showAlert2 = false
    
    var body: some View {
        
        VStack(spacing: 50) {
        // Düz
        Button("Show The Alert") {
            showAlert = true
        }.alert("Important Message", isPresented: $showAlert) {
            Button("Ok") {}
            // alertlerin içindeki butonlar alerti otomatik kapatır ve default = false olur
            // içine ekstra buton yazabilmemiz, kapatma harici ekstra özellik ekleyebilmek için
        }
        //Özel yapılı butonlarla
        Button("Show The Alert2") {
            showAlert2 = true
        }.alert("Important Message", isPresented: $showAlert2) {
            Button("Delete", role:.destructive) {}
            Button("Cancel", role:.cancel) {}
            
        } message: {
            Text("Please read!")
        }
        }
    }
}

struct Alerts_Previews: PreviewProvider {
    static var previews: some View {
        Alerts()
    }
}
