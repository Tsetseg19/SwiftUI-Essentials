// practice from @BigMtnStudio
import SwiftUI

struct StateWithToggle: View {
    @State private var darkerBackground = false
    
    var body: some View {
        ZStack {
            Color(darkerBackground ? .gray : .white)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                HeaderView("State", subtitle: "Two-way Binding", desc: "Many controls require a two-way binding to work.", back: .blue, textColor: .white)
                
                Spacer()
                
                Toggle(isOn: $darkerBackground) {
                    Text("Darker Background: \(darkerBackground ? "ON" : "OFF")")
                }
                .padding(.horizontal)
                
                Spacer()
                DescView("The entire view is invalidated and redrawn when a state variable changes.", back: .blue, textColor: .white)
            }
            .font(.title)
        }
    }
}

struct StateWithToggle_Previews: PreviewProvider {
    static var previews: some View {
        StateWithToggle()
    }
}
