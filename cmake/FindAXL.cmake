# - Try to find AXL
# Once done this will define
#  AXL_FOUND - System has libAXL
#  AXL_INCLUDE_DIRS - The libAXL include directories
#  AXL_LIBRARIES - The libraries needed to use libAXL

FIND_PATH(AXL_ROOT
    NAMES include/axl.h
)

FIND_LIBRARY(AXL_LIBRARIES
    NAMES axl
    HINTS ${AXL_ROOT}/lib
)

FIND_PATH(AXL_INCLUDE_DIRS
    NAMES axl.h
    HINTS ${AXL_ROOT}/include
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(AXL DEFAULT_MSG
    AXL_LIBRARIES
    AXL_INCLUDE_DIRS
)

# Hide these vars from ccmake GUI
MARK_AS_ADVANCED(
	AXL_LIBRARIES
	AXL_INCLUDE_DIRS
)
