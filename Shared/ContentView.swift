import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            VStack(spacing: 0) {
                Color.red
                Color.blue
            }
            
            Text("Berkay")
                .foregroundStyle(.secondary)
                // primary-secondary renkler özet:
                // primary baskın, secondary baskın değil. dark/light mode a göre değişir. zıttı görünür olur.
                
                //foregroundStyle -> yazının çizgilerinin şeffaflıgı gibi.
                // secondary olursa etki eder. text in rengi çok baskın değildir.
            
                .padding(50)
                .background(.ultraThinMaterial)
                // metalin rengi dark/light moda göre kendi değişiyor
                // darksa -> açık renk, değilse koyu renk
            
        }.ignoresSafeArea()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
