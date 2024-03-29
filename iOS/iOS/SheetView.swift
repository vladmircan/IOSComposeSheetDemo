import SwiftUI
import shared

struct SheetView: View {

  var body: some View {
    ZStack(alignment: .bottomLeading) {
      ComposeSheetView()
    }
  }
}

struct ComposeSheetView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        return SheetViewControllerKt.SheetViewController()
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
    }
}
