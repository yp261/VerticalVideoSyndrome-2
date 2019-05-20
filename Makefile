include $(THEOS)/makefiles/common.mk

TWEAK_NAME = VerticalVideoSyndrome2
VerticalVideoSyndrome2_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk
ARCHS = armv7 armv7s arm64 arm64e
after-install::
	install.exec "killall -9 Camera"
