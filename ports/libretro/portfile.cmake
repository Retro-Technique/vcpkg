vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    URL https://github.com/Retro-Technique/libretro
    REF "v${VERSION}"
    SHA512 6433a849e0190d766d08bf534c3cf3715438e6cd488be6ad7ccf3b5c14598ea19c58d272c286d2d70b2276139cc6088aa03ca9e0feb52daf0c32a38f3abff2be
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH ${SOURCE_PATH}
)

vcpkg_cmake_install()
vcpkg_copy_pdbs()

vcpkg_cmake_config_fixup(
    CONFIG_PATH share/libretro
    PACKAGE_NAME libretro
)

file(TOUCH "${SOURCE_PATH}/LICENSE")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")