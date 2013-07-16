#-------------------------------------------------
#
# Project created by QtCreator 2011-03-22T19:33:11
#
#-------------------------------------------------

QT       += gui
TEMPLATE = lib
CONFIG += plugin
VERSION = 1.0.1
PLUGIN_NAME=tank

GENERATED_DIR = ../../generated/plugin/tank
# Use common project definitions.
include(../../common.pro)

# For plugins
INCLUDEPATH    += ../../librecad/src/plugins

SOURCES += tank.cpp

HEADERS += tank.h


# DLLDESTDIR = ../../unix/resources/plugins/
win32 {
        DLLDESTDIR = ../../windows/resources/plugins
        TARGET = $$tank
}
unix {
    macx { 
        TARGET = ../../LibreCAD.app/Contents/Resources/plugins/$$tank
    }
    else { 
        TARGET = ../../unix/resources/plugins/$$tank
    }
}
