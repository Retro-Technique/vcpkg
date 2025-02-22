vcpkg_from_git(
    OUT_SOURCE_PATH SOURCE_PATH
    URL https://github.com/Retro-Technique/RetroCode
    REF e4dcb00d999c6e5556358e5b12dd9d060cd189c0
)
  
if("math" IN_LIST FEATURES)

    vcpkg_install_msbuild(
        SOURCE_PATH "${SOURCE_PATH}"
        PROJECT_SUBPATH "VisualC/RetroCode.sln"
        INCLUDES_SUBPATH "include"
        USE_VCPKG_INTEGRATION
        TARGET RetroCode-Math
        RELEASE_CONFIGURATION "Release"
        DEBUG_CONFIGURATION "Debug"
        ALLOW_ROOT_INCLUDES
        PLATFORM ${VCPKG_TARGET_ARCHITECTURE}
    )

    vcpkg_copy_pdbs()

    file(GLOB HEADER_FILES LIST_DIRECTORIES false "${SOURCE_PATH}/include/RetroCode/Math/*.h")
    file(INSTALL
        ${HEADER_FILES}
        DESTINATION "${CURRENT_PACKAGES_DIR}/include/RetroCode/Math")
    file(INSTALL
        ${SOURCE_PATH}/include/RetroCode/Math.h
        DESTINATION "${CURRENT_PACKAGES_DIR}/include")

endif()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")