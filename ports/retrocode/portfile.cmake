vcpkg_from_git(
    OUT_SOURCE_PATH SOURCE_PATH
    URL https://github.com/Retro-Technique/RetroCode
    REF 7275370f3700b6867bca6f25da33de257498e633
)
  
if("math" IN_LIST FEATURES)

    vcpkg_install_msbuild(
        SOURCE_PATH "${SOURCE_PATH}"
        PROJECT_SUBPATH "RetroCode.sln"
        INCLUDES_SUBPATH "include"
        USE_VCPKG_INTEGRATION
        TARGET RetroCode-Math
        ALLOW_ROOT_INCLUDES
        PLATFORM ${VCPKG_TARGET_ARCHITECTURE}
    )

    file(GLOB HEADER_FILES LIST_DIRECTORIES false "${SOURCE_PATH}/include/RetroCode/Math/*.h")
    file(INSTALL
        ${HEADER_FILES}
        DESTINATION "${CURRENT_PACKAGES_DIR}/include/RetroCode/Math")
    file(INSTALL
        ${SOURCE_PATH}/include/RetroCode/Math.h
        DESTINATION "${CURRENT_PACKAGES_DIR}/include")

endif()


vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")