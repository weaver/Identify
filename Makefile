all: setup test

setup:
	`which pod > /dev/null` || sudo gem install cocoapods
	cd Project && pod install

test:
	# https://github.com/facebook/xctool/issues/245
	cd Project && xcodebuild test -workspace IdentifyDemo.xcworkspace -scheme IdentifyDemo -sdk iphonesimulator ONLY_ACTIVE_ARCH=NO
