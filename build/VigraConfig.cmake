get_filename_component(SELF_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(Vigra_TOP_DIR ${SELF_DIR})
include(${Vigra_TOP_DIR}/vigra-targets.cmake)
get_filename_component(Vigra_INCLUDE_DIRS "${Vigra_TOP_DIR}/include/" ABSOLUTE)
set(Vigra_INCLUDE_DIRS ${Vigra_INCLUDE_DIRS};E:/GitCode/Vigra_Test/vigra-1.10.0/include)

