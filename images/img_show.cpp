// C++ program for the above approach
#include <iostream>
#include <opencv2/opencv.hpp>
using namespace cv;
using namespace std;

// Driver code
int main(int argc, char** argv)
{
	// Read the image file as
	// imread("default.jpg");
	Mat image = imread("Enter the Address"
					"of Input Image",
					IMREAD_GRAYSCALE);

	// Error Handling
	if (image.empty()) {
		cout << "Image File "
			<< "Not Found" << endl;

		// wait for any key press
		cin.get();
		return -1;
	}

	// Show Image inside a window with
	// the name provided
	imshow("Window Name", image);

	// Wait for any keystroke
	waitKey(0);
	return 0;
}
