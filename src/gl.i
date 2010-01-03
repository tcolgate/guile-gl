%module gl

%{
#include <GL/gl.h>
#include <GL/glext.h>
%}

%ignore glProgramCallbackMESA;
%ignore glGetProgramRegisterfvMESA;
%ignore glBlendEquationSeparateATI;

%include <GL/gl.h>
%include <GL/glext.h>

%goops %{ 
(eval-when (eval load compile)
  (load-extension "libguile_opengl_gl.so" "scm_init_opengl_gl_module"))%}


