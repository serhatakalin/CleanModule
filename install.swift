//
//  install.swift
//  Clean Architecture Module.
//
//  Created by Serhat Akalin on 27/05/2019.
//  Copyright © 2019 Serhat Akalin. All rights reserved.
//

import Foundation

let templateName = "CleanModule.xctemplate"
let destinationRelativePath = "/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project Templates/iOS/Application"

func moveTemplate() {
    let fileManager = FileManager.default
    let destinationPath = bash(command: "xcode-select", arguments: ["--print-path"]).appending(destinationRelativePath)
    do {
        if !fileManager.fileExists(atPath: "\(destinationPath)/\(templateName)") {
            try fileManager.copyItem(atPath: templateName, toPath: "\(destinationPath)/\(templateName)")
            print("CleanModule template installed successfully.")
        } else {
            try fileManager.replaceItemAt(URL(fileURLWithPath: "\(destinationPath)/\(templateName)"), withItemAt: URL(fileURLWithPath: templateName))
            print("Template already exists and has been replaced.")
        }
    } catch let error as NSError {
        print("Installation failed: \(error.localizedDescription)")
        print("If the error is permission-related, ensure Xcode is the primary developer tool: sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer")
        exit(1)
    }
}

func shell(executablePath: String, arguments: [String]) -> String {
    let process = Process()
    process.executableURL = URL(fileURLWithPath: executablePath)
    process.arguments = arguments

    let pipe = Pipe()
    process.standardOutput = pipe

    do {
        try process.run()
    } catch {
        print("Installation failed: could not run \(executablePath). \(error.localizedDescription)")
        exit(1)
    }

    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    guard let output = String(data: data, encoding: .utf8) else {
        print("Installation failed: could not decode command output.")
        exit(1)
    }
    if output.count > 0 {
        let lastIndex = output.index(before: output.endIndex)
        return String(output[output.startIndex ..< lastIndex])
    }
    return output
}

func bash(command: String, arguments: [String]) -> String {
    let whichPathForCommand = shell(executablePath: "/bin/bash", arguments: ["-l", "-c", "which \(command)"])
    return shell(executablePath: whichPathForCommand, arguments: arguments)
}

moveTemplate()
