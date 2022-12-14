import SwiftUI
import AVFoundation

struct ContentView: View {
    @State private var isStart = false
    var body: some View {
        VStack {
            Image("waiting")
            Button(action:{
                isStart = true
            }, label:{
                Text("Start PX1")
                    .padding()
            })
        }
        .fullScreenCover(isPresented:$isStart){
            CameraViewController()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
