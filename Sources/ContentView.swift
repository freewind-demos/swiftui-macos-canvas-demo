import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Canvas { context, size in
                let rect = CGRect(x: 20, y: 20, width: size.width - 40, height: size.height - 40)
                context.fill(Path(roundedRect: rect, cornerRadius: 24), with: .linearGradient(
                    Gradient(colors: [.blue, .mint]),
                    startPoint: CGPoint(x: 0, y: 0),
                    endPoint: CGPoint(x: size.width, y: size.height)
                ))

                let circle = CGRect(x: size.width / 2 - 40, y: size.height / 2 - 40, width: 80, height: 80)
                context.stroke(Path(ellipseIn: circle), with: .color(.white), lineWidth: 6)
            }
            .frame(height: 260)

            Text("Canvas 里直接画 path。")
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}
