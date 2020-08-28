cmake_minimum_required(VERSION 3.5.1)
set(CMAKE_CXX_COMPILER "/usr/bin/g++")
set(CMAKE_CXX_STANDARD 14)

project(e2sim)

set (E2SIM_ROOT ./)

include_directories("${E2SIM_ROOT}")
include_directories("${E2SIM_ROOT}/src")
include_directories("${E2SIM_ROOT}/src/DEF")
include_directories("${E2SIM_ROOT}/src/SCTP/")
include_directories("${E2SIM_ROOT}/src/E2AP")
include_directories("${E2SIM_ROOT}/src/E2AP/E2SM")
include_directories("${E2SIM_ROOT}/ASN1c")

#set(CMAKE_THREAD_PREFER_PTHREAD TRUE)
set(THREADS_PREFER_PTHREAD_FLAG ON)

find_library( SCTP_STD_LIB sctp )  #needed for sctp_sendmsgf
find_package( Threads REQUIRED )

#----------------------------------------------
file(GLOB E2SIM_SOURCES
  "${E2SIM_ROOT}/e2sim.cpp"
  "${E2SIM_ROOT}/encode_kpm.cpp"
  "${E2SIM_ROOT}/kpm_callbacks.cpp"
  "${E2SIM_ROOT}/encode_e2apv1.cpp" 
  "${E2SIM_ROOT}/src/DEF/*.cpp"
  "${E2SIM_ROOT}/src/SCTP/*.cpp"
  "${E2SIM_ROOT}/src/E2AP/*.c"
  "${E2SIM_ROOT}/src/E2AP/*.cpp"
  "${E2SIM_ROOT}/ASN1c/*.c"

  )

add_executable(e2sim ${E2SIM_SOURCES})
target_link_libraries( e2sim ${SCTP_STD_LIB} )
target_link_libraries( e2sim Threads::Threads )

#----------------------------------------------
file(GLOB RICSIM_SOURCES

  "${E2SIM_ROOT}/ricsim.cpp"
  "${E2SIM_ROOT}/encode_kpm.cpp"
  "${E2SIM_ROOT}/encode_e2apv1.cpp"
  "${E2SIM_ROOT}/kpm_callbacks.cpp"
  "${E2SIM_ROOT}/src/DEF/*.cpp"
  "${E2SIM_ROOT}/src/SCTP/*.cpp"
  "${E2SIM_ROOT}/src/E2AP/*.c"
  "${E2SIM_ROOT}/src/E2AP/*.cpp"
  "${E2SIM_ROOT}/ASN1c/*.c"
  )
add_executable(ricsim ${RICSIM_SOURCES})
target_link_libraries( ricsim ${SCTP_STD_LIB}  )
target_link_libraries( e2sim Threads::Threads )
