QT += widgets

TARGET = qvbf
TEMPLATE = app

SOURCES += main.cpp vbffile.cpp vbfmodel.cpp wdg_hexview.cpp lzss.cpp
HEADERS += main.h vbffile.h vbfmodel.h wdg_hexview.h spinbox.h lzss.h
FORMS += main.ui

RESOURCES += qvbf.qrc

CONFIG += static

static {

	win32 {

		#QTPLUGIN += qico
		QMAKE_LFLAGS += -static -static-libgcc
	}
}

QMAKE_CXXFLAGS_RELEASE = -Wall -g -O0
QMAKE_CFLAGS_RELEASE = -Wall -g -O0
win32 {
	QMAKE_POST_LINK=$$QMAKE_STRIP release/$(TARGET)
}
