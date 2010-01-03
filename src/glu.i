%module glu

%{
#include <GL/glu.h>
%}

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

%include <GL/glu.h>

%goops %{
(eval-when (eval load compile)
  (load-extension "libguile_opengl_glu.so" "scm_init_opengl_glu_module"))%}


