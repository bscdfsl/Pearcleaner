//
//  WindowSettings.swift
//  Pearcleaner
//
//  Created by Alin Lupascu on 12/26/23.
//

import SwiftUI

class WindowSettings {
    private let windowWidthKey = "windowWidthKey"
    private let windowHeightKey = "windowHeightKey"
    private let windowWidthKeyMini = "windowWidthKeyMini"
    private let windowHeightKeyMini = "windowHeightKeyMini"
    private let windowXKey = "windowXKey"
    private let windowYKey = "windowYKey"
    @AppStorage("settings.general.mini") private var mini: Bool = false
    var windows: [NSWindow] = []

    func saveWindowSettings(frame: NSRect) {

        UserDefaults.standard.set(Float(frame.size.width), forKey: mini ? windowWidthKeyMini : windowWidthKey)
        UserDefaults.standard.set(Float(frame.size.height), forKey: mini ? windowHeightKeyMini : windowHeightKey)
        UserDefaults.standard.set(Float(frame.origin.x), forKey: windowXKey)
        UserDefaults.standard.set(Float(frame.origin.y), forKey: windowYKey)
    }

    func loadWindowSettings() -> NSRect {

        // Retrieve window size
        let width = CGFloat(UserDefaults.standard.float(forKey: mini ? windowWidthKeyMini : windowWidthKey))
        let height = CGFloat(UserDefaults.standard.float(forKey: mini ? windowHeightKeyMini : windowHeightKey))

        // Set default middle position if not set in UserDefaults
        var x = CGFloat(UserDefaults.standard.float(forKey: windowXKey))
        var y = CGFloat(UserDefaults.standard.float(forKey: windowYKey))

        if UserDefaults.standard.object(forKey: windowXKey) == nil || UserDefaults.standard.object(forKey: windowYKey) == nil {
            // Set window to center of the screen if not set
            let screenSize = NSScreen.main?.frame.size ?? NSSize(width: 800, height: 600) // Fallback screen size
            x = (screenSize.width - width) / 2
            y = (screenSize.height - height) / 2
        }

        return NSRect(x: x, y: y, width: width, height: height)
    }

    func newWindow<V: View>(withView view: @escaping () -> V) {
        findAndHideWindows(named: ["Pearcleaner"])
        let contentView = view
        let frame = self.loadWindowSettings()
        let newWindow = NSWindow(
            contentRect: frame,
            styleMask: [.titled, .closable, .miniaturizable, .resizable, .fullSizeContentView],
            backing: .buffered, defer: false)
        newWindow.titlebarAppearsTransparent = true
        newWindow.isMovableByWindowBackground = true
        newWindow.center()
        newWindow.title = "Pearcleaner"
        newWindow.titleVisibility = .hidden
        newWindow.setFrameAutosaveName("Pearcleaner")
        newWindow.contentView = NSHostingView(rootView: contentView())
        self.windows.append(newWindow)
        newWindow.makeKeyAndOrderFront(nil)
    }
}
