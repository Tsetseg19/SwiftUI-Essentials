// practice from @BigMtnStudio

import SwiftUI

struct Environment_Global: View {
    @Environment(UserModel.self) var user
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Username: \(user.username)")
            LabeledContent("Online") {
                Image(systemName: "circle.fill")
                    .foregroundStyle(user.showAsOnline ? .green : .red)
            }
        }
        .padding()
        .font(.title)
    }
}

#Preview {
    Environment_Global()
        .environment(UserModel())
}
