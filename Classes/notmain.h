#ifndef NOTMAIN_H
#define NOTMAIN_H

#include <QObject>


class NotMain : public QObject
{
    Q_OBJECT
public:
    explicit NotMain(QObject *parent = nullptr);

signals:

private :
};

#endif // NOTMAIN_H
