import SwiftUI
import CoreML

// Define a SwiftUI view for the app's main content
struct ContentView: View {
    
    // Core ML model for spam classification
    let model: spamClassifier
    
    // State properties to hold classification result and user input
    @State private var isSpamResult: String = ""
    @State private var input: String = ""
    
    // Initialize the view and load the Core ML model
    init() {
        do {
            model = try spamClassifier(configuration: MLModelConfiguration())
        } catch {
            fatalError("Failed to load Core ML model: \(error)")
        }
    }
    
    // Body of the SwiftUI view
    var body: some View {
        // Vertical stack to organize UI elements
        VStack {
            
            // Text with instructions and information about the app
            Text("This App Will classify an SMS text message as spam or not. Please copy and paste the message you would like to classify below. \n\n This is just a simple interface to test the ML Model.\n")
                .font(.title)
                .multilineTextAlignment(.center)
            
            // Text field for user input
            TextField("Message", text: $input, axis: .vertical)
                .font(.title)
                .foregroundColor(.black)
                .textFieldStyle(.roundedBorder)
                .lineLimit(...5)
                
            // Button to set an example message in the input field
            Button("Example") {
                input = "Anti-Virus Warning #47: A person just tried to reveal your sensitive data. Encrypt your info immediately hccivq.com/JW06S2e9Yh"
            }
            .padding()
                    
            // Button to trigger model inference and classify the input
            Button(action: {
                // Perform Model inference
                if let prediction = try? model.prediction(text: input) {
                    isSpamResult = prediction.label // Access the predicted label
                    isSpamResult = isSpamResult.capitalized
                    
                }
            }) {
                // Stylish button for classification
                Text("Classify")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
            // Display the classification result with color-coded text
            Text(isSpamResult)
                .font(.title)
                .padding()
                .foregroundColor(isSpamResult == "Spam" ? .red : .mint)
        }
        .padding() // Add padding to the entire VStack
    }
}

// SwiftUI preview provider for development previews
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
