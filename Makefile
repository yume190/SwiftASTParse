ast:
	swiftc -dump-ast \
	-sdk `xcrun --show-sdk-path --sdk iphonesimulator` \
	-target x86_64-apple-ios12.0-simulator \
	-suppress-warnings \
	/Users/yume/git/TypeFill/example/sample.swift 

openP:
	swift run | grep openParen | wc -l
closeP:
	swift run | grep closeParen | wc -l
pp:
	swift run | grep "))" | grep keyValue | wc -l
pp2:
	swift run | grep "))" | grep keyValue

test: openP closeP pp pp2