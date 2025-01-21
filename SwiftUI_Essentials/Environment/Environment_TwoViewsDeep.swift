// practice from @BigMtnStudio

import SwiftUI

struct Environment_TwoViewsDeep: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Go To View 2") {
                DeveloperIntroView()
            }
            .navigationTitle("Developer")
        }
        .environment(DeveloperOO())
        .font(.title)
    }
}

// This view skips the observable object because it is not needed.
struct DeveloperIntroView: View {
    var body: some View {
        NavigationLink("Go To View 3") {
            DeveloperView()
        }
        .navigationTitle("View 2")
    }
}

#Preview {
    Environment_TwoViewsDeep()
}
