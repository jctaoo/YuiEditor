//
//  Semantic.swift
//  YuiEditor
//
//  Created by jctao on 2020/6/17.
//  Copyright © 2020 jctaoo. All rights reserved.
//
//  ==================[ Semantic ]==================
//  Example Code (Swift-like):
//
//  ```
//  class ClassName extends SuperClass {
//
//    var name: String
//
//  }
//  ```
//
//  Details:
//
//  [1]: - Class Definition Semantic: "Class ClassName extends SuperClass { ... }"
//       - Tokens:
//            1. Keyword Token: "Class"
//            2. Identifier Token: "ClassName"
//            3. Keyword Token "extends"
//            4. Identifier Token: "SuperClass"
//            5. Symbol Token: "{"
//            6. Slot Token: "yui_editor_slot_token"
//              - see [2]
//            7. Symbol Token: "}"
//
//  [2]: - Class Property Definition Semantic: "var name: String"
//       - Tokens:
//            1. Keyword Token: "var"
//            2. Identifier Token: "name"
//            3. Symbol Token: ":"
//            4. Identifier Token: "String"
//
//  Example Code (Markdown):
//
//  ```
//  # Title
//  ![[image title](https://test.com/title.png)](https://test.com/page/title)
//  ```
//
//  Details:
//
//  [1]: - Header Mark Semantic: "# Title"
//       - Tokens:
//            1. Symbol Token: "# "
//            2. Slot Token: "yui_editor_slot_token"
//              - Plan Text Semantic: "Title"
//              - Tokens:
//                  1. Identifier Token: "Title"
//            3. Symbol Token: "EOL"
//
//  [2]: - Image Mark Semantic: "![[image title](https://test.com/title.png)][https://test.com/page/title]"
//       - Tokens:
//            1. Symbol Token: "!["
//            2. Slot Token: "yui_editor_slot_token"
//              - Link Mark Semantic: "[image title](https://test.com/title.png)"
//              - Tokens:
//                  1. Symbol Token: "["
//                  2. Slot Token: "yui_editor_slot_token"
//                      - Plan Text Semantic: "image title"
//                      - Tokens:
//                          1. Identifier Token: "image title"
//                  3. Symbol Token: "]("
//                  4. Slot Token: "yui_editor_slot_token"
//                      - URL Mark Semantic
//                      - Tokens:
//                          1. Identifier Token: "https://test.com/title.png"
//                  5. Symbol Token: ")"
//            3. Symbol Token: "]("
//            4. Slot Token: "yui_editor_slot_token"
//            5. Symbol Token: ")"
//                - URL Mark Semantic
//                - Tokens:
//                    1. Identifier Token: "https://test.com/page/title"
//
//

import Foundation


protocol Semantic {
  
  // MARK: - rules
  
  static var type: String { get }
  
  static var tokens: [Token] { get }
  
  var semanticsInSlots: [Semantic] { get set }
  
}
