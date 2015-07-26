#include <cstdio>
#include <opencv2/core/core.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

int main(int argc, char *argv[])
{
	if (argc < 3) {
		printf("usage: %s <input> <output>\n", argv[0]);
		return 0;
	}

	cv::Mat src_img = cv::imread(argv[1]);
	cv::Mat dst_img;

	cv::flip(src_img, dst_img, 0); /* Vertical flip */

	cv::imwrite(argv[2], dst_img);

	return 0;
}

