INCLUDEPATH += ../Classes

win32 {
  QMAKE_CXXFLAGS += -Wall -Wextra -Weffc++ -Werror -std=c++1y
}

unix:!macx {
  QMAKE_CXX = g++-5
  QMAKE_LINK = g++-5
  QMAKE_CC = gcc-5
  QMAKE_CXXFLAGS += -Wall -Wextra -Weffc++ -Werror -std=c++14
}

# No use of QT, as the Nintendo DS does not support Qt
QT -= core gui

CONFIG   += console
CONFIG   -= app_bundle
TEMPLATE = app

#
#
# Type of compile
#
#

CONFIG(release, debug|release) {
  DEFINES += NDEBUG NTRACE_BILDERBIKKEL
}

include(../Classes/CityOfThievesConsole.pri)
include(../Files/Files.pri)

SOURCES += main.cpp
