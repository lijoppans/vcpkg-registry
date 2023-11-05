vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO lijoppans/dotenv-c
  REF 20e81d3ea1990aee4dccaf130527b18d417c14f1
  SHA512 9fc01e288cdee5676f06047868d36dcc3fecc113606386038c8feb601a4c41dc39912033da23c24521b7eb9cd95105adc5632e05bbd532efea5e54e2b2d56cb0
  HEAD_REF master
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets(
)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
  INSTALL "${SOURCE_PATH}/LICENSE"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright)