import SwiftUI

struct ContentView: View {
    var body: some View {
        Text(getFutureDate(), style: .timer).multilineTextAlignment(.center)
        Image(systemName: "timer")
    }
    
    private func getFutureDate() -> Date {
        let components = DateComponents(second: 60)
        return Calendar.current.date(
            byAdding: components, to: Date()
        )!
    }
}

