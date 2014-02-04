all: setup test

setup:
	`which pod > /dev/null` || sudo gem install cocoapods
	cd Project && pod install

test:
	cd Project && xcodebuild test -workspace IdentifyDemo.xcworkspace -scheme IdentifyDemo -sdk iphonesimulator ONLY_ACTIVE_ARCH=NO
