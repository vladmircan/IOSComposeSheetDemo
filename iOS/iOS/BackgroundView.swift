import SwiftUI
import shared

struct BackgroundView: View {
  @State var sheetPresented = false

  var body: some View {
    ZStack(alignment: .center) {
        ComposeBackgroundView().ignoresSafeArea()
        
      Button("Press me") {
        sheetPresented.toggle()
      }
    }
    .sheet(isPresented: $sheetPresented) {
        SheetView()
    }
  }
}

struct ComposeBackgroundView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        return BackgroundViewControllerKt.BackgroundViewController()
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
    }
}
