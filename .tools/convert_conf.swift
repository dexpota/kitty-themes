#!/usr/bin/swift
//  main.swift
//  nscolor
//
//  Created by Fabrizio FD. Destro on 28/12/18.
//  Copyright © 2018 Fabrizio FD. Destro. All rights reserved.
//

import Foundation
import AppKit

func hex(color: NSColor) -> String {
    return String(format: "#%02x%02x%02x", Int(color.redComponent * 0xFF), Int(color.greenComponent * 0xFF), Int(color.blueComponent * 0xFF))
}

func process_color(field: String, data: Data) {
    let color = NSKeyedUnarchiver.unarchiveObject(with: data) as! NSColor
    print("\(field) \(hex(color: color))");
}

func process(filename: String) {
    let plist = NSDictionary(contentsOfFile: filename)
    
    process_color(field: "background", data: plist!["BackgroundColor"] as! Data)
    process_color(field: "foreground", data: plist!["TextColor"] as! Data)
    process_color(field: "cursor", data: plist!["CursorColor"] as! Data)
    process_color(field: "selection_background", data: plist!["SelectionColor"] as! Data)
    process_color(field: "color0", data: plist!["ANSIBlackColor"] as! Data)
    process_color(field: "color8", data: plist!["ANSIBrightBlackColor"] as! Data)
    process_color(field: "color1", data: plist!["ANSIRedColor"] as! Data)
    process_color(field: "color9", data: plist!["ANSIBrightRedColor"] as! Data)
    process_color(field: "color2" , data: plist!["ANSIGreenColor"] as! Data)
    process_color(field: "color10", data: plist!["ANSIBrightGreenColor"] as! Data)
    process_color(field: "color3" , data: plist!["ANSIYellowColor"] as! Data)
    process_color(field: "color11", data: plist!["ANSIBrightYellowColor"] as! Data)
    process_color(field: "color4" , data: plist!["ANSIBlueColor"] as! Data)
    process_color(field: "color12", data: plist!["ANSIBrightBlueColor"] as! Data)
    process_color(field: "color5" , data: plist!["ANSIMagentaColor"] as! Data)
    process_color(field: "color13", data: plist!["ANSIBrightMagentaColor"] as! Data)
    process_color(field: "color6" , data: plist!["ANSICyanColor"] as! Data)
    process_color(field: "color14", data: plist!["ANSIBrightCyanColor"] as! Data)
    process_color(field: "color7" , data: plist!["ANSIWhiteColor"] as! Data)
    process_color(field: "color15", data: plist!["ANSIBrightWhiteColor"] as! Data)
}

if (CommandLine.argc == 2) {
    let filename = CommandLine.arguments[1]
    process(filename: filename)
} else {
    print("Missing plist's path.")
}
