// practice from @BigMtnStudio

import SwiftUI

struct Observable_TwoWay: View {
    @State private var personClass = PersonClass()
    
    var body: some View {
        VStack {
            GroupBox("Name") {
                TextField("name", text: $personClass.name)
                    .textFieldStyle(.roundedBorder)
                
                Text(personClass.name)
            }
        }
        .font(.title)
    }
}

#Preview {
    Observable_TwoWay()
}
