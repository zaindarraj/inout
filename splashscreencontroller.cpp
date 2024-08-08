#include "splashscreencontroller.h"
#include <QCoreApplication>

SplashScreenController::SplashScreenController(QObject *parent)
    : QObject{parent}
{}

void SplashScreenController::removeSplashScreen()
{
    QNativeInterface::QAndroidApplication::hideSplashScreen(1);
}
