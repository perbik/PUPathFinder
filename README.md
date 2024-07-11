![Project - Group 7](https://github.com/perbik/PUPathFinder/assets/71052354/d76a835b-313c-4d2f-8b5f-3be76ebc5e72)

<h1 align="center">PUPathFinder</h1>
<p align="center">Access the paper <a href="https://drive.google.com/file/d/1_vraswlO2ZHKJo4F_UtmDuwud6aNKQf5/view?usp=sharing">here</a>.</p>

<p align="justify" style="text-align: justify;">
  The implementation of <b>Djikstra’s algorithm</b> in this project will be through a mobile application for user convenience. In the app, users will select a point of origin and a point of destination only from the given list of facilities in PUP - Mabini Campus. For instance, the user can pick Lagoon as a source or origin and Ninoy Aquino Library and Learning Resources Center (NALLRC) as the destination. It then displays the shortest possible path or route from the chosen origin to the destination using Dijkstra’s algorithm. In this project, the graph diagram will have facilities representing the nodes, while the usual routes represent the edges.
</p>


## Table of Contents
- [Features](#features)
- [How to Use](#how-to-use)
- [Technologies Utilized](#technologies-utilized)
- [Application Snapshots](#application-snapshots)
- [Installation](#installation)
- [Running the Application on a Virtual Device](#running-the-application-on-a-virtual-device)
- [Running the Application on a Hardware Device](#running-the-application-on-a-hardware-device)
- [Demo](#demo)
- [Contributors](#contributors)
- [License](#license)

## Features
- Display the shortest path from selected source and destination in PUP Mabini Campus using Dijkstra's algorithm.
- Add bookmarks of your favorite destinations.

## How to Use
- Select an origin and a destination in the map. You can do this by searching in the home page or tapping 'Choose from map' and picking a marker.
- Tap 'Find shortest path' and the app will then display the shortest path from the origin to the destination.
- If a path is not found, it will display a prompt. This can happen if the building or facility is disabled, as it may be under construction.
- If you choose to type the origin or destination, it must be ensured that the exact name of the building, which can be checked in the search bar, is typed.

## Technologies Utilized
### Development Tools:
- [Flutter](https://flutter.dev/): Framework for building native applications using Dart.
- [Dart](https://flutter.dev/): Programming language used with Flutter for app development.
- [Android Studio](https://developer.android.com/studio): Integrated development environment (IDE) for Android app development.
- [VS Code](https://code.visualstudio.com/): Code editor used for Flutter and Dart development.
### External APIs and Services:
- [Google Maps API for Android](https://developers.google.com/maps/documentation/android-sdk): API used to integrate Google Maps functionality into Android applications.
### Design and Prototyping:
- [Figma](https://www.figma.com/): Tool used for designing user interfaces and prototypes.
### Supplementary:
- [Java](https://www.java.com/en/): Although not directly used in the project, it's relevant due to establishment of algorithm logic.

## Application Snapshots
![ss1](https://github.com/perbik/PUPathFinder/assets/148320122/f1213b63-9b4b-41f8-8cb5-c845a7fbefd3)
![ss2](https://github.com/perbik/PUPathFinder/assets/148320122/f5ecbd3f-2476-4ffa-b13f-060ff7757b88)

## Installation

### Prerequisites

1. **Flutter SDK:** Ensure you have the Flutter SDK installed. If you don't have it installed, follow these steps:
   
   - **Download Flutter SDK:**
     - Go to the [Flutter official website](https://flutter.dev/docs/get-started/install).
     - Choose your operating system (Windows, macOS, Linux) and follow the instructions to download and install the Flutter SDK.

   - **Set Up Environment Variable:**
     - Add the Flutter bin directory to your system's PATH environment variable. This allows you to run Flutter commands from the terminal.
     - For example, if you are using Windows, add `C:\path\to\flutter\bin` to your PATH.

   - **Verify Installation:**
     - Open a terminal or command prompt.
     - Run `flutter doctor` to check if there are any dependencies you need to install to complete the setup. Follow the instructions provided by the command to resolve any issues.

### Clone the Repository

2. **Clone the repository to your local machine:**
   
   ```sh
   git clone https://github.com/yourusername/your-repo-name.git
   

## Running the Application on a Virtual Device

### Using Android Studio

1. **Install Android Studio:**
   - Download and install Android Studio from the [official website](https://developer.android.com/studio).
   
2. **Set Up an Emulator:**
   - Open Android Studio.
   - Go to **AVD Manager** from the **Tools** menu.
   - Click on **Create Virtual Device**.
   - Choose a device definition and select **Next**.
   - Select a system image, click on **Next**, and then click on **Finish** to create the emulator.
   
3. **Launch the Emulator:**
   - In the AVD Manager, click the **Play** button next to your newly created device to start the emulator.

4. **Run the Flutter App:**
   - Open your Flutter project in Android Studio.
   - Ensure the emulator is running.
   - Click the **Run** button or use the shortcut `Shift + F10` to start the app on the emulator.

For more information, [click here.](https://developer.android.com/studio/run/emulator)

### Using Visual Studio Code

1. **Install Visual Studio Code:**
   - Download and install Visual Studio Code from the [official website](https://code.visualstudio.com/).

2. **Install Flutter and Dart Extensions:**
   - Open VS Code.
   - Go to the **Extensions** view by clicking the square icon in the sidebar or pressing `Ctrl + Shift + X`.
   - Search for and install the **Flutter** and **Dart** extensions.

3. **Set Up an Emulator:**
   - If you haven't already set up an emulator in Android Studio, follow the **Set Up an Emulator** steps under the **Using Android Studio** section.

4. **Launch the Emulator:**
   - Open the command palette by pressing `Ctrl + Shift + P`.
   - Type `Flutter: Launch Emulator` and select your desired emulator from the list.
   - Alternatively, you can start the emulator from Android Studio as described above.

5. **Run the Flutter App:**
   - Open your Flutter project in VS Code.
   - Ensure the emulator is running.
   - Open the command palette by pressing `Ctrl + Shift + P`.
   - Type `Flutter: Run` and press `Enter` to start the app on the emulator.

## Running the Application on a Hardware Device

### Using Android Studio

1. **Install Android Studio:**
   - Download and install Android Studio from the [official website](https://developer.android.com/studio).

2. **Set Up Your Device:**
   - Enable **Developer Options** on your Android device by going to **Settings > About Phone** and tapping **Build Number** seven times.
   - Enable **USB Debugging** in **Developer Options**.

3. **Connect Your Device:**
   - Connect your Android device to your computer using a USB cable.
   - Ensure your device is recognized by running `adb devices` in your terminal. If your device is listed, you're ready to proceed.

4. **Run the Flutter App:**
   - Open your Flutter project in Android Studio.
   - Select your connected device from the device dropdown menu.
   - Click the **Run** button or use the shortcut `Shift + F10` to start the app on your device.

For more information, [click here.](https://developer.android.com/studio/run/device)

### Using Visual Studio Code

1. **Install Visual Studio Code:**
   - Download and install Visual Studio Code from the [official website](https://code.visualstudio.com/).

2. **Install Flutter and Dart Extensions:**
   - Open VS Code.
   - Go to the **Extensions** view by clicking the square icon in the sidebar or pressing `Ctrl + Shift + X`.
   - Search for and install the **Flutter** and **Dart** extensions.

3. **Set Up Your Device:**
   - Enable **Developer Options** on your Android device by going to **Settings > About Phone** and tapping **Build Number** seven times.
   - Enable **USB Debugging** in **Developer Options**.

4. **Connect Your Device:**
   - Connect your Android device to your computer using a USB cable.
   - Ensure your device is recognized by running `adb devices` in your terminal. If your device is listed, you're ready to proceed.

5. **Run the Flutter App:**
   - Open your Flutter project in VS Code.
   - Ensure your device is connected.
   - Open the command palette by pressing `Ctrl + Shift + P`.
   - Type `Flutter: Run` and press `Enter` to start the app on your device.

By following these steps, you can set up and run your Flutter application on an emulator using either Android Studio or Visual Studio Code.

## Demo
![Screen_recording_20240710_000351-ezgif com-optimize](https://github.com/perbik/PUPathFinder/assets/71052354/6f4fa671-de57-4432-a66a-2b0acb8b35d1)

## Contributors
- Carlos, Henry James R.
- Domingo, Syruz Ken C.
- Lagman, Fervicmar D.
- Rustia, Julia Kyla

## License
This project is licensed under the [MIT License](LICENSE.txt).




