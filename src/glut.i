%module glut

%{
#include <GL/freeglut_std.h>
#include <GL/freeglut_ext.h>
#include <GL/freeglut.h>
#include <GL/glut.h>
%}

%include "help.i"

/*
%typemap(in) (int* pargc, char **argv) {
  int i;
  SCM *v;
  if (!(SCM_NIMP($input) && SCM_VECTORP($input))) {
    SWIG_exception(SWIG_ArgError(), "Expecting a vector");
    return;
  }
  $1 = SCM_LENGTH($input);
  if ($1 == 0) {
    SWIG_exception(SWIG_ArgError(),"Vector must contain at least 1 element");
  }
  $2 = (char **) malloc(($1+1)*sizeof(char *));
  v = SCM_VELTS($input);
  for (i = 0; i < $1; i++) {
    if (!(SCM_NIMP(v[i]) && SCM_STRINGP(v[i]))) {
      free($2);
      SWIG_exception(SWIG_ArgError(), "Vector items must be strings");
      return;
    }
    $2[i] = SCM_CHARS(v[i]);
  }
  $2[i] = 0;
}

%typemap(freearg) (int* pargc, char *argv[]) {
   free($2);
}
*/


typedef unsigned int    GLenum;
typedef unsigned char   GLboolean;
typedef unsigned int    GLbitfield;
typedef void            GLvoid;
typedef signed char     GLbyte; 
typedef short           GLshort;
typedef int             GLint;
typedef unsigned char   GLubyte;
typedef unsigned short  GLushort;
typedef unsigned int    GLuint;
typedef int             GLsizei;
typedef float           GLfloat;
typedef float           GLclampf;
typedef double          GLdouble;
typedef double          GLclampd;


%include <GL/freeglut_std.h>
%include <GL/freeglut_ext.h>
%include <GL/freeglut.h>
%include <GL/glut.h>

%goops %{ 
(eval-when (eval load compile)
  (load-extension "libguile_opengl_glut.so" "scm_init_opengl_glut_module"))%}


