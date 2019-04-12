//: [Previous](@previous)

import Foundation
import Functional

struct Message {
    let text: String
    let attachments: [Attachment]
}

struct Attachment {
    let path: String
}

let attachment_1 = Attachment(path: "path://1")
let attachment_2 = Attachment(path: "path://2")
let attachment_3 = Attachment(path: "path://3")

let message_1 = Message(text: "Hi", attachments: [attachment_1])
let message_2 = Message(text: "Hello", attachments: [attachment_2, attachment_3])

let messages = [message_1, message_2]

let numberOfAttachments = messages.reduce(0) { $0 + $1.attachments.count }

let funcNumberOfAttachments = messages.reduce(0, combining(^\.attachments.count, by: +))
//: [Next](@next)
