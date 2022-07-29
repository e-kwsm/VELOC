# - Try to find DAOS
# Once done this will define
#  DAOS_FOUND - System has libDAOS
#  DAOS_INCLUDE_DIRS - The libDAOS include directories
#  DAOS_LIBRARIES - The libraries needed to use libDAOS

FIND_PATH(DAOS_ROOT
    NAMES include/daos.h
)

FIND_LIBRARY(DAOS_LIBRARIES
    NAMES daos
    HINTS ${DAOS_ROOT}/lib
)

FIND_PATH(DAOS_INCLUDE_DIRS
    NAMES daos.h
    HINTS ${DAOS_ROOT}/include
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(DAOS DEFAULT_MSG
    DAOS_LIBRARIES
    DAOS_INCLUDE_DIRS
)

# Hide these vars from ccmake GUI
MARK_AS_ADVANCED(
	DAOS_LIBRARIES
	DAOS_INCLUDE_DIRS
)
