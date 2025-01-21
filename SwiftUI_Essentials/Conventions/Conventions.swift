// practice from @BigMtnStudio
import SwiftUI

struct Conventions: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Title",
                       subtitle: "SubtitleText",
                       desc: "Banner text.")
            
        }
        .font(.title)
    }
}

struct Conventions_Previews: PreviewProvider {
    static var previews: some View {
        Conventions()
    }
}
