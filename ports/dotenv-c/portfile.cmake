vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO lijoppans/dotenv-c
  REF 2905632f6ee8853a778896a3afd4ea9f8ce01443
  SHA512 7aef6ff4964d08f18e02c575ebe64bec375da7184559399837a4238af8c8227a69b4363cd2ad27b51e5489e6fcbb64c3e52ee4576b54d27ba41d2a7b367c7c8a
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