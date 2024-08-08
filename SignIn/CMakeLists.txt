set(CMAKE_AUTORCC ON)

qt_add_library(signIn STATIC
)
target_link_libraries(signIn PRIVATE Qt6::Core classes)
target_include_directories(signIn INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})
qt_add_qml_module(signIn
    URI signIn
    VERSION 1.0
    QML_FILES
    SignIn.qml
    SOURCES signinviewmodel.h signinviewmodel.cpp
    QML_FILES
    QML_FILES Logo.qml
    QML_FILES Welcome.qml
    QML_FILES LoginForum.qml


)
