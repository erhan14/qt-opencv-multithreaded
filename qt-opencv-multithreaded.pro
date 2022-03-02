QT += core gui

QT_CONFIG -= no-pkg-config

#QMAKE_CXXFLAGS += -Wall
LIBS += `pkg-config --libs /home/inventron/repo/sdk/imx8/sysroots/aarch64-poky-linux/usr/lib/pkgconfig/opencv4.pc`
QMAKE_CXXFLAGS += `pkg-config --cflags /home/inventron/repo/sdk/imx8/sysroots/aarch64-poky-linux/usr/lib/pkgconfig/opencv4.pc`

CONFIG += link_pkgconfig
#PKGCONFIG += opencv

PKGCONFIG += gstreamer-1.0
PKGCONFIG += gstreamer-base-1.0

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /home/root/
!isEmpty(target.path): INSTALLS += target


greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = qt-opencv-multithreaded
TEMPLATE = app

DEFINES += APP_VERSION=\\\"1.3.3\\\"

SOURCES += main.cpp \
    MainWindow.cpp \
    MatToQImage.cpp \
    FrameLabel.cpp \
    CameraView.cpp \
    ProcessingThread.cpp \
    CaptureThread.cpp \
    CameraConnectDialog.cpp \
    ImageProcessingSettingsDialog.cpp \
    SharedImageBuffer.cpp

HEADERS += \
    MainWindow.h \
    Config.h \
    MatToQImage.h \
    FrameLabel.h \
    Structures.h \
    CameraView.h \
    ProcessingThread.h \
    CaptureThread.h \
    CameraConnectDialog.h \
    ImageProcessingSettingsDialog.h \
    SharedImageBuffer.h \
    Buffer.h

FORMS += \
    MainWindow.ui \
    CameraView.ui \
    CameraConnectDialog.ui \
    ImageProcessingSettingsDialog.ui


