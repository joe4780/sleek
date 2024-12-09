# Property Management System

 **Property Management System**, a Flutter-based application designed to manage property listings efficiently add, delete and edit property.

---

## **Features**
- Add, update, and delete property listings.
- Persist user data locally.
- Modern UI with advanced grid layouts.
- Toast notifications for enhanced user feedback.
- Context-less state management.

---

## **Packages Used**

### **Core Packages**
- **`flutter`**: The Flutter SDK, the backbone of the application.
- **`cupertino_icons`**: Provides iOS-styled icons for Cupertino widgets.

### **State Management**
- **`flutter_bloc`**: Implements the BLoC (Business Logic Component) pattern for predictable state management.
- **`bloc`**: Core library for the BLoC pattern.


### **Dependency Injection**
- **`kiwi`**: A lightweight service locator for managing dependencies.
- **`kiwi_generator`**: Code generator for `kiwi`.

### **Functional Programming**
- **`dartz`**: Enables functional programming features like `Option`, `Either`, and functional operations.

### **Code Generation**
- **`freezed`**: Generates immutable classes and unions for Dart.
- **`freezed_annotation`**: Annotations for `freezed` code generation.
- **`json_serializable`**: Automatically generates JSON serialization/deserialization code.
- **`build_runner`**: A code-generation tool used with `freezed` and `json_serializable`.

### **UI and Widgets**
- **`syncfusion_flutter_datagrid`**: Advanced data grid widget for tabular data display.
- **`image_picker`**: Enables image selection from the device's gallery or camera.

### **Local Storage**
- **`shared_preferences`**: Provides persistent storage for simple key-value pairs.

### **Notifications**
- **`toastification`**: A modern toast notification package with customizable designs.

---

## **Development Setup**

### **Requirements**
- Flutter SDK: `^3.5.3`
- Dart SDK: `^3.5.3`

### **Installation**
1. Clone the repository:
   ```bash
   git clone https://github.com/kahdichienja/Property_Management_System_for_Sleek_Properties_LLC_interview_mobile.git
   ```
2. Navigate to the project directory:
   ```bash
   cd Property_Management_System_for_Sleek_Properties_LLC_interview_mobile
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```

### **Code Generation**
Run the following command to generate necessary code:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

---

## **Project Structure**
- **`lib`**: Main application logic.
- **`packages/repository`**: Repository layer for data handling and API interactions.

---

## **Usage**
1. Run the application:
   ```bash
   flutter run
   ```
2. Explore the property management features.

---

## **Testing**
Run the Flutter tests:
```bash
flutter test
```

---

## **Acknowledgments**
This project leverages the power of Flutter and its ecosystem to build an efficient property management system. Special thanks to the open-source community for maintaining these awesome packages!

---
