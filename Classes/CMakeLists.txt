qt_add_library(classes STATIC)
target_link_libraries(classes PRIVATE Qt6::Core)
target_include_directories(classes INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})
qt_add_qml_module(classes
    URI classes
    VERSION 1.0
    QML_FILES
    SOURCES usedinothers.h usedinothers.cpp
    QML_FILES
    SOURCES notmain.h notmain.cpp
)

