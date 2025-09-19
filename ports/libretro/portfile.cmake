vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO Retro-Technique/libretro
    REF "v${VERSION}"
    SHA512 CCF878813A01AE5038D1D333821F278BB8FFF06E4248F25DFFBF6BA1C35A73AAB0672FB0F1CDCBB432D9D18AAFA2A20E59BA1BE818F4061B36D65E8DB0B1EA04
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