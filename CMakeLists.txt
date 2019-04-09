cmake_minimum_required (VERSION 2.8.3)
project(clearskymodels)

include_directories(
  ${CMAKE_CURRENT_SOURCE_DIR}
  ${CMAKE_CURRENT_SOURCE_DIR}/external
  ${CMAKE_CURRENT_SOURCE_DIR}/external/dimensional_types
  ${CMAKE_CURRENT_SOURCE_DIR}/external/progress_bar
)

# dimensional_types
file(GLOB
  DIMENSIONAL_TYPES_SRC
  ${PROJECT_SOURCE_DIR}/external/dimensional_types/math/*.h
)
file(GLOB
  DIMENSIONAL_TYPES_TEST
  ${PROJECT_SOURCE_DIR}/external/dimensional_types/math/*test*.cc
)
list(APPEND
  DIMENSIONAL_TYPES_TEST
  ${PROJECT_SOURCE_DIR}/external/dimensional_types/test/test_case.h
  ${PROJECT_SOURCE_DIR}/external/dimensional_types/test/test_main.cc
)
source_group("external\\dimensional_types" FILES ${DIMENSIONAL_TYPES_SRC})
source_group("external\\dimensional_types\\test" FILES ${DIMENSIONAL_TYPES_TEST})

# minpng
list(APPEND
  MINPNG_SRC
  ${PROJECT_SOURCE_DIR}/external/minpng/minpng.h
)
list(APPEND
  MINPNG_TEST
  ${PROJECT_SOURCE_DIR}/external/minpng/test.c
)
source_group("external\\minpng" FILES ${MINPNG_SRC})
source_group("external\\minpng\\test" FILES ${MINPNG_TEST})

# progress_bar
list(APPEND
  PROGRESS_BAR_SRC
  ${PROJECT_SOURCE_DIR}/external/progress_bar/util/progress_bar.h
  ${PROJECT_SOURCE_DIR}/external/progress_bar/util/progress_bar.cc
)
source_group("external\\progress_bar" FILES ${PROGRESS_BAR_SRC})

# physics
list(APPEND
  PHYSICS_SRC
  ${PROJECT_SOURCE_DIR}/physics/units.h
  ${PROJECT_SOURCE_DIR}/physics/cie.h
  ${PROJECT_SOURCE_DIR}/physics/cie.cc
)
list(APPEND PHYSICS_TEST
  ${PROJECT_SOURCE_DIR}/physics/cie_test.cc
)
source_group("physics" FILES ${PHYSICS_SRC})
source_group("physics\\test" FILES ${PHYSICS_TEST})

# atmosphere
list(APPEND ATMOSPHERE_SRC_measurement
  ${PROJECT_SOURCE_DIR}/atmosphere/measurement/measured_atmosphere.h
  ${PROJECT_SOURCE_DIR}/atmosphere/measurement/measured_atmosphere.cc
  ${PROJECT_SOURCE_DIR}/atmosphere/measurement/measured_atmospheres.h
  ${PROJECT_SOURCE_DIR}/atmosphere/measurement/measured_atmospheres.cc
)

file(GLOB ATMOSPHERE_SRC_bruneton ${PROJECT_SOURCE_DIR}/atmosphere/model/bruneton/*.h ${PROJECT_SOURCE_DIR}/atmosphere/model/bruneton/*.inl ${PROJECT_SOURCE_DIR}/atmosphere/model/bruneton/*.cc)
file(GLOB ATMOSPHERE_SRC_haber ${PROJECT_SOURCE_DIR}/atmosphere/model/haber/*.h ${PROJECT_SOURCE_DIR}/atmosphere/model/haber/*.inl ${PROJECT_SOURCE_DIR}/atmosphere/model/haber/*.cc)
file(GLOB ATMOSPHERE_SRC_hosek ${PROJECT_SOURCE_DIR}/atmosphere/model/hosek/*.h ${PROJECT_SOURCE_DIR}/atmosphere/model/hosek/*.inl ${PROJECT_SOURCE_DIR}/atmosphere/model/hosek/*.cc)
file(GLOB ATMOSPHERE_SRC_libradtran ${PROJECT_SOURCE_DIR}/atmosphere/model/libradtran/*.h ${PROJECT_SOURCE_DIR}/atmosphere/model/libradtran/*.inl ${PROJECT_SOURCE_DIR}/atmosphere/model/libradtran/*.cc)
file(GLOB ATMOSPHERE_SRC_nishita ${PROJECT_SOURCE_DIR}/atmosphere/model/nishita/*.h ${PROJECT_SOURCE_DIR}/atmosphere/model/nishita/*.inl ${PROJECT_SOURCE_DIR}/atmosphere/model/nishita/*.cc)
file(GLOB ATMOSPHERE_SRC_oneal ${PROJECT_SOURCE_DIR}/atmosphere/model/oneal/*.h ${PROJECT_SOURCE_DIR}/atmosphere/model/oneal/*.inl ${PROJECT_SOURCE_DIR}/atmosphere/model/oneal/*.cc)
file(GLOB ATMOSPHERE_SRC_polradtran ${PROJECT_SOURCE_DIR}/atmosphere/model/polradtran/*.h ${PROJECT_SOURCE_DIR}/atmosphere/model/polradtran/*.inl ${PROJECT_SOURCE_DIR}/atmosphere/model/polradtran/*.cc)
file(GLOB ATMOSPHERE_SRC_preetham ${PROJECT_SOURCE_DIR}/atmosphere/model/preetham/*.h ${PROJECT_SOURCE_DIR}/atmosphere/model/preetham/*.inl ${PROJECT_SOURCE_DIR}/atmosphere/model/preetham/*.cc)
list(APPEND
  ATMOSPHERE_SRC_common
  ${PROJECT_SOURCE_DIR}/atmosphere/ct_math.h
  ${PROJECT_SOURCE_DIR}/atmosphere/atmosphere.h
  ${PROJECT_SOURCE_DIR}/atmosphere/atmosphere.cc
  ${PROJECT_SOURCE_DIR}/atmosphere/color.h
  ${PROJECT_SOURCE_DIR}/atmosphere/color.cc
  ${PROJECT_SOURCE_DIR}/atmosphere/comparisons.h
  ${PROJECT_SOURCE_DIR}/atmosphere/comparisons.cc
  ${PROJECT_SOURCE_DIR}/atmosphere/hemispherical_function.h
  ${PROJECT_SOURCE_DIR}/atmosphere/sun_direction.h
  ${PROJECT_SOURCE_DIR}/atmosphere/sun_direction.cc
)
list(APPEND
  ATMOSPHERE_SRC
  ${ATMOSPHERE_SRC_common}
  ${ATMOSPHERE_SRC_measurement}
  ${ATMOSPHERE_SRC_bruneton}
  ${ATMOSPHERE_SRC_haber}
  ${ATMOSPHERE_SRC_hosek}
  ${ATMOSPHERE_SRC_libradtran}
  ${ATMOSPHERE_SRC_nishita}
  ${ATMOSPHERE_SRC_oneal}
  ${ATMOSPHERE_SRC_polradtran}
  ${ATMOSPHERE_SRC_preetham}
)
list(APPEND
  ATMOSPHERE_TEST
  ${PROJECT_SOURCE_DIR}/atmosphere/atmosphere_test.cc
  ${PROJECT_SOURCE_DIR}/atmosphere/hemispherical_function_test.cc
  ${PROJECT_SOURCE_DIR}/atmosphere/measurement/measured_atmosphere_test.cc
)
source_group("atmosphere" FILES ${ATMOSPHERE_SRC_common})
source_group("atmosphere\\measurement" FILES ${ATMOSPHERE_SRC_measurement})
source_group("atmosphere\\model\\bruneton" FILES ${ATMOSPHERE_SRC_bruneton})
source_group("atmosphere\\model\\haber" FILES ${ATMOSPHERE_SRC_haber})
source_group("atmosphere\\model\\hosek" FILES ${ATMOSPHERE_SRC_hosek})
source_group("atmosphere\\model\\libradtran" FILES ${ATMOSPHERE_SRC_libradtran})
source_group("atmosphere\\model\\nishita" FILES ${ATMOSPHERE_SRC_nishita})
source_group("atmosphere\\model\\oneal" FILES ${ATMOSPHERE_SRC_oneal})
source_group("atmosphere\\model\\polradtran" FILES ${ATMOSPHERE_SRC_polradtran})
source_group("atmosphere\\model\\preetham" FILES ${ATMOSPHERE_SRC_preetham})
source_group("atmosphere\\test" FILES ${ATMOSPHERE_TEST})

source_group("" FILES main.cc)

add_executable(clearskymodels
  # Header files
  # Source code files
  ${DIMENSIONAL_TYPES_SRC}
  ${MINPNG_SRC}
  ${PROGRESS_BAR_SRC}
  ${PHYSICS_SRC}
  ${ATMOSPHERE_SRC}
  main.cc
)

add_executable(clearskymodels_test
  ${DIMENSIONAL_TYPES_TEST}
  # ${MINPNG_TEST}
  ${PHYSICS_SRC}
  ${PHYSICS_TEST}
  ${ATMOSPHERE_SRC}
  ${ATMOSPHERE_TEST}
  ${PROGRESS_BAR_SRC}
)

# vim: set et ts=2 sw=2 ft=cmake nospell:
