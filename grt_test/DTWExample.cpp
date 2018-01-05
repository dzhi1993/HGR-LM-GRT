/*
 GRT DTW Example
 This examples demonstrates how to initialize, train, and use the DTW algorithm for classification.
 
 The Dynamic Time Warping (DTW) algorithm is a powerful classifier that works very well for recognizing temporal gestures.
 
 In this example we create an instance of an DTW algorithm and then train the algorithm using some pre-recorded training data.
 The trained DTW algorithm is then used to predict the class label of some test data.
 
 This example shows you how to:
 - Create an initialize the DTW algorithm
 - Load some LabelledTimeSeriesClassificationData from a file and partition the training data into a training dataset and a test dataset
 - Trim any periods of non-movement from the start and end of each timeseries recording 
 - Train the DTW algorithm using the training dataset
 - Test the DTW algorithm using the test dataset
 - Manually compute the accuracy of the classifier
*/

#include "GRT.h"
//#include "LMListener.h"
#include <iostream>
#include "Leap.h"
//#include "LeapMath.h"

using namespace GRT;
using namespace std;

//int main (int argc, const char * argv[])
//{
//	//Create a new DTW instance, using the default parameters
//	DTW dtw(false, true, 3.0, DTW::CLASS_LIKELIHOODS, true, 0.2, false, false, 5, 0.20);
//	//dtw.enableNullRejection(true);
//
//	//Load some training data to train the classifier - the DTW uses TimeSeriesClassificationData
//	TimeSeriesClassificationData trainingData;
//	
//	if( !trainingData.load("DTWTrainingData_new.grt") ){
//		cout << "Failed to load training data!\n";
//		return EXIT_FAILURE;
//	}
//	std::cout << "DTW training data has loaded!" << endl;
//	//Printing some status about the training data
//	trainingData.printStats();
//	
//	//Use 20% of the training dataset to create a test dataset
//	TimeSeriesClassificationData testData = trainingData.split( 70 );
//	
//	//Trim the training data for any sections of non-movement at the start or end of the recordings
//	dtw.enableTrimTrainingData(true,0,10);
//	
//	//------------------------------------------Train the classifier------------------------------------------
//	if( !dtw.train( trainingData ) ){
//		cout << "Failed to train classifier!\n";
//		return EXIT_FAILURE;
//	}
//	std::cout << "DTW model trained!" << endl;
//	
//	//Save the DTW model to a file
//	if( !dtw.save("DTWModel_new.grt") ){
//		cout << "Failed to save the classifier model!\n";
//		return EXIT_FAILURE;
//	}
//	
//	//Load the DTW model from a file
//	if( !dtw.load("DTWModel_new.grt") ){
//		cout << "Failed to load the classifier model!\n";
//		return EXIT_FAILURE;
//	}
//	
//	//-----------------------------------Calculating the recognition accuracy--------------------------------------
//	//Use the test dataset to test the DTW model
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
//	for (UINT i = 0; i < testData.getNumSamples(); i++) {
//		//Get the i'th test sample - this is a timeseries
//		UINT classLabel = testData[i].getClassLabel();
//		MatrixDouble timeseries = testData[i].getData();
//
//		//Perform a prediction using the classifier
//		if (!dtw.predict(timeseries)) {
//			cout << "Failed to perform prediction for test sampel: " << i << "\n";
//			return EXIT_FAILURE;
//		}
//
//		//Get the predicted class label
//		UINT predictedClassLabel = dtw.getPredictedClassLabel();
//		double maximumLikelihood = dtw.getMaximumLikelihood();
//		VectorDouble classLikelihoods = dtw.getClassLikelihoods();
//		VectorDouble classDistances = dtw.getClassDistances();
//
//		//Update the accuracy for each gesture and total
//		if (classLabel == predictedClassLabel) {
//			totalaccuracy++;
//			if (predictedClassLabel == 1) gesture1Accuracy++;
//			else if (predictedClassLabel == 2) gesture2Accuracy++;
//			else if (predictedClassLabel == 3) gesture3Accuracy++;
//			else if (predictedClassLabel == 4) gesture4Accuracy++;
//			else if (predictedClassLabel == 5) gesture5Accuracy++;
//			else if (predictedClassLabel == 6) gesture6Accuracy++;
//			else if (predictedClassLabel == 7) gesture7Accuracy++;
//			else if (predictedClassLabel == 8) gesture8Accuracy++;
//			else if (predictedClassLabel == 9) gesture9Accuracy++;
//			else if (predictedClassLabel == 10) gesture10Accuracy++;
//			
//		}
//		cout << "TestSample: " << i << " ClassLabel: " << classLabel << " PredictedClassLabel: " << predictedClassLabel << endl;
//	}
//		
//		//Printing status about the testing
//		cout << "gesture 1 Test Accuracy: " << gesture1Accuracy / double(testData.getNumSamples() / 10)*100.0 << "%" << endl;
//		cout << "gesture 2 Test Accuracy: " << gesture2Accuracy / double(testData.getNumSamples() / 10)*100.0 << "%" << endl;
//		cout << "gesture 3 Test Accuracy: " << gesture3Accuracy / double(testData.getNumSamples() / 10)*100.0 << "%" << endl;
//		cout << "gesture 4 Test Accuracy: " << gesture4Accuracy / double(testData.getNumSamples() / 10)*100.0 << "%" << endl;
//		cout << "gesture 5 Test Accuracy: " << gesture5Accuracy / double(testData.getNumSamples() / 10)*100.0 << "%" << endl;
//		cout << "gesture 6 Test Accuracy: " << gesture6Accuracy / double(testData.getNumSamples() / 10)*100.0 << "%" << endl;
//		cout << "gesture 7 Test Accuracy: " << gesture7Accuracy / double(testData.getNumSamples() / 10)*100.0 << "%" << endl;
//		cout << "gesture 8 Test Accuracy: " << gesture8Accuracy / double(testData.getNumSamples() / 10)*100.0 << "%" << endl;
//		cout << "gesture 9 Test Accuracy: " << gesture9Accuracy / double(testData.getNumSamples() / 10)*100.0 << "%" << endl;
//		cout << "gesture 10 Test Accuracy: " << gesture10Accuracy / double(testData.getNumSamples() / 10)*100.0 << "%" << endl;
//		cout << "Total Test Accuracy: " << totalaccuracy / double(testData.getNumSamples())*100.0 << "%" << endl;
//		
//	//---------------------------------------Classificating in real-time---------------------------------------
//	
//	Leap::Controller controller;
//	std::cout << "Starting real-time classification period, press Enter to Continue...";
//	cin.ignore();
//
//	VectorFloat featureVector(trainingData.getNumDimensions());
//	//std::vector<std::vector <float> > inputFeatureVector(30, std::vector<float>( trainingData.getNumDimensions(), 0) );
//	MatrixFloat inputFeatureVector(30, 39);
//	inputFeatureVector.setAll(0);
//	unsigned int i = 0;
//
//	while( controller.isServiceConnected() ) //When leap motion is connected
//	{
//		// Get the latest frame
//		Leap::Frame frame = controller.frame();
//		float fps = frame.currentFramesPerSecond();
//		cout << "Current frames per second: " << fps << " ";
//		Leap::Hand firstHand = frame.hands()[0];
//		bool isMoving = false;
//		//Frame firstFrame = controller.frame(29);
//		//Hand firstFrameHand = firstFrame.hands()[0];
//		//unsigned int i = 0;
//
//		if (firstHand.isValid()) {//If a hand is detected
//			
//			//Generate the empty vector, ready to save the features
//			//std::vector<std::vector <float> > inputFeatureVector(0);
//			//MatrixFloat inputFeatureVector;
//			//inputFeatureVector.clear();
//			//inputFeatureVector.erase(inputFeatureVector.begin());
//			
//			Leap::Frame currentFrame = controller.frame();
//			Leap::Hand hand = currentFrame.hands()[0];
//				
//			// Get the hand's normal vector, direction, and position
//			const Leap::Vector normal = hand.palmNormal();
//			const Leap::Vector direction = hand.direction();
//			featureVector[0] = hand.palmPosition()[0];
//			featureVector[1] = hand.palmPosition()[1];
//			featureVector[2] = hand.palmPosition()[2];
//
//			// Calculate the hand's pitch, roll, and yaw angles, stored as sample[0] = pitch, sample[1] = roll, sample[2] = yaw angles
//			featureVector[3] = direction.pitch() * 57.295779513f;
//			featureVector[4] = direction.roll() * 57.295779513f;
//			featureVector[5] = direction.yaw() * 57.295779513f;
//			featureVector[6] = normal.pitch() * 57.295779513f;
//			featureVector[7] = normal.roll() * 57.295779513f;
//			featureVector[8] = normal.yaw() * 57.295779513f;
//
//			// Should we have really need the arm's position and directions? Maybe.
//			// Get the Arm bone
//			/*Leap::Arm arm = hand.arm();
//			featureVector[3] = arm.direction()[0];
//			featureVector[4] = arm.direction()[1];
//			featureVector[5] = arm.direction()[2];*/
//			int currIndex = 8;
//
//			// Get fingers, including the fingers position and directions using a 2d vectors representing the finger list
//			const Leap::FingerList fingers = hand.fingers();
//			for (Leap::FingerList::const_iterator fl = fingers.begin(); fl != fingers.end(); ++fl) {
//				const Leap::Finger finger = *fl;
//				//cout << finger.type() << ": " << finger.tipVelocity() << " mm/s;" << endl;
//				if (std::abs(finger.tipVelocity()[0]) >= 10 && std::abs(finger.tipVelocity()[1]) >= 10 && std::abs(finger.tipVelocity()[2]) >= 10) isMoving = true;
//				// Get each finger bones, Get the fingers' direction
//				/*for (int b = 0; b < 4; ++b) {
//					Leap::Bone::Type boneType = static_cast<Leap::Bone::Type>(b);
//					Leap::Bone bone = finger.bone(boneType);
//					featureVector[++currIndex] = bone.direction()[0];
//					featureVector[++currIndex] = bone.direction()[1];
//					featureVector[++currIndex] = bone.direction()[2];
//				}*/
//				featureVector[++currIndex] = finger.tipPosition()[0];
//				featureVector[++currIndex] = finger.tipPosition()[1];
//				featureVector[++currIndex] = finger.tipPosition()[2];
//				featureVector[++currIndex] = finger.direction()[0];
//				featureVector[++currIndex] = finger.direction()[1];
//				featureVector[++currIndex] = finger.direction()[2];
//
//			}
//			if (isMoving) {
//				if (i > 29) {//When the first 30 frames' data has filled the Matrix
//					//cout << "entered" << endl;
//					for (unsigned int j = 0; j < 29; j++) {
//						inputFeatureVector.setRowVector(inputFeatureVector.getRowVector(j + 1), j);
//					}
//					inputFeatureVector.setRowVector(featureVector, 29);
//					//bool contents = inputFeatureVector.print("the lastest time series");
//
//					//GRT's job:
//					//Perform the prediction
//					bool predictionSuccess = dtw.predict(inputFeatureVector);
//
//					//You can then get the predicted class label from the pipeline
//					UINT predictedClassLabel = dtw.getPredictedClassLabel();
//
//					//Along with some other results such as the likelihood of the most likely class or the likelihood of all the classes in the model
//					double bestLoglikelihood = dtw.getMaximumLikelihood();
//					//std::cout << bestLoglikelihood << endl;
//					vector<double> classLikelihoods = dtw.getClassLikelihoods();
//
//					//You can then use the predicted class label to trigger the action associated with that gesture
//					if (predictedClassLabel == 1) {
//						//Trigger the action associated with gesture 1
//						cout << "Label 1, five fingers open and rotate" << ", bestLoglikelihood: " << bestLoglikelihood << endl;
//					}
//					else if (predictedClassLabel == 2) {
//						//Trigger the action associated with gesture 2
//						cout << "Label 2, sing 'OK' and rotate" << ", bestLoglikelihood: " << bestLoglikelihood << endl;
//					}
//					else if (predictedClassLabel == 3) {
//						//Trigger the action associated with gesture 3
//						cout << "Label 3, 'Love' and rotate" << ", bestLoglikelihood: " << bestLoglikelihood << endl;
//					}
//					else if (predictedClassLabel == 4) {
//						//Trigger the action associated with gesture 4
//						cout << "Label 4, letter 'L' and rotate" << ", bestLoglikelihood: " << bestLoglikelihood << endl;
//					}
//					else if (predictedClassLabel == 5) {
//						//Trigger the action associated with gesture 5
//						cout << "Label 5, number 'six' and rotate" << ", bestLoglikelihood: " << bestLoglikelihood << endl;
//					}
//					else if (predictedClassLabel == 6) {
//						//Trigger the action associated with gesture 6
//						cout << "Label 6, 'Clenched'" << ", bestLoglikelihood: " << bestLoglikelihood << endl;
//					}
//					else if (predictedClassLabel == 7) {
//						//Trigger the action associated with gesture 7
//						cout << "Label 7, Only thumb move" << ", bestLoglikelihood: " << bestLoglikelihood << endl;
//					}
//					else if (predictedClassLabel == 8) {
//						//Trigger the action associated with gesture 8
//						cout << "Label 8, Only index move" << ", bestLoglikelihood: " << bestLoglikelihood << endl;
//					}
//					else if (predictedClassLabel == 9) {
//						//Trigger the action associated with gesture 9
//						cout << "Label 9, Number three to close" << ", bestLoglikelihood: " << bestLoglikelihood << endl;
//					}
//					else if (predictedClassLabel == 10) {
//						//Trigger the action associated with gesture 10
//						cout << "Label 10, Amituofo" << ", bestLoglikelihood: " << bestLoglikelihood << endl;
//					}
//					else {
//						cout << "Gesture Not Recognized (really not)" << endl;
//					}
//				}
//				else {
//					inputFeatureVector.setRowVector(featureVector, i);
//					i++;
//					cout << "Gesture Not Recognized (fake)" << endl;
//				}
//			}
//			else {// The hand has not obvious movement
//				cout << "Hand detected but not moving" << endl;
//			}
//		} //Finishes the processing of a frame (feature extraction and prediction with pipeline)
//		else {// If there is no hand detected by Leap Motion
//			cout << "No hands detected!" << endl;
//		}
//		//usleep(10000); // grabs a frame every 10 ms
//
//	}	//Finishes when !controller.isServiceConnected()
//
//
//	std::system("pause");
//	return EXIT_SUCCESS;
//}