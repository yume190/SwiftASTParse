ast:
	@swiftc -dump-ast \
		-sdk `xcrun --show-sdk-path --sdk iphonesimulator` \
		-target x86_64-apple-ios12.0-simulator \
		-suppress-warnings \
		sample.swift 

ast2:
	@swiftc -dump-ast \
		-sdk `xcrun --show-sdk-path --sdk iphonesimulator` \
		-target x86_64-apple-ios12.0-simulator \
		-suppress-warnings \
		sample2.swift 

openP:
	swift run | grep openParen | wc -l
closeP:
	swift run | grep closeParen | wc -l
pp:
	swift run | grep "))" | grep keyValue | wc -l
pp2:
	swift run | grep "))" | grep keyValue

stest:
	swift test | xcpretty

test: stest openP closeP
