# # Find HUNSPELL includes and library
#
#  HUNSPELL_INCLUDE_DIR - where to find /hunspell/hunspell.hxx
#  HUNSPELL_LIBRARIES   - List of libraries where hunspell is (32 bit)
#  HUNSPELL_FOUND       - True if Hunspell found.
IF (HUNSPELL_INCLUDE_DIR AND HUNSPELL_LIBRARIES)
  # Already in cache, be silent
  SET(HUNSPELL_FIND_QUIETLY TRUE)
ENDIF (HUNSPELL_INCLUDE_DIR AND HUNSPELL_LIBRARIES)

FIND_PATH(HUNSPELL_INCLUDE_DIR hunspell/hunspell.hxx )
FIND_LIBRARY(HUNSPELL_LIBRARIES NAMES libhunspell.so)

INCLUDE(FindPackageHandleStandardArgs)
# handle the QUIETLY and REQUIRED arguments and set HUNSPELL_FOUND to TRUE
# if all listed variables are TRUE

FIND_PACKAGE_HANDLE_STANDARD_ARGS(HUNSPELL DEFAULT_MSG HUNSPELL_LIBRARIES HUNSPELL_INCLUDE_DIR )

MARK_AS_ADVANCED(HUNSPELL_INCLUDE_DIR HUNSPELL_LIBRARIES)