# Minimal To-Do App

A minimal and efficient to-do app built with Flutter using GetX for state management. This app allows users to create, read, update, and delete tasks with ease. Additionally, users can toggle between light and dark themes to suit their preferences.

## Features

- **Create Tasks:** Add new tasks to stay organized.
- **Read Tasks:** View all your tasks in one place.
- **Update Tasks:** Edit existing tasks to keep them up-to-date.
- **Delete Tasks:** Remove tasks that are no longer needed.
- **Theme Toggle:** Switch between light and dark themes for a personalized experience.

<details> 
  <summary><h2>📸Photo / 📽️Video</h2></summary>
  <p>
    <table align="center">
      <tr>
        <td><img src="https://github.com/user-attachments/assets/9ba14493-68c0-486b-8211-aa79a96e8e0f" alt="Image 2" width="300" height="auto"></td>
        <td><img src="https://github.com/user-attachments/assets/cb4e78af-094f-4034-884b-f57ddb175342" alt="Image 2" width="300" height="auto"></td>
        <td><video src="https://github.com/user-attachments/assets/77d75b91-ff63-48a1-8bfa-4a4fecb45f13" width="420" height="315"></video>
        </td>
      </tr>
    </table>   
  </p>
</details>

## Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- GetX package: `flutter pub add get`

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/Aayush014/todo_app.git
   ```
2. Install dependencies
   ```sh
   flutter pub get
   ```
3. Run the app on your desired device
   ```sh
   flutter run
   ```

## Usage

1. **Add a Task:** Click the "+" button to add a new task.
2. **Edit a Task:** Longpress on a task to edit its details.
3. **Delete a Task:** Click on a delete icon task to delete it.
4. **Toggle Theme:** Use the theme icon in the appbar to change between light and dark themes.

## Code Overview

### Main Files

- `main.dart`: Entry point of the app.
- `todo_controller.dart`: Manages the app's state using GetX / Handles CRUD operations for tasks.
- `todo_model.dart`: Defines the data model for tasks.
- `home_screen.dart`: UI for displaying and managing tasks.
- `theme_controller.dart`: Manages theme changes.

### Directory Structure

```plaintext
minimal_todo_app/
├── lib/
│   ├── Controller/
│   │   ├── todo_controller.dart
│   │   └── theme_controller.dart
│   ├── Models/
│   │   └── todo_model.dart
│   ├── Views/
│   │   └── home_screen.dart
│   ├── Theme/
│   │   ├── light_theme.dart
│   │   └── dark_theme.dart
│   └── main.dart
├── pubspec.yaml
└── README.md
```

## Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

Distributed under the MIT License. See `LICENSE` for more information.

## Contact

Aayush Patel - [LinkedIn](https://www.linkedin.com/in/aayush-patel-b55390296/) - aayushpatel01411@gmail.com

Project Link: [App Repo](https://github.com/Aayush014/todo_app)
