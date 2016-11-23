//
//  AppDelegate.swift
//  OriginX
//
//  Created by Victor Palade on 18/11/2016.
//  Copyright © 2016 Victor Palade. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBAction func prefWindow(_ sender: Any) {
        
    }
    @IBOutlet weak var statusMenu: NSMenu!
    let statusItem = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)
    
    @IBAction func quitClicked(_ sender: NSMenuItem) {
        NSApplication.shared().terminate(self)
    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        statusItem.title = "OriginX"
        statusItem.menu = statusMenu
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // This will have to handle the termination of the application
    }
}

// originServer is the structure that holds origin server defaults.
struct originServer {
    var logLevel = 0
    var env = ""
    var image = ""
    var createMachine = false
    var machineName = ""
}


