#ifndef SPLASHSCREENCONTROLLER_H
#define SPLASHSCREENCONTROLLER_H

#include <QObject>
#include <QQmlEngine>

class SplashScreenController : public QObject
{
    Q_OBJECT
    QML_ELEMENT
public:
    explicit SplashScreenController(QObject *parent = nullptr);

signals:

public slots :
    void removeSplashScreen();
};

#endif // SPLASHSCREENCONTROLLER_H
