/* 
To install GLUT, open terminal and type 
sudo apt-get install freeglut3-dev.
Here is a simple graphics program using GLUT
*/
/*  demo.c */
#include <GL/gl.h>
#include <GL/glut.h>
#include <GL/glu.h>

void setup() {   glClearColor(1.0f, 1.0f, 1.0f, 1.0f); }

void display()
   {
      glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
      glColor3f(0.0f, 0.0f, 0.0f);
      glRectf(-0.75f,0.75f, 0.75f, -0.75f);
      glutSwapBuffers();
   }

int main(int argc, char *argv[])
  {
     glutInit(&argc, argv);
     glutInitDisplayMode(GLUT_RGB | GLUT_DEPTH | GLUT_DOUBLE);
     glutInitWindowSize(800,600);
     glutCreateWindow("Hello World");

     setup();
     glutDisplayFunc(display);
     glutMainLoop();
     return 0;
  }
/*
Compile it using

gcc demoGL.c -o demoGL -lglut -lGL

Run it using

./demo

*/
