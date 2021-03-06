//
//  AppDelegate.swift
//  HeliPort
//
//  Created by 梁怀宇 on 2020/3/20.
//  Copyright © 2020 lhy. All rights reserved.
//

/*
 * This program and the accompanying materials are licensed and made available
 * under the terms and conditions of the The 3-Clause BSD License
 * which accompanies this distribution. The full text of the license may be found at
 * https://opensource.org/licenses/BSD-3-Clause
 */

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate, NSMenuDelegate {

    var password: String = ""

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application

        let statusBar = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        statusBar.button?.image = NSImage.init(named: "WiFiStateDisconnected")
        statusBar.button?.image?.isTemplate = true
        statusBar.menu = StatusMenu.init(title: "")

        StatusBarIcon.statusBar = statusBar
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

}
