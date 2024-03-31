/// Screen Size
//Screen size without safe area
double height = 0;
double width = 0;

//full screen size with safe area
double heightAvailable = 0;
double widthAvailable = 0;

//this function will set up the full screen size
void fullScreensize(double h, double w) {
  // if (heightAvailable == 0 && widthAvailable == 0) {
  height = h;

  width = w;
  // }
}

// set up available screen size
void sizeOfscreen(double h, double w) {
  // if (heightAvailable == 0 && widthAvailable == 0) {
  heightAvailable = h;
  widthAvailable = w;
  // }
}