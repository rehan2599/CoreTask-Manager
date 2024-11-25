# CoreTask Manager

## Project Overview
CoreTask Manager is a robust macOS task management application designed to provide seamless task tracking and organization using modern Swift technologies.

## Key Features
- Persistent task storage using Core Data
- One-to-many relationship modeling
- Real-time data synchronization
- Intuitive SwiftUI interface

## Technical Architecture
- **UI Framework**: SwiftUI
- **Data Persistence**: Core Data + SQLite
- **Architecture Pattern**: MVVM
- **Concurrency**: Swift async/await
- **Notification Handling**: UserNotifications Framework

## Project Structure
```
CoreTaskManager/
├── Models/
│   ├── Task.swift
│   └── TaskCategory.swift
├── Views/
│   ├── TaskListView.swift
│   └── TaskDetailView.swift
├── ViewModels/
│   └── TaskViewModel.swift
└── Persistence/
    └── CoreDataStack.swift
```

## Core Functionalities
- Create, Read, Update, Delete (CRUD) task operations
- Task categorization
- Priority and deadline management
- Persistent data storage

## Development Requirements
- Xcode 15+
- macOS 14 (Sonoma)
- Swift 5.9+

## Installation
1. Clone the repository
2. Open `CoreTaskManager.xcodeproj`
3. Build and run the project

## Contributing
Please read `CONTRIBUTING.md` for details on our code of conduct and the process for submitting pull requests.
