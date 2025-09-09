vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO Retro-Technique/libretro
    REF "v${VERSION}"
    SHA512 6433a849e0190d766d08bf534c3cf3715438e6cd488be6ad7ccf3b5c14598ea19c58d272c286d2d70b2276139cc6088aa03ca9e0feb52daf0c32a38f3abff2be
    HEAD_REF main
)

set(FEATURES math image graphics)

foreach(feature IN LISTS FEATURES)
    if("${feature}" IN_LIST FEATURES)
        set(BUILD_${feature} ON)
    else()
        set(BUILD_${feature} OFF)
    endif()
endforeach()

if(BUILD_graphics)
    set(BUILD_image ON)
    set(BUILD_math ON)
endif()

if(BUILD_image)
    set(BUILD_math ON)
endif()

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS 
        -DBUILD_TESTS=OFF
        -DBUILD_EXAMPLES=OFF
        -DBUILD_MATH=${BUILD_math}
        -DBUILD_GRAPHICS=${BUILD_graphics}
        -DBUILD_IMAGE=${BUILD_image}
        -DBUILD_CORE=${BUILD_core}
)

vcpkg_cmake_install()
vcpkg_copy_pdbs()

vcpkg_cmake_config_fixup(
    CONFIG_PATH lib/cmake/libretro
    PACKAGE_NAME libretro
)

file(TOUCH "${SOURCE_PATH}/LICENSE")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")