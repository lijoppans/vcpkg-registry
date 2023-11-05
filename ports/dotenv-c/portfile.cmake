vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO lijoppans/dotenv-c
  REF 955114ba045969ad03120ef95093f44220cf790d
  SHA512 f24dfaef74522a7a660456e3df13927ea3f11ff8431f0d1546b870aa07098bb3b2428552e6a7e635496883c98d070430e33529cf61090c146b3dcba8e5a0f62c
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