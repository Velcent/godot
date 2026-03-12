scons p=ios target=template_debug
scons p=ios target=template_release
scons p=ios target=template_debug ios_simulator=yes arch=x86_64
scons p=ios target=template_debug ios_simulator=yes arch=arm64
cp -r misc/dist/ios_xcode bin
cd bin
cp libgodot.ios.template_debug.arm64.a ios_xcode/libgodot.ios.debug.xcframework/ios-arm64/libgodot.a
lipo -create libgodot.ios.template_debug.arm64.simulator.a libgodot.ios.template_debug.x86_64.simulator.a -output ios_xcode/libgodot.ios.debug.xcframework/ios-arm64_x86_64-simulator/libgodot.a
cp libgodot.ios.template_release.arm64.a ios_xcode/libgodot.ios.release.xcframework/ios-arm64/libgodot.a
lipo -create libgodot.ios.template_release.arm64.simulator.a libgodot.ios.template_release.x86_64.simulator.a -output ios_xcode/libgodot.ios.release.xcframework/ios-arm64_x86_64-simulator/libgodot.a
cd ios_xcode
# Copy your MoltenVK.xcframework to folder ios_xcode before packing
zip -q -9 -r ios.zip .
