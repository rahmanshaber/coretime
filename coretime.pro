#-------------------------------------------------
#
# Project created by QtCreator 2018-08-20T09:12:54
#
#-------------------------------------------------

QT       += core gui widgets multimedia multimediawidgets

TARGET = coretime
TEMPLATE = app

DEFINES += QT_DEPRECATED_WARNINGS

CONFIG += c++11
CONFIG += silent warn_on shared_and_static

# library for theme
unix:!macx: LIBS += -lcprime

FORMS += \
    coretime.ui \
    snooze.ui

HEADERS += \
    alarm.h \
    coretime.h \
    fileio.h \
    schedule.h \
    schedulecollection.h \
    snooze.h \
    timer.h

SOURCES += \
    alarm.cpp \
    coretime.cpp \
    fileio.cpp \
    main.cpp \
    schedule.cpp \
    schedulecollection.cpp \
    snooze.cpp \
    timer.cpp

RESOURCES += \
    icons.qrc

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


