// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: hello.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

//
// ProtoBLE - Protobuf RPC over Bluetooth Low Energy
// Copyright (c) 2018. Geoffrey Matrangola, electrazoom.com
//
//     This program is free software: you can redistribute it and/or modify
//     it under the terms of the GNU General Public License as published by
//     the Free Software Foundation, version 3 of the License.
//
//     This program is distributed in the hope that it will be useful,
//     but WITHOUT ANY WARRANTY; without even the implied warranty of
//     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//     GNU General Public License for more details.
//
//     You should have received a copy of the GNU General Public License
//     along with this program.  If not, see <https://www.gnu.org/licenses/>
//
//     This program is also available under a commercial license. If you wish
//     to redistribute this library and derivative work for commercial purposes
//     please see ProtoBLE.com to obtain a proprietary license that will fit
//     your needs.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct Introduction {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var name: String = String()

  var salutation: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Greeting {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var timesttamp: Int64 = 0

  var greeting: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct TimeRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var format: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct TimeResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var formattedTime: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension Introduction: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "Introduction"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "salutation"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.name)
      case 2: try decoder.decodeSingularStringField(value: &self.salutation)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.salutation.isEmpty {
      try visitor.visitSingularStringField(value: self.salutation, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: Introduction) -> Bool {
    if self.name != other.name {return false}
    if self.salutation != other.salutation {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Greeting: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "Greeting"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "timesttamp"),
    2: .same(proto: "greeting"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.timesttamp)
      case 2: try decoder.decodeSingularStringField(value: &self.greeting)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.timesttamp != 0 {
      try visitor.visitSingularInt64Field(value: self.timesttamp, fieldNumber: 1)
    }
    if !self.greeting.isEmpty {
      try visitor.visitSingularStringField(value: self.greeting, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: Greeting) -> Bool {
    if self.timesttamp != other.timesttamp {return false}
    if self.greeting != other.greeting {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension TimeRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "TimeRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "format"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.format)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.format.isEmpty {
      try visitor.visitSingularStringField(value: self.format, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: TimeRequest) -> Bool {
    if self.format != other.format {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension TimeResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "TimeResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "formattedTime"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.formattedTime)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.formattedTime.isEmpty {
      try visitor.visitSingularStringField(value: self.formattedTime, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: TimeResponse) -> Bool {
    if self.formattedTime != other.formattedTime {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}