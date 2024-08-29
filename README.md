
# AngelKids Challenge

## Overview

**AngelKids Challenge** is a SwiftUI application designed to manage and display a list of users. The app includes functionality to add new users, view the user list, and delete users with a confirmation prompt. It uses SQLite for data persistence, ensuring that user data is stored even when the app is closed.

## Features

- Add new users to the list
- View a list of users
- Delete users with a confirmation prompt
- Persistent data storage using SQLite

## Prerequisites

- Xcode 12.0 or later
- Swift 5.0 or later
- iOS 14.0 or later

## Setup and Installation

### Clone the Repository

To get started, clone the repository to your local machine:

```bash
git clone https://github.com/yourusername/AngelKidsChallenge.git
cd AngelKidsChallenge
```

### Install Dependencies

If your project includes dependencies managed by Swift Package Manager, follow these steps to install them:

1. Open the project in Xcode.
2. Go to **File** > **Package Dependencies** > **Add Package Dependency**.
3. Follow the prompts to add any required packages.

### Build and Run

1. Open the project in Xcode.
2. Select your target device or simulator.
3. Build and run the project by clicking the "Run" button or using `Cmd + R`.

## Usage

### Adding a New User

1. Tap the "+" button in the navigation bar.
2. Enter the user’s name and tap "Save" to add the user to the list.

### Viewing Users

- Users will be displayed in a list format on the main screen.

### Deleting a User

1. Swipe left on a user’s row or long-press to reveal the delete option.
2. Confirm the deletion in the action sheet or context menu.

## Code Structure

- **HomeView.swift**: The main view displaying the list of users.
- **NewItemView.swift**: A view for adding new users.
- **UserViewModel.swift**: The view model managing user data and interactions.
- **UserRepository.swift**: Manages database operations for user data.

## Contributing

We welcome contributions to the project! To contribute, please follow these guidelines:

1. **Fork the Repository**: Create a personal fork of the repository on GitHub.
2. **Create a Branch**: Create a new branch for your feature or bug fix.
3. **Make Changes**: Implement your changes.
4. **Submit a Pull Request**: Open a pull request from your branch to the main repository.

## Issues

If you encounter any issues or have suggestions, please [open an issue](https://github.com/yourusername/AngelKidsChallenge/issues) on GitHub.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgments

- SwiftUI
- SQLite
- Xcode

## Contact

For any questions or feedback, please contact me at reymesson@gmail.com or create an issue on GitHub.

---

### Customization Notes:

- **Repository URL**: https://github.com/reymesson1/AngelKidsChallenge.git.
- **Contact Information**: reymesson@gmail.com.
- **LICENSE File**: MIT.

This README provides a clear overview of the **AngelKids Challenge** project, including setup instructions, usage details, and guidelines for contributing. Feel free to adjust the sections as needed to better fit your project’s specifics.
