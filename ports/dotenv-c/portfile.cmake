vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO Isty001/dotenv-c
  REF 494e8062e2dae17169c9c67998bb7aba27cdaaf4
  SHA512 184556f3add122e087326ba82556355dbdc08ed5b365f6ebef7e7bd6263f536033b2ef87f25d29032ddc51abb5967290565ee29b929de14c7f76842c83905f03
  HEAD_REF master
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
  INSTALL "${SOURCE_PATH}/LICENSE"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright)