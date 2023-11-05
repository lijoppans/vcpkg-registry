vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO lijoppans/dotenv-c
  REF 848d9d4bb38ef817571ddfec61d1b34349572557
  SHA512 9c569bfc57e5c8394b8591ff5844b8809151f13e3de74ef07db03cb0e2de3dc47773036e79ec9baf476fc11b10d1beed6a61cb50c0b29c6ec341742c34e17f66
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