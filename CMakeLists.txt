cmake_minimum_required(VERSION 3.16)

project(InOut VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appInOut
    main.cpp
)

qt_add_qml_module(appInOut
    URI InOut
    VERSION 1.0
    QML_FILES
        Main.qml
        RESOURCES android/AndroidManifest.xml android/build.gradle android/res/values/libs.xml android/res/xml/qtprovider_paths.xml android/gradle/wrapper/gradle-wrapper.jar android/gradle/wrapper/gradle-wrapper.properties android/gradle.properties android/gradlew android/gradlew.bat
        android/src/main/MainActivtiy.java
        RESOURCES android/AndroidManifest.xml
        SOURCES splashscreencontroller.h splashscreencontroller.cpp
        RESOURCES android/res/values/themes.xml
)
qt_add_resources(appInOut "app_images"
    PREFIX "/"
    FILES
       assets/icon.png
)
add_subdirectory(SignIn/)
add_subdirectory(Classes/)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appInOut PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appInOut
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appInOut
    PRIVATE Qt6::Quick signInplugin signIn classes
)
set_property(TARGET appInOut APPEND PROPERTY
    QT_ANDROID_PACKAGE_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/android
)

include(GNUInstallDirs)
install(TARGETS appInOut
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
