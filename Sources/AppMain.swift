import SwiftUI

@main
struct SwiftUICanvasDemoApp: App {
    var body: some Scene {
        Window("Canvas 演示", id: "main") {
            ContentView()
        }
        .defaultSize(width: 560, height: 420)
    }
}
