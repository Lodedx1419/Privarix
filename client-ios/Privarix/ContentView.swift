import SwiftUI

struct ContentView: View {
    @State private var isConnected = false

    var body: some View {
        VStack(spacing: 40) {
            Text("Privarix VPN")
                .font(.largeTitle)
                .bold()

            Image(systemName: isConnected ? "lock.shield.fill" : "lock.shield")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(isConnected ? .green : .gray)

            Toggle(isOn: $isConnected) {
                Text(isConnected ? "Connected" : "Disconnected")
                    .font(.title2)
                    .foregroundColor(isConnected ? .green : .red)
            }
            .toggleStyle(SwitchToggleStyle(tint: .blue))
            .onChange(of: isConnected) { newState in
                if newState {
                    // TODO: Connect VPN (WireGuard NE)
                    print("Connecting to VPN...")
                } else {
                    // TODO: Disconnect VPN
                    print("Disconnecting VPN...")
                }
            }

            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
