# LocalChat

An iOS project intended for on-device language-model chat. The **public source is an incomplete starter project**, rather than the full chat implementation described by earlier documentation.

## Current state

- `LocalChat/ContentView.swift` contains the SwiftUI/Core Data sample list interface.
- `LocalChat/Persistence.swift` provides the sample persistence container.
- `LocalChat/Views/LocalLLMError+Equatable.swift` references `LocalLLMError`, whose definition is absent from this branch. A clean build may fail on this missing type.
- No inference service, model weights, streaming chat view, or Core ML fallback is included in the public tree.

## Open the project

The checked-in deployment target is **iOS 26.0**. Use Xcode with a compatible iOS SDK:

```sh
git clone https://github.com/Neel-Sh/Local_LLM_iOS.git
cd Local_LLM_iOS
open LocalChat.xcodeproj
```

Select your own signing team for device builds. The `LocalChatTests` and `LocalChatUITests` folders contain starter tests; they do not verify model inference.

## Next steps

Complete the missing model service and error types, wire a chat interface to that service, and document hardware requirements only after the implementation and device behavior have been verified.

See [Contributing](CONTRIBUTING.md). The original README identifies this project as MIT-licensed, but a standalone license text is not currently included.
