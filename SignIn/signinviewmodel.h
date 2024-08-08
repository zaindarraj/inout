#ifndef SIGNINVIEWMODEL_H
#define SIGNINVIEWMODEL_H

#include <QObject>
#include <QQmlEngine>
#include<usedinothers.h>
class SignInViewModel : public QObject
{
    Q_OBJECT
    QML_ELEMENT
public:
    explicit SignInViewModel(QObject *parent = nullptr);

signals:
};

#endif // SIGNINVIEWMODEL_H
