////////////////////////////////////////////////////////////
// Cube for Tom Biela
// Renders a 3D cube defined by it's uvw values
// Author Matthias Jaeger
// MIT - Graz, 2019, 

// 0. Starting the program
void setup() 
{
  // 1. Define the size of the drawing 
  // 2. Add the processing 3D rendering context
  size(500, 500, P3D);

  // 3. Define the center of the drawing
  float xCenter = width  * 0.5f;
  float yCenter = height * 0.5f;
  float zCenter = 0.0f;

  // 4. Move the pen to the defined center
  translate(xCenter, yCenter, zCenter);

  // 5. Define the side-length of our cube
  float cubeSide = 200.0f;

  // 6. Call the cube function
  noFill();
  stroke(255, 0, 0);
  box(cubeSide, cubeSide, cubeSide);

  // 7. Define the number of cell in the cube (uvw)
  int cubeU = 3;
  int cubeV = 3;
  int cubeW = 3;

  // 7. Define the scale of a single cell
  float cellWidth = cubeSide / cubeU;
  float cellHeight = cubeSide / cubeV;
  float cellDepth = cubeSide / cubeW;

  stroke(0, 0, 255);

  pushMatrix();
  translate(-cellWidth/2, -cellWidth/2, cellWidth/2);
  for (int u = 0; u < cubeU; u++) 
  {
    for (int v = 0; v < cubeV; v++) 
    {
      for (int w = 0; w < cubeW; w++) 
      {
        float x = u * cellWidth;
        float y = v * cellHeight;
        float z = w * cellDepth;
        pushMatrix();
        translate(x, y, z);
        box(cellWidth, cellHeight, cellDepth);
        popMatrix();
      }
    }
  }
  popMatrix();
}
// 8. Ending the program
