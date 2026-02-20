# LocalChat

A privacy-first iOS chat app powered entirely by on-device intelligence. All conversations stay on your iPhone — nothing is sent to the cloud.

## Features

- **On-Device LLM** — Uses Apple Intelligence (Foundation Models) as the primary backend with Core ML fallback
- **Liquid Glass UI** — Built with iOS 26's native Liquid Glass design system
- **Streaming Responses** — Real-time token-by-token output with typing indicators
- **Copy & Retry** — Copy any assistant response or regenerate it with one tap
- **Adaptive Theming** — Supports both light and dark mode automatically
- **Keyboard Handling** — Tap to dismiss, interactive scroll dismissal
- **Zero Data Collection** — No analytics, no network calls, no tracking

## Requirements

- iOS 26.0+
- Xcode 26+
- iPhone with Apple Intelligence support (A17 Pro or later)

## Architecture

```
LocalChat/
├── LocalChatApp.swift          # App entry point
├── ContentView.swift           # Main layout & navigation
├── Models/
│   └── ChatMessage.swift       # Message data model
├── ViewModels/
│   └── ChatViewModel.swift     # State management & business logic
├── Services/
│   └── LocalLLMService.swift   # LLM inference (Apple Intelligence + Core ML)
└── Views/
    ├── ChatBubbleView.swift    # Message rows (assistant & user)
    ├── ChatInputBar.swift      # Text input with glass styling
    ├── ConversationHeaderView.swift  # Header with action buttons
    └── EmptyStateView.swift    # Welcome screen with suggestion cards
```

**Pattern:** MVVM with `@MainActor` for thread safety. The `LocalLLMService` is an actor-isolated singleton that handles streaming inference.

## Getting Started

1. Clone the repo
2. Open `LocalChat.xcodeproj` in Xcode 26+
3. Select a physical device (Apple Intelligence requires real hardware)
4. Build and run

## Screenshots

> Coming soon

## License

MIT
