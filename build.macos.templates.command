scons platform=macos target=template_release arch=x86_64
scons platform=macos target=template_debug arch=x86_64
scons platform=macos target=template_release arch=arm64
scons platform=macos target=template_debug arch=arm64
cp -r misc/dist/macos_template.app bin
cd bin
lipo -create godot.macos.template_release.x86_64 godot.macos.template_release.arm64 -output godot.macos.template_release.universal
lipo -create godot.macos.template_debug.x86_64 godot.macos.template_debug.arm64 -output godot.macos.template_debug.universal
mkdir -p macos_template.app/Contents/MacOS
cp godot.macos.template_release.universal macos_template.app/Contents/MacOS/godot_macos_release.universal
cp godot.macos.template_debug.universal macos_template.app/Contents/MacOS/godot_macos_debug.universal
chmod +x macos_template.app/Contents/MacOS/godot_macos*
zip -q -9 -r macos.zip macos_template.app
