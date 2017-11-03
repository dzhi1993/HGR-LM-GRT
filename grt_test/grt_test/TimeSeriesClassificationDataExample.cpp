/*
 GRT MIT License
 Copyright (c) <2012> <Nicholas Gillian, Media Lab, MIT>
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software 
 and associated documentation files (the "Software"), to deal in the Software without restriction, 
 including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, 
 and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, 
 subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial 
 portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT 
 LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
 IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, 
 WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
 SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

//You might need to set the specific path of the GRT header relative to your project

// There are totally 63 dimensions will be used, including the hand's pitch, roll and yaw angles, arm's 
#include <GRT.h>
#include "LMListener.h"

using namespace GRT;
using namespace std;

/*int main(int argc, const char * argv[])
{
	//Create a new instance of the TimeSeriesClassificationData
	TimeSeriesClassificationData trainingData;

	//Set the dimensionality of the data (you need to do this before you can add any samples)
	trainingData.setNumDimensions(66);

	//You can also give the dataset a name (the name should have no spaces)
	trainingData.setDatasetName("Gesture_Definition");

	//You can also add some info text about the data
	trainingData.setInfoText("This data contains some basic gesture definition. There are 10 training sample time series per gesture");

	//Here you would record a time series, when you have finished recording the time series then add the training sample to the training data
	UINT gestureLabel;
	MatrixFloat trainingSample;

	//For now we will just add 10 x 20 random walk data timeseries

	//Random random;
	//TODO: At here we need to use real-time data from leap motion sensor.

	//Create a sample listener and controller
	SampleListener listener;
	Controller controller;

	controller.setPolicy(Leap::Controller::POLICY_ALLOW_PAUSE_RESUME);
	//std::cout << "Press Enter to quit, or enter 'p' to pause or unpause the service..." << std::endl;
	//bool paused = false;

	// Initialize the sample vector
	VectorFloat sample(trainingData.getNumDimensions());

	for (UINT k = 0; k < 10; ++k) {// For the number of classes
		gestureLabel = k + 1;
		std::cout << "-------------------------NEW GESTURE---------------------------" << endl;

		for (UINT x = 0; x < 10; ++x) {// Generate 10 time series for current gesture.
			std::cout << "Record the No." << x + 1 << " time series for gesture label " << gestureLabel << " , Press Enter to Continue...";
			cin.ignore();

			// Clear any previous dynamic memories
			trainingSample.clear();

			int frames_record = 50;// The number of frames to be recorded per time series for one gesture
			while (frames_record--) {

				const Frame frame = controller.frame();
				// Basic information
				std::cout << "Frame id: " << frame.id() << ", timestamp: " << frame.timestamp() << ", hands: " << frame.hands().count() << ", extended fingers: " << frame.fingers().extended().count() << std::endl;

				HandList hands = frame.hands();
				for (HandList::const_iterator hl = hands.begin(); hl != hands.end(); ++hl) {
					// Get the first hand
					const Hand hand = *hl;
					std::string handType = hand.isLeft() ? "Left hand" : "Right hand";
					std::cout << std::string(2, ' ') << handType << ", id: " << hand.id() << ", palm position: " << hand.palmPosition() << std::endl;
					// Get the hand's normal vector and direction
					const Leap::Vector normal = hand.palmNormal();
					const Leap::Vector direction = hand.direction();

					// Calculate the hand's pitch, roll, and yaw angles, stored as sample[0] = pitch, sample[1] = roll, sample[2] = yaw angles
					std::cout << std::string(2, ' ') << "pitch: " << direction.pitch() * RAD_TO_DEG << " degrees, " << "roll: " << normal.roll() * RAD_TO_DEG << " degrees, " << "yaw: " << direction.yaw() * RAD_TO_DEG << " degrees" << std::endl;
					sample[0] = direction.pitch() * RAD_TO_DEG;
					sample[1] = normal.roll() * RAD_TO_DEG;
					sample[2] = direction.yaw() * RAD_TO_DEG;

					// Should we have really need the arm's position and directions?
					// Get the Arm bone
					Arm arm = hand.arm();
					std::cout << std::string(2, ' ') << "Arm direction: " << arm.direction() << " wrist position: " << arm.wristPosition() << " elbow position: " << arm.elbowPosition() << std::endl;
					sample[3] = arm.direction()[0];
					sample[4] = arm.direction()[1];
					sample[5] = arm.direction()[2];
					int currIndex = 5;

					// Get fingers, including the fingers position and directions using a 2d vectors representing the finger list
					const FingerList fingers = hand.fingers();
					for (FingerList::const_iterator fl = fingers.begin(); fl != fingers.end(); ++fl) {

						const Finger finger = *fl;
						std::cout << std::string(4, ' ') << fingerNames[finger.type()] << " finger, id: " << finger.id() << ", length: " << finger.length() << "mm, width: " << finger.width() << std::endl;

						// Get finger bones, Get the finger options 
						for (int b = 0; b < 4; ++b) {
							Bone::Type boneType = static_cast<Bone::Type>(b);
							Bone bone = finger.bone(boneType);
							std::cout << std::string(6, ' ') << boneNames[boneType] << " bone, start: " << bone.prevJoint() << ", end: " << bone.nextJoint() << ", direction: " << bone.direction() << std::endl;
							sample[++currIndex] = bone.direction()[0];
							sample[++currIndex] = bone.direction()[1];
							sample[++currIndex] = bone.direction()[2];
						}
					}
				}

				if (!frame.hands().isEmpty()) {
					std::cout << std::endl;
				}

				//Add the sample to the training sample
				trainingSample.push_back(sample);

			}

			//system("pause"); // pause point to see the print
			//Add the training sample to the dataset
			trainingData.addSample(gestureLabel, trainingSample);

		}
	}
    
    //After recording your training data you can then save it to a file
    if( !trainingData.save( "TrainingData.grt" ) ){
	    std::cout << "Failed to save dataset to file!\n";
	    return EXIT_FAILURE;
	}
    
    //This can then be loaded later
    if( !trainingData.load( "TrainingData.grt" ) ){
		std::cout << "Failed to load dataset from file!\n";
		return EXIT_FAILURE;
	}
    
    //This is how you can get some stats from the training data
    string datasetName = trainingData.getDatasetName();
    string infoText = trainingData.getInfoText();
    UINT numSamples = trainingData.getNumSamples();
    UINT numDimensions = trainingData.getNumDimensions();
    UINT numClasses = trainingData.getNumClasses();
    
    std::cout << "Dataset Name: " << datasetName << endl;
    std::cout << "InfoText: " << infoText << endl;
    std::cout << "NumberOfSamples: " << numSamples << endl;
    std::cout << "NumberOfDimensions: " << numDimensions << endl;
    std::cout << "NumberOfClasses: " << numClasses << endl;
    
    //You can also get the minimum and maximum ranges of the data
    GRT::Vector< MinMax > ranges = trainingData.getRanges();
    
    std::cout << "The ranges of the dataset are: \n";
    for(UINT j=0; j<ranges.size(); j++){
        std::cout << "Dimension: " << j << " Min: " << ranges[j].minValue << " Max: " << ranges[j].maxValue << endl;
    }
    
    //If you want to split the dataset into a training dataset and a test dataset then you can use the split function
    //A value of 80 means that 80% of the original data will remain in the training dataset and 20% will be returned as the test dataset
    TimeSeriesClassificationData testData = trainingData.split( 80 );
    
    //If you have multiple datasets that you want to merge together then use the merge function
    if( !trainingData.merge( testData ) ){
		std::cout << "Failed to merge datasets!\n";
		return EXIT_FAILURE;
	}
    
    //If you want to run K-Fold cross validation using the dataset then you should first spilt the dataset into K-Folds
    //A value of 10 splits the dataset into 10 folds and the true parameter signals that stratified sampling should be used
    if( !trainingData.spiltDataIntoKFolds( 10, true ) ){
		std::cout << "Failed to spiltDataIntoKFolds!\n";
		return EXIT_FAILURE;
	}
    
    //After you have called the spilt function you can then get the training and test sets for each fold
    for(UINT foldIndex=0; foldIndex<10; foldIndex++){
        TimeSeriesClassificationData foldTrainingData = trainingData.getTrainingFoldData( foldIndex );
        TimeSeriesClassificationData foldTestingData = trainingData.getTestFoldData( foldIndex );
    }
    
    //If need you can clear any training data that you have recorded
    trainingData.clear();
    
	std::system("pause");
    return EXIT_SUCCESS;
}*/
