// practice

import SwiftUI

@Observable
class UserModel {
    var username = "Ellen"
    var showAsOnline = true
}

@main
struct SwiftUI_EssentialsApp: App {
    var body: some Scene {
        WindowGroup {
            CardView(title: "Preview Title") {
                Text("Here is some content")
                Text("Here is some MORE content")
            }
        }
    }
}
