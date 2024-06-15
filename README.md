# Diamond Store Project Flutter

## Author
codenthusiast.id Mobile Team

## Date
15 Jun 2024

## Project Description
Sell Diamond Game


## Getting started

**Prerequisites :**

- Flutter SDK : 3.22.1
- IDE of your choice (e.g., VS Code, or Android Studio)

- add in dev_dependencies
  - build_runner: ^2.4.11
  - flutter_gen_runner: ^5.5.0+1

- when you add image static or icon just run 
   - dart run build_runner build

**Installation :**

1. Clone the repository
`git clone `https://github.com/Galuhdap/diamond-store-project`
2. Navigate to project directory
`cd diamond-store-flutter`
3. Install Dependencies
`flutter pub get`

**Running the Application :**
1. Connect a device or emulator
2. Run the app `flutter run`

**Launch Settings**

1. **VS Code**

        {
            "name": "Prod Base Project",
            "type": "dart",
            "request": "launch",
            "program": "lib/main_prod.dart",
            "args": [
                "--flavor",
                "prod"
                
            ]
        },
        {
            "name": "Dev Base Project",
            "type": "dart",
            "request": "launch",
            "program": "lib/main_dev.dart",
            "args": [
                "--flavor",
                "dev"
                
            ]
        },

2. **Android Studio**

`--flavor prod --no-enable-impeller`