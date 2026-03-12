# Compile with GCC for smaller size
# 32bit does't support llvm build, use chroot environment
scons platform=linuxbsd target=template_release arch=x86_32
scons platform=linuxbsd target=template_debug arch=x86_32
scons platform=linuxbsd target=template_release arch=x86_64 use_llvm=yes
scons platform=linuxbsd target=template_debug arch=x86_64 use_llvm=yes
scons platform=linuxbsd target=template_release arch=arm32 use_llvm=yes
scons platform=linuxbsd target=template_debug arch=arm32 use_llvm=yes
scons platform=linuxbsd target=template_release arch=arm64 use_llvm=yes
scons platform=linuxbsd target=template_debug arch=arm64 use_llvm=yes
