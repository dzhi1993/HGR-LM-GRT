/*
 GRT KNN Example
 This examples demonstrates how to initialize, train, and use the KNN algorithm for classification. 
 
 The K-Nearest Neighbor (KNN) Classifier is a simple classifier that works well on basic recognition problems, however it can be slow for real-time prediction if there are a large number of training examples and is not robust to noisy data. 
 
 In this example we create an instance of a KNN algorithm and then train the algorithm using some pre-recorded training data.
 The trained KNN algorithm is then used to predict the class label of some test data.
 
 This example shows you how to:
 - Create an initialize the KNN algorithm and set the number of neighbors to use for clasification
 - Load some ClassificationData from a file and partition the training data into a training dataset and a test dataset
 - Train the KNN algorithm using the training dataset
 - Test the KNN algorithm using the test dataset
 - Manually compute the accuracy of the classifier

You should run this example with one argument pointing to the data you want to load. A good dataset to run this example is acc-orientation.grt, which can be found in the GRT data folder.
*/


//You might need to set the specific path of the GRT header relative to your project
#include <GRT.h>
#include "Leap.h"
#include <iostream>

using namespace GRT;
using namespace std;

const std::string fingerNames[] = { "Thumb", "Index", "Middle", "Ring", "Pinky" };
const std::string boneNames[] = { "Metacarpal", "Proximal", "Middle", "Distal" };

//int main (int argc, const char * argv[])
//{
//	const string filename = "TrainingData_static_10numbers.grt";
//	const string testfilename = "testData_static_10numbers.grt";
//
//	//Create a new KNN classifier with a K value of 10
//	KNN knn(9);
//	knn.setNullRejectionCoeff( 10 );
//	knn.enableScaling( false );
//	knn.enableNullRejection( false );
//	
//
//	//Train the classifier with some training data
//	ClassificationData trainingData;
//	
//	if( !trainingData.load( filename ) ){
//		cout << "Failed to load training data: " << filename << endl;
//		return EXIT_FAILURE;
//	}
//	
//	//Use 20% of the training dataset to create a test dataset
//	ClassificationData testData;
//
//	//Load test dataset
//	if (!testData.load(testfilename)) {
//		cout << "Failed to load training data: " << testfilename << endl;
//		return EXIT_FAILURE;
//	}
//	
//	//Train the classifier
//	if( !knn.train( trainingData ) ){
//		cout << "Failed to train classifier!\n";
//		return EXIT_FAILURE;
//	}
//	
//	//Save the knn model to a file
//	if( !knn.save("KNNModel.grt") ){
//		cout << "Failed to save the classifier model!\n";
//		return EXIT_FAILURE;
//	}
//	
//	//Load the knn model from a file
//	if( !knn.load("KNNModel.grt") ){
//		cout << "Failed to load the classifier model!\n";
//		return EXIT_FAILURE;
//	}
//	
//	//-----------------------------------Calculating the recognition accuracy--------------------------------------
//	//Use the test dataset to test the KNN model
//	double totalaccuracy = 0;
//	double gesture1Accuracy = 0;
//	double gesture2Accuracy = 0;
//	double gesture3Accuracy = 0;
//	double gesture4Accuracy = 0;
//	double gesture5Accuracy = 0;
//	double gesture6Accuracy = 0;
//	double gesture7Accuracy = 0;
//	double gesture8Accuracy = 0;
//	double gesture9Accuracy = 0;
//	double gesture10Accuracy = 0;
//	for (UINT i = 0; i<testData.getNumSamples(); i++) {
//		//Get the i'th test sample
//		UINT classLabel = testData[i].getClassLabel();
//		VectorFloat inputVector = testData[i].getSample();
//
//		//Perform a prediction using the classifier
//		bool predictSuccess = knn.predict(inputVector);
//
//		if (!predictSuccess) {
//			cout << "Failed to perform prediction for test sampel: " << i << "\n";
//			return EXIT_FAILURE;
//		}
//
//		//Get the predicted class label
//		UINT predictedClassLabel = knn.getPredictedClassLabel();
//		VectorFloat classLikelihoods = knn.getClassLikelihoods();
//		VectorFloat classDistances = knn.getClassDistances();
//
//		//Update the accuracy for each gesture and total
//		if (classLabel == predictedClassLabel) {
//			totalaccuracy++;
//			if (classLabel == 1) gesture1Accuracy++;
//			else if (classLabel == 2) gesture2Accuracy++;
//			else if (classLabel == 3) gesture3Accuracy++;
//			else if (classLabel == 4) gesture4Accuracy++;
//			else if (classLabel == 5) gesture5Accuracy++;
//			else if (classLabel == 6) gesture6Accuracy++;
//			else if (classLabel == 7) gesture7Accuracy++;
//			else if (classLabel == 8) gesture8Accuracy++;
//			else if (classLabel == 9) gesture9Accuracy++;
//			else if (classLabel == 10) gesture10Accuracy++;
//		}
//
//		cout << "TestSample: " << i << " ClassLabel: " << classLabel << " PredictedClassLabel: " << predictedClassLabel << endl;
//	}
//	cout << "gesture 1 Test Accuracy: " << gesture1Accuracy / double(testData.getNumSamples() / 10)*100.0 << "%" << endl;
//	cout << "gesture 2 Test Accuracy: " << gesture2Accuracy / double(testData.getNumSamples() / 10)*100.0 << "%" << endl;
//	cout << "gesture 3 Test Accuracy: " << gesture3Accuracy / double(testData.getNumSamples() / 10)*100.0 << "%" << endl;
//	cout << "gesture 4 Test Accuracy: " << gesture4Accuracy / double(testData.getNumSamples() / 10)*100.0 << "%" << endl;
//	cout << "gesture 5 Test Accuracy: " << gesture5Accuracy / double(testData.getNumSamples() / 10)*100.0 << "%" << endl;
//	cout << "gesture 6 Test Accuracy: " << gesture6Accuracy / double(testData.getNumSamples() / 10)*100.0 << "%" << endl;
//	cout << "gesture 7 Test Accuracy: " << gesture7Accuracy / double(testData.getNumSamples() / 10)*100.0 << "%" << endl;
//	cout << "gesture 8 Test Accuracy: " << gesture8Accuracy / double(testData.getNumSamples() / 10)*100.0 << "%" << endl;
//	cout << "gesture 9 Test Accuracy: " << gesture9Accuracy / double(testData.getNumSamples() / 10)*100.0 << "%" << endl;
//	cout << "gesture 10 Test Accuracy: " << gesture10Accuracy / double(testData.getNumSamples() / 10)*100.0 << "%" << endl;
//	cout << "Total Test Accuracy: " << totalaccuracy / double(testData.getNumSamples())*100.0 << "%" << endl;
//	
//	//---------------------------------------Classificating in real-time---------------------------------------
//	Leap::Controller controller;
//	std::cout << "Starting real-time classification period, press Enter to Continue...";
//	cin.ignore();
//
//	VectorFloat featureVector(trainingData.getNumDimensions());
//
//	unsigned int i = 0;
//
//	while (controller.isServiceConnected()) {//When leap motion is connected
//
//		// Get the latest frame
//		Leap::Frame frame = controller.frame();
//		float fps = frame.currentFramesPerSecond();
//		cout << "Current frames per second: " << fps << " ";
//		Leap::Hand hand = frame.hands()[0];
//		bool isMoving = false;
//
//		if (hand.isValid()) {//If a hand is detected
//
//			// Get the hand's normal vector and direction
//			const Leap::Vector normal = hand.palmNormal();
//			//const Leap::Vector direction = hand.direction();
//			const Leap::Vector palmPosition = hand.palmPosition();
//
//			// Get fingers object, Thumb, Index, Middle, Ring, and Pinky
//			const Leap::FingerList fingers = hand.fingers();
//			const Leap::Finger Thumb = fingers[0];
//			const Leap::Finger Index = fingers[1];
//			const Leap::Finger Middle = fingers[2];
//			const Leap::Finger Ring = fingers[3];
//			const Leap::Finger Pinky = fingers[4];
//			int index = 0;
//
//			// The distance between palm position to fingertip position for each finger (5 dimensions)
//			// From thumb to pinky
//			for (Leap::FingerList::const_iterator fl = fingers.begin(); fl != fingers.end(); ++fl) {
//				const Leap::Finger finger = *fl;// Get the finger object
//
//				// get the velocity data to know is the hand moving or not, then set bool isMoving to true if it's moving
//				if (std::abs(finger.tipVelocity()[0]) >= 10 && std::abs(finger.tipVelocity()[1]) >= 10 && std::abs(finger.tipVelocity()[2]) >= 10) isMoving = true;
//
//				// Calculate the distance of current finger's tip position to palm's
//				float distance = palmPosition.distanceTo(finger.tipPosition());
//				featureVector[index] = distance;
//				//std::cout << index << endl;
//				index++;
//			}
//
//			// The distance between two adjacent fingers, in order of thumb to pinky
//			featureVector[5] = Thumb.tipPosition().distanceTo(Index.tipPosition());
//			featureVector[6] = Index.tipPosition().distanceTo(Middle.tipPosition());
//			featureVector[7] = Middle.tipPosition().distanceTo(Ring.tipPosition());
//			featureVector[8] = Ring.tipPosition().distanceTo(Pinky.tipPosition());
//
//			if (!isMoving) {// If the hand is not moving, then we can predict the static gesture
//
//				//GRT's job:
//				//Perform the prediction
//				bool predictionSuccess = knn.predict(featureVector);
//
//				//You can then get the predicted class label from the pipeline
//				UINT predictedClassLabel = knn.getPredictedClassLabel();
//
//				//Along with some other results such as the likelihood of the most likely class or the likelihood of all the classes in the model
//				double bestLoglikelihood = knn.getMaximumLikelihood();
//				//std::cout << bestLoglikelihood << endl;
//				vector<double> classLikelihoods = knn.getClassLikelihoods();
//
//				//You can then use the predicted class label to trigger the action associated with that gesture
//				if (predictedClassLabel == 1) {
//					//Trigger the action associated with gesture 1
//					cout << "Label 1" << ", bestLoglikelihood: " << bestLoglikelihood << endl;
//				}
//				else if (predictedClassLabel == 2) {
//					//Trigger the action associated with gesture 2
//					cout << "Label 2" << ", bestLoglikelihood: " << bestLoglikelihood << endl;
//				}
//				else if (predictedClassLabel == 3) {
//					//Trigger the action associated with gesture 3
//					cout << "Label 3" << ", bestLoglikelihood: " << bestLoglikelihood << endl;
//				}
//				else if (predictedClassLabel == 4) {
//					//Trigger the action associated with gesture 4
//					cout << "Label 4" << ", bestLoglikelihood: " << bestLoglikelihood << endl;
//				}
//				else if (predictedClassLabel == 5) {
//					//Trigger the action associated with gesture 5
//					cout << "Label 5" << ", bestLoglikelihood: " << bestLoglikelihood << endl;
//				}
//				else if (predictedClassLabel == 6) {
//					//Trigger the action associated with gesture 6
//					cout << "Label 6" << ", bestLoglikelihood: " << bestLoglikelihood << endl;
//				}
//				else if (predictedClassLabel == 7) {
//					//Trigger the action associated with gesture 7
//					cout << "Label 7" << ", bestLoglikelihood: " << bestLoglikelihood << endl;
//				}
//				else if (predictedClassLabel == 8) {
//					//Trigger the action associated with gesture 8
//					cout << "Label 8" << ", bestLoglikelihood: " << bestLoglikelihood << endl;
//				}
//				else if (predictedClassLabel == 9) {
//					//Trigger the action associated with gesture 9
//					cout << "Label 9" << ", bestLoglikelihood: " << bestLoglikelihood << endl;
//				}
//				else if (predictedClassLabel == 10) {
//					//Trigger the action associated with gesture 10
//					cout << "Label 10" << ", bestLoglikelihood: " << bestLoglikelihood << endl;
//				}
//				else {
//					cout << "Gesture Not Recognized (really not)" << endl;
//				}
//
//
//			}
//			else {// The hand has not obvious movement
//				cout << "Hand detected, but it is moving!" << endl;
//			}
//		} //Finishes the processing of a frame (feature extraction and prediction with pipeline)
//		else {// If there is no hand detected by Leap Motion
//			cout << "No hands detected!" << endl;
//		}
//		//usleep(10000); // grabs a frame every 10 ms
//
//	}	//Finishes when !controller.isServiceConnected()
//
//	std::system("pause");
//	return EXIT_SUCCESS;
//}