# AKGEC ERP

Flutter app for AKGEC ERP — attendance, profile, timetable, and transport attendance.

## Structure

```
lib/
├── core/           # router, update check, background customizer
├── features/
│   ├── auth/       # login and splash
│   ├── home/       # dashboard and drawer screens
│   ├── attendance/ # attendance fetching and transport
│   ├── profile/    # student profile
│   └── timetable/  # transport timetable bloc
├── main.dart
└── main_shell.dart
```

## Run

```bash
flutter pub get
flutter run
```
