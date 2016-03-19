get_filename_component(SELF_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
get_filename_component(Vigra_TOP_DIR  "${SELF_DIR}/../../" ABSOLUTE)

include(${SELF_DIR}/vigra-targets.cmake)
get_target_property(VIGRA_TYPE vigraimpex TYPE)
if(${VIGRA_TYPE} STREQUAL "STATIC_LIBRARY")
    SET(VIGRA_STATIC_LIB True)
    ADD_DEFINITIONS(-DVIGRA_STATIC_LIB)
endif(${VIGRA_TYPE} STREQUAL "STATIC_LIBRARY")
get_filename_component(Vigra_INCLUDE_DIRS "${Vigra_TOP_DIR}/include/" ABSOLUTE)

IF(EXISTS ${SELF_DIR}/../vigranumpy/VigranumpyConfig.cmake)
    INCLUDE(${SELF_DIR}/../vigranumpy/VigranumpyConfig.cmake)
ENDIF()
