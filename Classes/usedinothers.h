#ifndef USEDINOTHERS_H
#define USEDINOTHERS_H

#include <QObject>
class NotMain;

class UsedInOthers : public QObject
{
    Q_OBJECT
public:
    explicit UsedInOthers(QObject *parent = nullptr);

signals:

private :
    NotMain* notMain;

};

#endif // USEDINOTHERS_H
