;;; -*- buffer-read-only: t -*- vi: set ro: */
;;; Automatically generated by SWIG; do not edit.

(define-module (opengl glut))
 (load-extension "libguile_opengl_glut.so" "scm_init_opengl_glut_module")

(use-modules (oop goops) (Swig common))
(use-modules ((opengl glut-primitive) :renamer (symbol-prefix-proc 'primitive:)))
(define TrampolineVoid primitive:TrampolineVoid)
(define TrampolineInt primitive:TrampolineInt)
(define TrampolineIntInt primitive:TrampolineIntInt)
(define TrampolineIntIntInt primitive:TrampolineIntIntInt)
(define TrampolineUCharIntInt primitive:TrampolineUCharIntInt)
(define TrampolineIntIntIntInt primitive:TrampolineIntIntIntInt)
(define TrampolineUIntIntIntInt primitive:TrampolineUIntIntIntInt)
(define MakeSCMCallback-V-V primitive:MakeSCMCallback-V-V)
(define MakeSCMCallback-V-I primitive:MakeSCMCallback-V-I)
(define MakeSCMCallback-V-II primitive:MakeSCMCallback-V-II)
(define MakeSCMCallback-V-III primitive:MakeSCMCallback-V-III)
(define MakeSCMCallback-V-CII primitive:MakeSCMCallback-V-CII)
(define MakeSCMCallback-V-IIII primitive:MakeSCMCallback-V-IIII)
(define MakeSCMCallback-V-UIII primitive:MakeSCMCallback-V-UIII)
(define newintv1 primitive:newintv1)
(define newstrv1 primitive:newstrv1)
(define newfv4 primitive:newfv4)
(define newfv primitive:newfv)
(define setfv4 primitive:setfv4)
(define FREEGLUT primitive:FREEGLUT)
(define GLUT-API-VERSION primitive:GLUT-API-VERSION)
(define FREEGLUT-VERSION-2-0 primitive:FREEGLUT-VERSION-2-0)
(define GLUT-XLIB-IMPLEMENTATION primitive:GLUT-XLIB-IMPLEMENTATION)
(define GLUT-KEY-F1 primitive:GLUT-KEY-F1)
(define GLUT-KEY-F2 primitive:GLUT-KEY-F2)
(define GLUT-KEY-F3 primitive:GLUT-KEY-F3)
(define GLUT-KEY-F4 primitive:GLUT-KEY-F4)
(define GLUT-KEY-F5 primitive:GLUT-KEY-F5)
(define GLUT-KEY-F6 primitive:GLUT-KEY-F6)
(define GLUT-KEY-F7 primitive:GLUT-KEY-F7)
(define GLUT-KEY-F8 primitive:GLUT-KEY-F8)
(define GLUT-KEY-F9 primitive:GLUT-KEY-F9)
(define GLUT-KEY-F10 primitive:GLUT-KEY-F10)
(define GLUT-KEY-F11 primitive:GLUT-KEY-F11)
(define GLUT-KEY-F12 primitive:GLUT-KEY-F12)
(define GLUT-KEY-LEFT primitive:GLUT-KEY-LEFT)
(define GLUT-KEY-UP primitive:GLUT-KEY-UP)
(define GLUT-KEY-RIGHT primitive:GLUT-KEY-RIGHT)
(define GLUT-KEY-DOWN primitive:GLUT-KEY-DOWN)
(define GLUT-KEY-PAGE-UP primitive:GLUT-KEY-PAGE-UP)
(define GLUT-KEY-PAGE-DOWN primitive:GLUT-KEY-PAGE-DOWN)
(define GLUT-KEY-HOME primitive:GLUT-KEY-HOME)
(define GLUT-KEY-END primitive:GLUT-KEY-END)
(define GLUT-KEY-INSERT primitive:GLUT-KEY-INSERT)
(define GLUT-LEFT-BUTTON primitive:GLUT-LEFT-BUTTON)
(define GLUT-MIDDLE-BUTTON primitive:GLUT-MIDDLE-BUTTON)
(define GLUT-RIGHT-BUTTON primitive:GLUT-RIGHT-BUTTON)
(define GLUT-DOWN primitive:GLUT-DOWN)
(define GLUT-UP primitive:GLUT-UP)
(define GLUT-LEFT primitive:GLUT-LEFT)
(define GLUT-ENTERED primitive:GLUT-ENTERED)
(define GLUT-RGB primitive:GLUT-RGB)
(define GLUT-RGBA primitive:GLUT-RGBA)
(define GLUT-INDEX primitive:GLUT-INDEX)
(define GLUT-SINGLE primitive:GLUT-SINGLE)
(define GLUT-DOUBLE primitive:GLUT-DOUBLE)
(define GLUT-ACCUM primitive:GLUT-ACCUM)
(define GLUT-ALPHA primitive:GLUT-ALPHA)
(define GLUT-DEPTH primitive:GLUT-DEPTH)
(define GLUT-STENCIL primitive:GLUT-STENCIL)
(define GLUT-MULTISAMPLE primitive:GLUT-MULTISAMPLE)
(define GLUT-STEREO primitive:GLUT-STEREO)
(define GLUT-LUMINANCE primitive:GLUT-LUMINANCE)
(define GLUT-MENU-NOT-IN-USE primitive:GLUT-MENU-NOT-IN-USE)
(define GLUT-MENU-IN-USE primitive:GLUT-MENU-IN-USE)
(define GLUT-NOT-VISIBLE primitive:GLUT-NOT-VISIBLE)
(define GLUT-VISIBLE primitive:GLUT-VISIBLE)
(define GLUT-HIDDEN primitive:GLUT-HIDDEN)
(define GLUT-FULLY-RETAINED primitive:GLUT-FULLY-RETAINED)
(define GLUT-PARTIALLY-RETAINED primitive:GLUT-PARTIALLY-RETAINED)
(define GLUT-FULLY-COVERED primitive:GLUT-FULLY-COVERED)
(define glutStrokeRoman primitive:glutStrokeRoman)
(define glutStrokeMonoRoman primitive:glutStrokeMonoRoman)
(define glutBitmap9By15 primitive:glutBitmap9By15)
(define glutBitmap8By13 primitive:glutBitmap8By13)
(define glutBitmapTimesRoman10 primitive:glutBitmapTimesRoman10)
(define glutBitmapTimesRoman24 primitive:glutBitmapTimesRoman24)
(define glutBitmapHelvetica10 primitive:glutBitmapHelvetica10)
(define glutBitmapHelvetica12 primitive:glutBitmapHelvetica12)
(define glutBitmapHelvetica18 primitive:glutBitmapHelvetica18)
(define GLUT-WINDOW-X primitive:GLUT-WINDOW-X)
(define GLUT-WINDOW-Y primitive:GLUT-WINDOW-Y)
(define GLUT-WINDOW-WIDTH primitive:GLUT-WINDOW-WIDTH)
(define GLUT-WINDOW-HEIGHT primitive:GLUT-WINDOW-HEIGHT)
(define GLUT-WINDOW-BUFFER-SIZE primitive:GLUT-WINDOW-BUFFER-SIZE)
(define GLUT-WINDOW-STENCIL-SIZE primitive:GLUT-WINDOW-STENCIL-SIZE)
(define GLUT-WINDOW-DEPTH-SIZE primitive:GLUT-WINDOW-DEPTH-SIZE)
(define GLUT-WINDOW-RED-SIZE primitive:GLUT-WINDOW-RED-SIZE)
(define GLUT-WINDOW-GREEN-SIZE primitive:GLUT-WINDOW-GREEN-SIZE)
(define GLUT-WINDOW-BLUE-SIZE primitive:GLUT-WINDOW-BLUE-SIZE)
(define GLUT-WINDOW-ALPHA-SIZE primitive:GLUT-WINDOW-ALPHA-SIZE)
(define GLUT-WINDOW-ACCUM-RED-SIZE primitive:GLUT-WINDOW-ACCUM-RED-SIZE)
(define GLUT-WINDOW-ACCUM-GREEN-SIZE primitive:GLUT-WINDOW-ACCUM-GREEN-SIZE)
(define GLUT-WINDOW-ACCUM-BLUE-SIZE primitive:GLUT-WINDOW-ACCUM-BLUE-SIZE)
(define GLUT-WINDOW-ACCUM-ALPHA-SIZE primitive:GLUT-WINDOW-ACCUM-ALPHA-SIZE)
(define GLUT-WINDOW-DOUBLEBUFFER primitive:GLUT-WINDOW-DOUBLEBUFFER)
(define GLUT-WINDOW-RGBA primitive:GLUT-WINDOW-RGBA)
(define GLUT-WINDOW-PARENT primitive:GLUT-WINDOW-PARENT)
(define GLUT-WINDOW-NUM-CHILDREN primitive:GLUT-WINDOW-NUM-CHILDREN)
(define GLUT-WINDOW-COLORMAP-SIZE primitive:GLUT-WINDOW-COLORMAP-SIZE)
(define GLUT-WINDOW-NUM-SAMPLES primitive:GLUT-WINDOW-NUM-SAMPLES)
(define GLUT-WINDOW-STEREO primitive:GLUT-WINDOW-STEREO)
(define GLUT-WINDOW-CURSOR primitive:GLUT-WINDOW-CURSOR)
(define GLUT-SCREEN-WIDTH primitive:GLUT-SCREEN-WIDTH)
(define GLUT-SCREEN-HEIGHT primitive:GLUT-SCREEN-HEIGHT)
(define GLUT-SCREEN-WIDTH-MM primitive:GLUT-SCREEN-WIDTH-MM)
(define GLUT-SCREEN-HEIGHT-MM primitive:GLUT-SCREEN-HEIGHT-MM)
(define GLUT-MENU-NUM-ITEMS primitive:GLUT-MENU-NUM-ITEMS)
(define GLUT-DISPLAY-MODE-POSSIBLE primitive:GLUT-DISPLAY-MODE-POSSIBLE)
(define GLUT-INIT-WINDOW-X primitive:GLUT-INIT-WINDOW-X)
(define GLUT-INIT-WINDOW-Y primitive:GLUT-INIT-WINDOW-Y)
(define GLUT-INIT-WINDOW-WIDTH primitive:GLUT-INIT-WINDOW-WIDTH)
(define GLUT-INIT-WINDOW-HEIGHT primitive:GLUT-INIT-WINDOW-HEIGHT)
(define GLUT-INIT-DISPLAY-MODE primitive:GLUT-INIT-DISPLAY-MODE)
(define GLUT-ELAPSED-TIME primitive:GLUT-ELAPSED-TIME)
(define GLUT-WINDOW-FORMAT-ID primitive:GLUT-WINDOW-FORMAT-ID)
(define GLUT-INIT-STATE primitive:GLUT-INIT-STATE)
(define GLUT-HAS-KEYBOARD primitive:GLUT-HAS-KEYBOARD)
(define GLUT-HAS-MOUSE primitive:GLUT-HAS-MOUSE)
(define GLUT-HAS-SPACEBALL primitive:GLUT-HAS-SPACEBALL)
(define GLUT-HAS-DIAL-AND-BUTTON-BOX primitive:GLUT-HAS-DIAL-AND-BUTTON-BOX)
(define GLUT-HAS-TABLET primitive:GLUT-HAS-TABLET)
(define GLUT-NUM-MOUSE-BUTTONS primitive:GLUT-NUM-MOUSE-BUTTONS)
(define GLUT-NUM-SPACEBALL-BUTTONS primitive:GLUT-NUM-SPACEBALL-BUTTONS)
(define GLUT-NUM-BUTTON-BOX-BUTTONS primitive:GLUT-NUM-BUTTON-BOX-BUTTONS)
(define GLUT-NUM-DIALS primitive:GLUT-NUM-DIALS)
(define GLUT-NUM-TABLET-BUTTONS primitive:GLUT-NUM-TABLET-BUTTONS)
(define GLUT-DEVICE-IGNORE-KEY-REPEAT primitive:GLUT-DEVICE-IGNORE-KEY-REPEAT)
(define GLUT-DEVICE-KEY-REPEAT primitive:GLUT-DEVICE-KEY-REPEAT)
(define GLUT-HAS-JOYSTICK primitive:GLUT-HAS-JOYSTICK)
(define GLUT-OWNS-JOYSTICK primitive:GLUT-OWNS-JOYSTICK)
(define GLUT-JOYSTICK-BUTTONS primitive:GLUT-JOYSTICK-BUTTONS)
(define GLUT-JOYSTICK-AXES primitive:GLUT-JOYSTICK-AXES)
(define GLUT-JOYSTICK-POLL-RATE primitive:GLUT-JOYSTICK-POLL-RATE)
(define GLUT-OVERLAY-POSSIBLE primitive:GLUT-OVERLAY-POSSIBLE)
(define GLUT-LAYER-IN-USE primitive:GLUT-LAYER-IN-USE)
(define GLUT-HAS-OVERLAY primitive:GLUT-HAS-OVERLAY)
(define GLUT-TRANSPARENT-INDEX primitive:GLUT-TRANSPARENT-INDEX)
(define GLUT-NORMAL-DAMAGED primitive:GLUT-NORMAL-DAMAGED)
(define GLUT-OVERLAY-DAMAGED primitive:GLUT-OVERLAY-DAMAGED)
(define GLUT-VIDEO-RESIZE-POSSIBLE primitive:GLUT-VIDEO-RESIZE-POSSIBLE)
(define GLUT-VIDEO-RESIZE-IN-USE primitive:GLUT-VIDEO-RESIZE-IN-USE)
(define GLUT-VIDEO-RESIZE-X-DELTA primitive:GLUT-VIDEO-RESIZE-X-DELTA)
(define GLUT-VIDEO-RESIZE-Y-DELTA primitive:GLUT-VIDEO-RESIZE-Y-DELTA)
(define GLUT-VIDEO-RESIZE-WIDTH-DELTA primitive:GLUT-VIDEO-RESIZE-WIDTH-DELTA)
(define GLUT-VIDEO-RESIZE-HEIGHT-DELTA primitive:GLUT-VIDEO-RESIZE-HEIGHT-DELTA)
(define GLUT-VIDEO-RESIZE-X primitive:GLUT-VIDEO-RESIZE-X)
(define GLUT-VIDEO-RESIZE-Y primitive:GLUT-VIDEO-RESIZE-Y)
(define GLUT-VIDEO-RESIZE-WIDTH primitive:GLUT-VIDEO-RESIZE-WIDTH)
(define GLUT-VIDEO-RESIZE-HEIGHT primitive:GLUT-VIDEO-RESIZE-HEIGHT)
(define GLUT-NORMAL primitive:GLUT-NORMAL)
(define GLUT-OVERLAY primitive:GLUT-OVERLAY)
(define GLUT-ACTIVE-SHIFT primitive:GLUT-ACTIVE-SHIFT)
(define GLUT-ACTIVE-CTRL primitive:GLUT-ACTIVE-CTRL)
(define GLUT-ACTIVE-ALT primitive:GLUT-ACTIVE-ALT)
(define GLUT-CURSOR-RIGHT-ARROW primitive:GLUT-CURSOR-RIGHT-ARROW)
(define GLUT-CURSOR-LEFT-ARROW primitive:GLUT-CURSOR-LEFT-ARROW)
(define GLUT-CURSOR-INFO primitive:GLUT-CURSOR-INFO)
(define GLUT-CURSOR-DESTROY primitive:GLUT-CURSOR-DESTROY)
(define GLUT-CURSOR-HELP primitive:GLUT-CURSOR-HELP)
(define GLUT-CURSOR-CYCLE primitive:GLUT-CURSOR-CYCLE)
(define GLUT-CURSOR-SPRAY primitive:GLUT-CURSOR-SPRAY)
(define GLUT-CURSOR-WAIT primitive:GLUT-CURSOR-WAIT)
(define GLUT-CURSOR-TEXT primitive:GLUT-CURSOR-TEXT)
(define GLUT-CURSOR-CROSSHAIR primitive:GLUT-CURSOR-CROSSHAIR)
(define GLUT-CURSOR-UP-DOWN primitive:GLUT-CURSOR-UP-DOWN)
(define GLUT-CURSOR-LEFT-RIGHT primitive:GLUT-CURSOR-LEFT-RIGHT)
(define GLUT-CURSOR-TOP-SIDE primitive:GLUT-CURSOR-TOP-SIDE)
(define GLUT-CURSOR-BOTTOM-SIDE primitive:GLUT-CURSOR-BOTTOM-SIDE)
(define GLUT-CURSOR-LEFT-SIDE primitive:GLUT-CURSOR-LEFT-SIDE)
(define GLUT-CURSOR-RIGHT-SIDE primitive:GLUT-CURSOR-RIGHT-SIDE)
(define GLUT-CURSOR-TOP-LEFT-CORNER primitive:GLUT-CURSOR-TOP-LEFT-CORNER)
(define GLUT-CURSOR-TOP-RIGHT-CORNER primitive:GLUT-CURSOR-TOP-RIGHT-CORNER)
(define GLUT-CURSOR-BOTTOM-RIGHT-CORNER primitive:GLUT-CURSOR-BOTTOM-RIGHT-CORNER)
(define GLUT-CURSOR-BOTTOM-LEFT-CORNER primitive:GLUT-CURSOR-BOTTOM-LEFT-CORNER)
(define GLUT-CURSOR-INHERIT primitive:GLUT-CURSOR-INHERIT)
(define GLUT-CURSOR-NONE primitive:GLUT-CURSOR-NONE)
(define GLUT-CURSOR-FULL-CROSSHAIR primitive:GLUT-CURSOR-FULL-CROSSHAIR)
(define GLUT-RED primitive:GLUT-RED)
(define GLUT-GREEN primitive:GLUT-GREEN)
(define GLUT-BLUE primitive:GLUT-BLUE)
(define GLUT-KEY-REPEAT-OFF primitive:GLUT-KEY-REPEAT-OFF)
(define GLUT-KEY-REPEAT-ON primitive:GLUT-KEY-REPEAT-ON)
(define GLUT-KEY-REPEAT-DEFAULT primitive:GLUT-KEY-REPEAT-DEFAULT)
(define GLUT-JOYSTICK-BUTTON-A primitive:GLUT-JOYSTICK-BUTTON-A)
(define GLUT-JOYSTICK-BUTTON-B primitive:GLUT-JOYSTICK-BUTTON-B)
(define GLUT-JOYSTICK-BUTTON-C primitive:GLUT-JOYSTICK-BUTTON-C)
(define GLUT-JOYSTICK-BUTTON-D primitive:GLUT-JOYSTICK-BUTTON-D)
(define GLUT-GAME-MODE-ACTIVE primitive:GLUT-GAME-MODE-ACTIVE)
(define GLUT-GAME-MODE-POSSIBLE primitive:GLUT-GAME-MODE-POSSIBLE)
(define GLUT-GAME-MODE-WIDTH primitive:GLUT-GAME-MODE-WIDTH)
(define GLUT-GAME-MODE-HEIGHT primitive:GLUT-GAME-MODE-HEIGHT)
(define GLUT-GAME-MODE-PIXEL-DEPTH primitive:GLUT-GAME-MODE-PIXEL-DEPTH)
(define GLUT-GAME-MODE-REFRESH-RATE primitive:GLUT-GAME-MODE-REFRESH-RATE)
(define GLUT-GAME-MODE-DISPLAY-CHANGED primitive:GLUT-GAME-MODE-DISPLAY-CHANGED)
(define glutInit primitive:glutInit)
(define glutInitWindowPosition primitive:glutInitWindowPosition)
(define glutInitWindowSize primitive:glutInitWindowSize)
(define glutInitDisplayMode primitive:glutInitDisplayMode)
(define glutInitDisplayString primitive:glutInitDisplayString)
(define glutMainLoop primitive:glutMainLoop)
(define glutCreateWindow primitive:glutCreateWindow)
(define glutCreateSubWindow primitive:glutCreateSubWindow)
(define glutDestroyWindow primitive:glutDestroyWindow)
(define glutSetWindow primitive:glutSetWindow)
(define glutGetWindow primitive:glutGetWindow)
(define glutSetWindowTitle primitive:glutSetWindowTitle)
(define glutSetIconTitle primitive:glutSetIconTitle)
(define glutReshapeWindow primitive:glutReshapeWindow)
(define glutPositionWindow primitive:glutPositionWindow)
(define glutShowWindow primitive:glutShowWindow)
(define glutHideWindow primitive:glutHideWindow)
(define glutIconifyWindow primitive:glutIconifyWindow)
(define glutPushWindow primitive:glutPushWindow)
(define glutPopWindow primitive:glutPopWindow)
(define glutFullScreen primitive:glutFullScreen)
(define glutPostWindowRedisplay primitive:glutPostWindowRedisplay)
(define glutPostRedisplay primitive:glutPostRedisplay)
(define glutSwapBuffers primitive:glutSwapBuffers)
(define glutWarpPointer primitive:glutWarpPointer)
(define glutSetCursor primitive:glutSetCursor)
(define glutEstablishOverlay primitive:glutEstablishOverlay)
(define glutRemoveOverlay primitive:glutRemoveOverlay)
(define glutUseLayer primitive:glutUseLayer)
(define glutPostOverlayRedisplay primitive:glutPostOverlayRedisplay)
(define glutPostWindowOverlayRedisplay primitive:glutPostWindowOverlayRedisplay)
(define glutShowOverlay primitive:glutShowOverlay)
(define glutHideOverlay primitive:glutHideOverlay)
(define glutCreateMenu primitive:glutCreateMenu)
(define glutDestroyMenu primitive:glutDestroyMenu)
(define glutGetMenu primitive:glutGetMenu)
(define glutSetMenu primitive:glutSetMenu)
(define glutAddMenuEntry primitive:glutAddMenuEntry)
(define glutAddSubMenu primitive:glutAddSubMenu)
(define glutChangeToMenuEntry primitive:glutChangeToMenuEntry)
(define glutChangeToSubMenu primitive:glutChangeToSubMenu)
(define glutRemoveMenuItem primitive:glutRemoveMenuItem)
(define glutAttachMenu primitive:glutAttachMenu)
(define glutDetachMenu primitive:glutDetachMenu)
(define glutTimerFunc primitive:glutTimerFunc)
(define glutIdleFunc primitive:glutIdleFunc)
(define glutKeyboardFunc primitive:glutKeyboardFunc)
(define glutSpecialFunc primitive:glutSpecialFunc)
(define glutReshapeFunc primitive:glutReshapeFunc)
(define glutVisibilityFunc primitive:glutVisibilityFunc)
(define glutDisplayFunc primitive:glutDisplayFunc)
(define glutMouseFunc primitive:glutMouseFunc)
(define glutMotionFunc primitive:glutMotionFunc)
(define glutPassiveMotionFunc primitive:glutPassiveMotionFunc)
(define glutEntryFunc primitive:glutEntryFunc)
(define glutKeyboardUpFunc primitive:glutKeyboardUpFunc)
(define glutSpecialUpFunc primitive:glutSpecialUpFunc)
(define glutJoystickFunc primitive:glutJoystickFunc)
(define glutMenuStateFunc primitive:glutMenuStateFunc)
(define glutMenuStatusFunc primitive:glutMenuStatusFunc)
(define glutOverlayDisplayFunc primitive:glutOverlayDisplayFunc)
(define glutWindowStatusFunc primitive:glutWindowStatusFunc)
(define glutSpaceballMotionFunc primitive:glutSpaceballMotionFunc)
(define glutSpaceballRotateFunc primitive:glutSpaceballRotateFunc)
(define glutSpaceballButtonFunc primitive:glutSpaceballButtonFunc)
(define glutButtonBoxFunc primitive:glutButtonBoxFunc)
(define glutDialsFunc primitive:glutDialsFunc)
(define glutTabletMotionFunc primitive:glutTabletMotionFunc)
(define glutTabletButtonFunc primitive:glutTabletButtonFunc)
(define glutGet primitive:glutGet)
(define glutDeviceGet primitive:glutDeviceGet)
(define glutGetModifiers primitive:glutGetModifiers)
(define glutLayerGet primitive:glutLayerGet)
(define glutBitmapCharacter primitive:glutBitmapCharacter)
(define glutBitmapWidth primitive:glutBitmapWidth)
(define glutStrokeCharacter primitive:glutStrokeCharacter)
(define glutStrokeWidth primitive:glutStrokeWidth)
(define glutBitmapLength primitive:glutBitmapLength)
(define glutStrokeLength primitive:glutStrokeLength)
(define glutWireCube primitive:glutWireCube)
(define glutSolidCube primitive:glutSolidCube)
(define glutWireSphere primitive:glutWireSphere)
(define glutSolidSphere primitive:glutSolidSphere)
(define glutWireCone primitive:glutWireCone)
(define glutSolidCone primitive:glutSolidCone)
(define glutWireTorus primitive:glutWireTorus)
(define glutSolidTorus primitive:glutSolidTorus)
(define glutWireDodecahedron primitive:glutWireDodecahedron)
(define glutSolidDodecahedron primitive:glutSolidDodecahedron)
(define glutWireOctahedron primitive:glutWireOctahedron)
(define glutSolidOctahedron primitive:glutSolidOctahedron)
(define glutWireTetrahedron primitive:glutWireTetrahedron)
(define glutSolidTetrahedron primitive:glutSolidTetrahedron)
(define glutWireIcosahedron primitive:glutWireIcosahedron)
(define glutSolidIcosahedron primitive:glutSolidIcosahedron)
(define glutWireTeapot primitive:glutWireTeapot)
(define glutSolidTeapot primitive:glutSolidTeapot)
(define glutGameModeString primitive:glutGameModeString)
(define glutEnterGameMode primitive:glutEnterGameMode)
(define glutLeaveGameMode primitive:glutLeaveGameMode)
(define glutGameModeGet primitive:glutGameModeGet)
(define glutVideoResizeGet primitive:glutVideoResizeGet)
(define glutSetupVideoResizing primitive:glutSetupVideoResizing)
(define glutStopVideoResizing primitive:glutStopVideoResizing)
(define glutVideoResize primitive:glutVideoResize)
(define glutVideoPan primitive:glutVideoPan)
(define glutSetColor primitive:glutSetColor)
(define glutGetColor primitive:glutGetColor)
(define glutCopyColormap primitive:glutCopyColormap)
(define glutIgnoreKeyRepeat primitive:glutIgnoreKeyRepeat)
(define glutSetKeyRepeat primitive:glutSetKeyRepeat)
(define glutForceJoystickFunc primitive:glutForceJoystickFunc)
(define glutExtensionSupported primitive:glutExtensionSupported)
(define glutReportErrors primitive:glutReportErrors)
(define GLUT-ACTION-EXIT primitive:GLUT-ACTION-EXIT)
(define GLUT-ACTION-GLUTMAINLOOP-RETURNS primitive:GLUT-ACTION-GLUTMAINLOOP-RETURNS)
(define GLUT-ACTION-CONTINUE-EXECUTION primitive:GLUT-ACTION-CONTINUE-EXECUTION)
(define GLUT-CREATE-NEW-CONTEXT primitive:GLUT-CREATE-NEW-CONTEXT)
(define GLUT-USE-CURRENT-CONTEXT primitive:GLUT-USE-CURRENT-CONTEXT)
(define GLUT-FORCE-INDIRECT-CONTEXT primitive:GLUT-FORCE-INDIRECT-CONTEXT)
(define GLUT-ALLOW-DIRECT-CONTEXT primitive:GLUT-ALLOW-DIRECT-CONTEXT)
(define GLUT-TRY-DIRECT-CONTEXT primitive:GLUT-TRY-DIRECT-CONTEXT)
(define GLUT-FORCE-DIRECT-CONTEXT primitive:GLUT-FORCE-DIRECT-CONTEXT)
(define GLUT-ACTION-ON-WINDOW-CLOSE primitive:GLUT-ACTION-ON-WINDOW-CLOSE)
(define GLUT-WINDOW-BORDER-WIDTH primitive:GLUT-WINDOW-BORDER-WIDTH)
(define GLUT-WINDOW-HEADER-HEIGHT primitive:GLUT-WINDOW-HEADER-HEIGHT)
(define GLUT-VERSION primitive:GLUT-VERSION)
(define GLUT-RENDERING-CONTEXT primitive:GLUT-RENDERING-CONTEXT)
(define GLUT-DIRECT-RENDERING primitive:GLUT-DIRECT-RENDERING)
(define GLUT-AUX1 primitive:GLUT-AUX1)
(define GLUT-AUX2 primitive:GLUT-AUX2)
(define GLUT-AUX3 primitive:GLUT-AUX3)
(define GLUT-AUX4 primitive:GLUT-AUX4)
(define glutMainLoopEvent primitive:glutMainLoopEvent)
(define glutLeaveMainLoop primitive:glutLeaveMainLoop)
(define glutMouseWheelFunc primitive:glutMouseWheelFunc)
(define glutCloseFunc primitive:glutCloseFunc)
(define glutWMCloseFunc primitive:glutWMCloseFunc)
(define glutMenuDestroyFunc primitive:glutMenuDestroyFunc)
(define glutSetOption primitive:glutSetOption)
(define glutGetWindowData primitive:glutGetWindowData)
(define glutSetWindowData primitive:glutSetWindowData)
(define glutGetMenuData primitive:glutGetMenuData)
(define glutSetMenuData primitive:glutSetMenuData)
(define glutBitmapHeight primitive:glutBitmapHeight)
(define glutStrokeHeight primitive:glutStrokeHeight)
(define glutBitmapString primitive:glutBitmapString)
(define glutStrokeString primitive:glutStrokeString)
(define glutWireRhombicDodecahedron primitive:glutWireRhombicDodecahedron)
(define glutSolidRhombicDodecahedron primitive:glutSolidRhombicDodecahedron)
(define glutWireSierpinskiSponge primitive:glutWireSierpinskiSponge)
(define glutSolidSierpinskiSponge primitive:glutSolidSierpinskiSponge)
(define glutWireCylinder primitive:glutWireCylinder)
(define glutSolidCylinder primitive:glutSolidCylinder)
(define glutGetProcAddress primitive:glutGetProcAddress)

(export TrampolineVoid TrampolineInt TrampolineIntInt TrampolineIntIntInt TrampolineUCharIntInt TrampolineIntIntIntInt TrampolineUIntIntIntInt MakeSCMCallback-V-V MakeSCMCallback-V-I MakeSCMCallback-V-II MakeSCMCallback-V-III MakeSCMCallback-V-CII MakeSCMCallback-V-IIII MakeSCMCallback-V-UIII newintv1 newstrv1 newfv4 newfv setfv4 FREEGLUT GLUT-API-VERSION FREEGLUT-VERSION-2-0 GLUT-XLIB-IMPLEMENTATION GLUT-KEY-F1 GLUT-KEY-F2 GLUT-KEY-F3 GLUT-KEY-F4 GLUT-KEY-F5 GLUT-KEY-F6 GLUT-KEY-F7 GLUT-KEY-F8 GLUT-KEY-F9 GLUT-KEY-F10 GLUT-KEY-F11 GLUT-KEY-F12 GLUT-KEY-LEFT GLUT-KEY-UP GLUT-KEY-RIGHT GLUT-KEY-DOWN GLUT-KEY-PAGE-UP GLUT-KEY-PAGE-DOWN GLUT-KEY-HOME GLUT-KEY-END GLUT-KEY-INSERT GLUT-LEFT-BUTTON GLUT-MIDDLE-BUTTON GLUT-RIGHT-BUTTON GLUT-DOWN GLUT-UP GLUT-LEFT GLUT-ENTERED GLUT-RGB GLUT-RGBA GLUT-INDEX GLUT-SINGLE GLUT-DOUBLE GLUT-ACCUM GLUT-ALPHA GLUT-DEPTH GLUT-STENCIL GLUT-MULTISAMPLE GLUT-STEREO GLUT-LUMINANCE GLUT-MENU-NOT-IN-USE GLUT-MENU-IN-USE GLUT-NOT-VISIBLE GLUT-VISIBLE GLUT-HIDDEN GLUT-FULLY-RETAINED GLUT-PARTIALLY-RETAINED GLUT-FULLY-COVERED glutStrokeRoman glutStrokeMonoRoman glutBitmap9By15 glutBitmap8By13 glutBitmapTimesRoman10 glutBitmapTimesRoman24 glutBitmapHelvetica10 glutBitmapHelvetica12 glutBitmapHelvetica18 GLUT-WINDOW-X GLUT-WINDOW-Y GLUT-WINDOW-WIDTH GLUT-WINDOW-HEIGHT GLUT-WINDOW-BUFFER-SIZE GLUT-WINDOW-STENCIL-SIZE GLUT-WINDOW-DEPTH-SIZE GLUT-WINDOW-RED-SIZE GLUT-WINDOW-GREEN-SIZE GLUT-WINDOW-BLUE-SIZE GLUT-WINDOW-ALPHA-SIZE GLUT-WINDOW-ACCUM-RED-SIZE GLUT-WINDOW-ACCUM-GREEN-SIZE GLUT-WINDOW-ACCUM-BLUE-SIZE GLUT-WINDOW-ACCUM-ALPHA-SIZE GLUT-WINDOW-DOUBLEBUFFER GLUT-WINDOW-RGBA GLUT-WINDOW-PARENT GLUT-WINDOW-NUM-CHILDREN GLUT-WINDOW-COLORMAP-SIZE GLUT-WINDOW-NUM-SAMPLES GLUT-WINDOW-STEREO GLUT-WINDOW-CURSOR GLUT-SCREEN-WIDTH GLUT-SCREEN-HEIGHT GLUT-SCREEN-WIDTH-MM GLUT-SCREEN-HEIGHT-MM GLUT-MENU-NUM-ITEMS GLUT-DISPLAY-MODE-POSSIBLE GLUT-INIT-WINDOW-X GLUT-INIT-WINDOW-Y GLUT-INIT-WINDOW-WIDTH GLUT-INIT-WINDOW-HEIGHT GLUT-INIT-DISPLAY-MODE GLUT-ELAPSED-TIME GLUT-WINDOW-FORMAT-ID GLUT-INIT-STATE GLUT-HAS-KEYBOARD GLUT-HAS-MOUSE GLUT-HAS-SPACEBALL GLUT-HAS-DIAL-AND-BUTTON-BOX GLUT-HAS-TABLET GLUT-NUM-MOUSE-BUTTONS GLUT-NUM-SPACEBALL-BUTTONS GLUT-NUM-BUTTON-BOX-BUTTONS GLUT-NUM-DIALS GLUT-NUM-TABLET-BUTTONS GLUT-DEVICE-IGNORE-KEY-REPEAT GLUT-DEVICE-KEY-REPEAT GLUT-HAS-JOYSTICK GLUT-OWNS-JOYSTICK GLUT-JOYSTICK-BUTTONS GLUT-JOYSTICK-AXES GLUT-JOYSTICK-POLL-RATE GLUT-OVERLAY-POSSIBLE GLUT-LAYER-IN-USE GLUT-HAS-OVERLAY GLUT-TRANSPARENT-INDEX GLUT-NORMAL-DAMAGED GLUT-OVERLAY-DAMAGED GLUT-VIDEO-RESIZE-POSSIBLE GLUT-VIDEO-RESIZE-IN-USE GLUT-VIDEO-RESIZE-X-DELTA GLUT-VIDEO-RESIZE-Y-DELTA GLUT-VIDEO-RESIZE-WIDTH-DELTA GLUT-VIDEO-RESIZE-HEIGHT-DELTA GLUT-VIDEO-RESIZE-X GLUT-VIDEO-RESIZE-Y GLUT-VIDEO-RESIZE-WIDTH GLUT-VIDEO-RESIZE-HEIGHT GLUT-NORMAL GLUT-OVERLAY GLUT-ACTIVE-SHIFT GLUT-ACTIVE-CTRL GLUT-ACTIVE-ALT GLUT-CURSOR-RIGHT-ARROW GLUT-CURSOR-LEFT-ARROW GLUT-CURSOR-INFO GLUT-CURSOR-DESTROY GLUT-CURSOR-HELP GLUT-CURSOR-CYCLE GLUT-CURSOR-SPRAY GLUT-CURSOR-WAIT GLUT-CURSOR-TEXT GLUT-CURSOR-CROSSHAIR GLUT-CURSOR-UP-DOWN GLUT-CURSOR-LEFT-RIGHT GLUT-CURSOR-TOP-SIDE GLUT-CURSOR-BOTTOM-SIDE GLUT-CURSOR-LEFT-SIDE GLUT-CURSOR-RIGHT-SIDE GLUT-CURSOR-TOP-LEFT-CORNER GLUT-CURSOR-TOP-RIGHT-CORNER GLUT-CURSOR-BOTTOM-RIGHT-CORNER GLUT-CURSOR-BOTTOM-LEFT-CORNER GLUT-CURSOR-INHERIT GLUT-CURSOR-NONE GLUT-CURSOR-FULL-CROSSHAIR GLUT-RED GLUT-GREEN GLUT-BLUE GLUT-KEY-REPEAT-OFF GLUT-KEY-REPEAT-ON GLUT-KEY-REPEAT-DEFAULT GLUT-JOYSTICK-BUTTON-A GLUT-JOYSTICK-BUTTON-B GLUT-JOYSTICK-BUTTON-C GLUT-JOYSTICK-BUTTON-D GLUT-GAME-MODE-ACTIVE GLUT-GAME-MODE-POSSIBLE GLUT-GAME-MODE-WIDTH GLUT-GAME-MODE-HEIGHT GLUT-GAME-MODE-PIXEL-DEPTH GLUT-GAME-MODE-REFRESH-RATE GLUT-GAME-MODE-DISPLAY-CHANGED glutInit glutInitWindowPosition glutInitWindowSize glutInitDisplayMode glutInitDisplayString glutMainLoop glutCreateWindow glutCreateSubWindow glutDestroyWindow glutSetWindow glutGetWindow glutSetWindowTitle glutSetIconTitle glutReshapeWindow glutPositionWindow glutShowWindow glutHideWindow glutIconifyWindow glutPushWindow glutPopWindow glutFullScreen glutPostWindowRedisplay glutPostRedisplay glutSwapBuffers glutWarpPointer glutSetCursor glutEstablishOverlay glutRemoveOverlay glutUseLayer glutPostOverlayRedisplay glutPostWindowOverlayRedisplay glutShowOverlay glutHideOverlay glutCreateMenu glutDestroyMenu glutGetMenu glutSetMenu glutAddMenuEntry glutAddSubMenu glutChangeToMenuEntry glutChangeToSubMenu glutRemoveMenuItem glutAttachMenu glutDetachMenu glutTimerFunc glutIdleFunc glutKeyboardFunc glutSpecialFunc glutReshapeFunc glutVisibilityFunc glutDisplayFunc glutMouseFunc glutMotionFunc glutPassiveMotionFunc glutEntryFunc glutKeyboardUpFunc glutSpecialUpFunc glutJoystickFunc glutMenuStateFunc glutMenuStatusFunc glutOverlayDisplayFunc glutWindowStatusFunc glutSpaceballMotionFunc glutSpaceballRotateFunc glutSpaceballButtonFunc glutButtonBoxFunc glutDialsFunc glutTabletMotionFunc glutTabletButtonFunc glutGet glutDeviceGet glutGetModifiers glutLayerGet glutBitmapCharacter glutBitmapWidth glutStrokeCharacter glutStrokeWidth glutBitmapLength glutStrokeLength glutWireCube glutSolidCube glutWireSphere glutSolidSphere glutWireCone glutSolidCone glutWireTorus glutSolidTorus glutWireDodecahedron glutSolidDodecahedron glutWireOctahedron glutSolidOctahedron glutWireTetrahedron glutSolidTetrahedron glutWireIcosahedron glutSolidIcosahedron glutWireTeapot glutSolidTeapot glutGameModeString glutEnterGameMode glutLeaveGameMode glutGameModeGet glutVideoResizeGet glutSetupVideoResizing glutStopVideoResizing glutVideoResize glutVideoPan glutSetColor glutGetColor glutCopyColormap glutIgnoreKeyRepeat glutSetKeyRepeat glutForceJoystickFunc glutExtensionSupported glutReportErrors GLUT-ACTION-EXIT GLUT-ACTION-GLUTMAINLOOP-RETURNS GLUT-ACTION-CONTINUE-EXECUTION GLUT-CREATE-NEW-CONTEXT GLUT-USE-CURRENT-CONTEXT GLUT-FORCE-INDIRECT-CONTEXT GLUT-ALLOW-DIRECT-CONTEXT GLUT-TRY-DIRECT-CONTEXT GLUT-FORCE-DIRECT-CONTEXT GLUT-ACTION-ON-WINDOW-CLOSE GLUT-WINDOW-BORDER-WIDTH GLUT-WINDOW-HEADER-HEIGHT GLUT-VERSION GLUT-RENDERING-CONTEXT GLUT-DIRECT-RENDERING GLUT-AUX1 GLUT-AUX2 GLUT-AUX3 GLUT-AUX4 glutMainLoopEvent glutLeaveMainLoop glutMouseWheelFunc glutCloseFunc glutWMCloseFunc glutMenuDestroyFunc glutSetOption glutGetWindowData glutSetWindowData glutGetMenuData glutSetMenuData glutBitmapHeight glutStrokeHeight glutBitmapString glutStrokeString glutWireRhombicDodecahedron glutSolidRhombicDodecahedron glutWireSierpinskiSponge glutSolidSierpinskiSponge glutWireCylinder glutSolidCylinder glutGetProcAddress )