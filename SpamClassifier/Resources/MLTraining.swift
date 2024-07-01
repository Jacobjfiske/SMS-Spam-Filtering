
/*
import CreateML
import Foundation

// Create a URL for the CSV file
let data = try MLDataTable(contentsOf: URL(fileURLWithPath: "/Users/jacobfiske/Developer/SMS Spam Filtering/SMSSpamFilter/spam.csv"))

// Split MLDataTable into training and validate
let (trainingData, testingData) = data.randomSplit(by: 0.8, seed: 5)

// Create instance of MLTextClassifier and train with trainingData
let spamClassifier = try MLTextClassifier(trainingData: trainingData,
                                               textColumn: "v2",
                                               labelColumn: "v1")

// Training accuracy as a percentage
let trainingAccuracy = (1.0 - spamClassifier.trainingMetrics.classificationError) * 100
print("\(trainingAccuracy)\n")

// Validation accuracy as a percentage
let validationAccuracy = (1.0 - spamClassifier.validationMetrics.classificationError) * 100
print("\(validationAccuracy)\n")

//Evaluates and prints Precision and Recall
let evaluationMetrics = spamClassifier.evaluation(on: testingData, textColumn: "v2", labelColumn: "v1")
print("\(evaluationMetrics)\n")

let metadata = MLModelMetadata(author: "Jacob Fiske",
                               shortDescription: "A model trained to classify spam SMS messages",
                               version: "1.0")

// Save Model
let fileManager = FileManager.default

do {
    let documentsURL = try fileManager.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
    let fileURL = documentsURL.appendingPathComponent("spamClassifier.mlmodel")
    
    try spamClassifier.write(to: fileURL, metadata: metadata)
    print("Model saved successfully at: \(fileURL.path)")
} catch {
    print("Error while saving the model: \(error.localizedDescription)")
}

 */
