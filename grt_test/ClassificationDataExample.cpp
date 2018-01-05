//You might need to set the specific path of the GRT header relative to your project
#include <GRT.h>
#include "Leap.h"

using namespace GRT;
using namespace std;

//const std::string fingerNames[] = { "Thumb", "Index", "Middle", "Ring", "Pinky" };
//const std::string boneNames[] = { "Metacarpal", "Proximal", "Middle", "Distal" };
//
//int main (int argc, const char * argv[])
//{
//
//    //Create a new instance of the ClassificationData
//    ClassificationData trainingData;
//    
//    //Set the dimensionality of the data (you need to do this before you can add any samples)
//    trainingData.setNumDimensions( 9 );
//    
//    //You can also give the dataset a name (the name should have no spaces)
//    trainingData.setDatasetName("StaticPostures");
//    
//    //You can also add some info text about the data
//    trainingData.setInfoText("This training data consists of 1-9 numbers and 26 letters based on American Sign Language (ASL). \
//							  It contains the extracted features for static hand posture recognition, \
//                              including the distance between each fingertip and the palm center, as well as the distance between two adjacent fingers");
//    
//    //Here you would grab some data from your sensor and label it with the corresponding gesture it belongs to
//    UINT gestureLabel = 1;
//	
//	Leap::Controller controller;
//	
//	controller.setPolicy(Leap::Controller::POLICY_ALLOW_PAUSE_RESUME);
//	//std::cout << "Press Enter to quit, or enter 'p' to pause or unpause the service..." << std::endl;
//	//bool paused = false;
//	
//	// Initialize the sample vector
//	VectorFloat sample(trainingData.getNumDimensions(), 0);
//	
//	for (UINT k = 0; k < 10; ++k) {// For the number of gestures
//		gestureLabel = k + 1;
//		std::cout << "-------------------------NEW GESTURE---------------------------" << endl;
//	
//		for (UINT x = 0; x < 10; ++x) {// Generate 10 samples for current gesture.
//			std::cout << "Record the No." << x + 1 << " sample for posture label " << gestureLabel << " , Press Enter to Continue...";
//			std::cin.ignore();
//	
//			// Clear any previous dynamic memories and reset total distance
//			//sample.clear();
//			VectorFloat tempSample(trainingData.getNumDimensions(), 0);
//			int framesPerSample = 20;// The number of frames to be recorded per sample for one gesture
//
//			while (framesPerSample--) {	
//				const Leap::Frame frame = controller.frame();//Get the current frame
//				// Basic information
//				std::cout << "Frame id: " << frame.id() << ", timestamp: " << frame.timestamp() << ", hands: " << frame.hands().count() << ", extended fingers: " << frame.fingers().extended().count() << std::endl;
//				
//				const Leap::Hand hand = frame.hands()[0];//Only get the first hand
//				std::string handType = hand.isLeft() ? "Left hand" : "Right hand";
//				std::cout << std::string(2, ' ') << handType << ", id: " << hand.id() << ", palm position: " << hand.palmPosition() << std::endl;
//				// Get the hand's normal vector and direction
//				const Leap::Vector normal = hand.palmNormal();
//				//const Leap::Vector direction = hand.direction();
//				const Leap::Vector palmPosition = hand.palmPosition();
//				
//				// Get fingers object, Thumb, Index, Middle, Ring, and Pinky
//				const Leap::FingerList fingers = hand.fingers();
//				const Leap::Finger Thumb = fingers[0];
//				const Leap::Finger Index = fingers[1];
//				const Leap::Finger Middle = fingers[2];
//				const Leap::Finger Ring = fingers[3];
//				const Leap::Finger Pinky = fingers[4];
//				int index = 0;
//
//				// The distance between palm position to fingertip position for each finger (5 dimensions)
//				// From thumb to pinky
//				for (Leap::FingerList::const_iterator fl = fingers.begin(); fl != fingers.end(); ++fl) {
//					const Leap::Finger finger = *fl;// Get the finger object
//					//Print some informaion
//					std::cout << std::string(4, ' ') << fingerNames[finger.type()] <<
//						" finger, fingertip position: " << finger.tipPosition() << std::endl;
//					
//					// Calculate the distance of current finger's tip position to palm's
//					float distance = palmPosition.distanceTo(finger.tipPosition());
//					tempSample[index] += distance;
//					std::cout << "current finger is: " <<index << ", distance is: " << distance << endl;
//					index++;
//				}
//
//				// The distance between two adjacent fingers, in order of thumb to pinky
//				tempSample[5] += Thumb.tipPosition().distanceTo(Index.tipPosition());
//				tempSample[6] += Index.tipPosition().distanceTo(Middle.tipPosition());
//				tempSample[7] += Middle.tipPosition().distanceTo(Ring.tipPosition());
//				tempSample[8] += Ring.tipPosition().distanceTo(Pinky.tipPosition());
//
//				if (!frame.hands().isEmpty()) {
//					std::cout << std::endl;
//				}
//			}
//			
//			for (UINT i = 0; i < sample.size(); i++) {
//				cout << tempSample[i] << " ";
//				sample[i] = tempSample[i] / 20;
//				cout << sample[i] << " ";
//			}
//			cout << endl;
//			//system("pause"); // pause point to see the print
//			//Add the training sample to the dataset
//			trainingData.addSample(gestureLabel, sample);
//	
//		}
//	}
//    
//
//
//
//
//
//
//
//    //After recording your training data you can then save it to a file
//    if( !trainingData.save( "TrainingData.grt" ) ){
//        std::cout << "ERROR: Failed to save dataset to file!\n";
//        return EXIT_FAILURE;
//    }
//    
//    //This can then be loaded later
//    if( !trainingData.load( "TrainingData.grt" ) ){
//		std::cout << "ERROR: Failed to load dataset from file!\n";
//        return EXIT_FAILURE;
//    }
//    
//    //You can also save and load the training data to a CSV file
//    //Each row will contain a sample, with the first column containing the class label and the remaining columns containing the data
//    if( !trainingData.save( "TrainingData.csv" ) ){
//		std::cout << "ERROR: Failed to save dataset to csv file!\n";
//        return EXIT_FAILURE;
//    }
//    
//    //The data structure will automatically detect the csv extension and parse the file accordingly
//    if( !trainingData.load( "TrainingData.csv" ) ){
//		std::cout << "ERROR: Failed to load dataset from csv file!\n";
//        return EXIT_FAILURE;
//    }
//    
//    //This is how you can get some stats from the training data
//    string datasetName = trainingData.getDatasetName();
//    string infoText = trainingData.getInfoText();
//    UINT numSamples = trainingData.getNumSamples();
//    UINT numDimensions = trainingData.getNumDimensions();
//    UINT numClasses = trainingData.getNumClasses();
//    
//	std::cout << "Dataset Name: " << datasetName << endl;
//	std::cout << "InfoText: " << infoText << endl;
//	std::cout << "NumberOfSamples: " << numSamples << endl;
//	std::cout << "NumberOfDimensions: " << numDimensions << endl;
//	std::cout << "NumberOfClasses: " << numClasses << endl;
//    
//    //You can also get the minimum and maximum ranges of the data
//    GRT::Vector< MinMax > ranges = trainingData.getRanges();
//    
//	std::cout << "The ranges of the dataset are: \n";
//    for(UINT j=0; j<ranges.size(); j++){
//		std::cout << "Dimension: " << j << " Min: " << ranges[j].minValue << " Max: " << ranges[j].maxValue << endl;
//    }
//    
//    //If you want to split the dataset into a training dataset and a test dataset then you can use the split function
//    //A value of 80 means that 80% of the original data will remain in the training dataset and 20% will be returned as the test dataset
//    ClassificationData testData = trainingData.split( 80 );
//    
//    //If you have multiple datasets that you want to merge together then use the merge function
//    if( !trainingData.merge( testData ) ){
//		std::cout << "ERROR: Failed to save merge datasets!\n";
//        return EXIT_FAILURE;
//    }
//    
//    //If you want to run K-Fold cross validation using the dataset then you should first spilt the dataset into K-Folds
//    //A value of 10 splits the dataset into 10 folds and the true parameter signals that stratified sampling should be used
//    if( !trainingData.spiltDataIntoKFolds( 10, true ) ){
//		std::cout << "ERROR: Failed to spiltDataIntoKFolds!\n";
//        return EXIT_FAILURE;
//    }
//    
//    //After you have called the spilt function you can then get the training and test sets for each fold
//    for(UINT foldIndex=0; foldIndex<10; foldIndex++){
//        ClassificationData foldTrainingData = trainingData.getTrainingFoldData( foldIndex );
//        ClassificationData foldTestingData = trainingData.getTestFoldData( foldIndex );
//    }
//    
//    //If need you can clear any training data that you have recorded
//    trainingData.clear();
//    
//	std::system("pause");
//    return EXIT_SUCCESS;
//}

