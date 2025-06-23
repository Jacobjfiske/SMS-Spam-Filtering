# SMS Spam Classifier

A machine learning project that classifies SMS messages as either **"spam"** or **"ham"** using a trained model based on a public dataset. The project includes a simple user interface built with SwiftUI, allowing real-time message classification using CoreML.

## Overview

- **Language**: Swift
- **Frameworks Used**:
  - `SwiftUI` – for the user interface
  - `CoreML` – for running the trained ML model on-device
  - `Foundation` – for handling data and system tasks

## Dataset

- Based on a **public SMS spam collection dataset** in CSV format.
- The dataset includes labeled SMS messages used for training the spam classifier.

## Features

- Clean, minimal UI for message input and prediction.
- Instant classification of messages as "Spam" or "Ham".
- On-device prediction using CoreML for privacy and performance.

## How It Works

1. The CSV dataset is preprocessed and used to train a text classification model.
2. The model is converted to **CoreML format** and integrated into the SwiftUI app.
3. Users can enter any SMS message and get an instant prediction.

## Getting Started

### Requirements

- macOS with Xcode installed
- Swift 5+
- CoreML-compatible iOS/macOS device or simulator

### Running the App

1. Clone the repository.
2. Open the `.xcodeproj` or `.xcworkspace` file in Xcode.
3. Build and run the app on a simulator or device.

## License

This project uses publicly available data for educational purposes. You are free to use and modify it for your own learning or development.

---

*Made with Swift and machine learning.*
