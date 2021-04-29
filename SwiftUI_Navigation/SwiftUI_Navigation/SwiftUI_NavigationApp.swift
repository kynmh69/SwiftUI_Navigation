//
//  SwiftUI_NavigationApp.swift
//  SwiftUI_Navigation
//
//  Created by Hiroki Kayanuma on 2021/04/29.
//

import SwiftUI

@main
struct SwiftUI_NavigationApp: App {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.red]
    }
    var body: some Scene {
        WindowGroup {
            RedOneView()
        }
    }
}
