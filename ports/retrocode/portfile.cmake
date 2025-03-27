vcpkg_from_git(
    OUT_SOURCE_PATH SOURCE_PATH
    URL https://github.com/Retro-Technique/RetroCode
    REF d2c6a52d1412f0f00a6a8198c4986db4ee5f9dd2
)

if("collection" IN_LIST FEATURES)

    vcpkg_msbuild_install(
        SOURCE_PATH "${SOURCE_PATH}"
        PROJECT_SUBPATH "VisualC/RetroCode.sln"
        INCLUDES_SUBPATH "include"
        USE_VCPKG_INTEGRATION
        TARGET RetroCode\\RetroCode-Collection
        RELEASE_CONFIGURATION "Release"
        DEBUG_CONFIGURATION "Debug"
        ALLOW_ROOT_INCLUDES
        PLATFORM ${VCPKG_TARGET_ARCHITECTURE}
    )

    vcpkg_copy_pdbs()

    file(GLOB HEADER_FILES LIST_DIRECTORIES false "${SOURCE_PATH}/include/RetroCode/Collection/*.h")
    file(INSTALL
        ${HEADER_FILES}
        DESTINATION "${CURRENT_PACKAGES_DIR}/include/RetroCode/Collection")

    file(INSTALL
        ${SOURCE_PATH}/include/RetroCode/Collection.h
        DESTINATION "${CURRENT_PACKAGES_DIR}/include/RetroCode")

endif()

if("image" IN_LIST FEATURES)

    vcpkg_msbuild_install(
        SOURCE_PATH "${SOURCE_PATH}"
        PROJECT_SUBPATH "VisualC/RetroCode.sln"
        INCLUDES_SUBPATH "include"
        USE_VCPKG_INTEGRATION
        TARGET RetroCode\\RetroCode-Image
        RELEASE_CONFIGURATION "Release"
        DEBUG_CONFIGURATION "Debug"
        ALLOW_ROOT_INCLUDES
        PLATFORM ${VCPKG_TARGET_ARCHITECTURE}
    )

    vcpkg_copy_pdbs()

    file(GLOB HEADER_FILES LIST_DIRECTORIES false "${SOURCE_PATH}/include/RetroCode/Image/*.h")
    file(INSTALL
        ${HEADER_FILES}
        DESTINATION "${CURRENT_PACKAGES_DIR}/include/RetroCode/Image")

    file(INSTALL
        ${SOURCE_PATH}/include/RetroCode/Image.h
        DESTINATION "${CURRENT_PACKAGES_DIR}/include/RetroCode")

endif()
  
if("math" IN_LIST FEATURES)

    vcpkg_msbuild_install(
        SOURCE_PATH "${SOURCE_PATH}"
        PROJECT_SUBPATH "VisualC/RetroCode.sln"
        INCLUDES_SUBPATH "include"
        USE_VCPKG_INTEGRATION
        TARGET RetroCode\\RetroCode-Math
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
        DESTINATION "${CURRENT_PACKAGES_DIR}/include/RetroCode")

endif()

if("memory" IN_LIST FEATURES)

    vcpkg_msbuild_install(
        SOURCE_PATH "${SOURCE_PATH}"
        PROJECT_SUBPATH "VisualC/RetroCode.sln"
        INCLUDES_SUBPATH "include"
        USE_VCPKG_INTEGRATION
        TARGET RetroCode\\RetroCode-Memory
        RELEASE_CONFIGURATION "Release"
        DEBUG_CONFIGURATION "Debug"
        ALLOW_ROOT_INCLUDES
        PLATFORM ${VCPKG_TARGET_ARCHITECTURE}
    )

    vcpkg_copy_pdbs()

    file(GLOB HEADER_FILES LIST_DIRECTORIES false "${SOURCE_PATH}/include/RetroCode/Memory/*.h")
    file(INSTALL
        ${HEADER_FILES}
        DESTINATION "${CURRENT_PACKAGES_DIR}/include/RetroCode/Memory")

    file(INSTALL
        ${SOURCE_PATH}/include/RetroCode/Memory.h
        DESTINATION "${CURRENT_PACKAGES_DIR}/include/RetroCode")

endif()

if("multimedia" IN_LIST FEATURES)

    vcpkg_msbuild_install(
        SOURCE_PATH "${SOURCE_PATH}"
        PROJECT_SUBPATH "VisualC/RetroCode.sln"
        INCLUDES_SUBPATH "include"
        USE_VCPKG_INTEGRATION
        TARGET RetroCode\\RetroCode-Multimedia
        RELEASE_CONFIGURATION "Release"
        DEBUG_CONFIGURATION "Debug"
        ALLOW_ROOT_INCLUDES
        PLATFORM ${VCPKG_TARGET_ARCHITECTURE}
    )

    vcpkg_copy_pdbs()

    file(GLOB HEADER_FILES LIST_DIRECTORIES false "${SOURCE_PATH}/include/RetroCode/Multimedia/*.h")
    file(INSTALL
        ${HEADER_FILES}
        DESTINATION "${CURRENT_PACKAGES_DIR}/include/RetroCode/Multimedia")

    file(INSTALL
        ${SOURCE_PATH}/include/RetroCode/Multimedia.h
        DESTINATION "${CURRENT_PACKAGES_DIR}/include/RetroCode")

endif()

if("time" IN_LIST FEATURES)

    vcpkg_msbuild_install(
        SOURCE_PATH "${SOURCE_PATH}"
        PROJECT_SUBPATH "VisualC/RetroCode.sln"
        INCLUDES_SUBPATH "include"
        USE_VCPKG_INTEGRATION
        TARGET RetroCode\\RetroCode-Time
        RELEASE_CONFIGURATION "Release"
        DEBUG_CONFIGURATION "Debug"
        ALLOW_ROOT_INCLUDES
        PLATFORM ${VCPKG_TARGET_ARCHITECTURE}
    )

    vcpkg_copy_pdbs()

    file(GLOB HEADER_FILES LIST_DIRECTORIES false "${SOURCE_PATH}/include/RetroCode/Time/*.h")
    file(INSTALL
        ${HEADER_FILES}
        DESTINATION "${CURRENT_PACKAGES_DIR}/include/RetroCode/Time")

    file(INSTALL
        ${SOURCE_PATH}/include/RetroCode/Time.h
        DESTINATION "${CURRENT_PACKAGES_DIR}/include/RetroCode")

endif()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
