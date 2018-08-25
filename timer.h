/*
CoreTime is a time related task app

CoreTime is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; version 2
of the License.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, see {http://www.gnu.org/licenses/}. */

#ifndef TIMER_H
#define TIMER_H

#include "alarm.h"
#include "schedulecollection.h"

#include <QObject>
#include <QDateTime>
#include <QList>


class Timer : public QObject
{
    Q_OBJECT

public:
    void StartTimer(Alarm*);
    explicit Timer(QObject *parent = nullptr,ScheduleCollection* Collection=nullptr);

private:
    Alarm *_CurAlarm;
    ScheduleCollection *_Schedules;

private slots:
    void AlarmCheck();

};

#endif // TIMER_H
