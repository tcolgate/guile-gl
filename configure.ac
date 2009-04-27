# -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

#AC_PREREQ(2.63)
AC_INIT([guile-gl],[0.1],[tcolgate@gmail.com])

# Checks for programs.
AC_PROG_CC
AC_PROG_LIBTOOL
AC_PROG_SWIG
AM_INIT_AUTOMAKE
PKG_CHECK_MODULES(FFI,libffi)
AC_SUBST(FFI_CFLAGS)
AC_SUBST(FFI_LIBS)
AC_CONFIG_HEADER(config.h)
GUILE_PROGS
GUILE_FLAGS
GUILE_SITE_DIR

# Checks for libraries.
# FIXME: Replace `main' with a function in `-lGL':
AC_CHECK_LIB([GL], [glLoadIdentity])
# FIXME: Replace `main' with a function in `-lGLU':
AC_CHECK_LIB([GLU], [gluCylinder])
# FIXME: Replace `main' with a function in `-lglut':
AC_CHECK_LIB([glut], [glutInit])

# Checks for header files.

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.

AC_CONFIG_FILES([Makefile])
AC_CONFIG_FILES([src/Makefile])
AC_OUTPUT

