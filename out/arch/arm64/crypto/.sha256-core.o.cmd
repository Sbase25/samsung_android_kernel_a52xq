cmd_arch/arm64/crypto/sha256-core.o := /home/stijn/samsung_android_kernel_a52xq/toolchain/clang/host/linux-x86/clang-r383902/bin/clang -Wp,-MD,arch/arm64/crypto/.sha256-core.o.d -nostdinc -isystem /home/stijn/samsung_android_kernel_a52xq/toolchain/clang/host/linux-x86/clang-r383902/lib64/clang/11.0.1/include -I../arch/arm64/include -I./arch/arm64/include/generated  -I../include -I./include -I../arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I../include/uapi -I./include/generated/uapi -include ../include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT=3 -Qunused-arguments -D__ASSEMBLY__ --target=aarch64-linux-gnu --prefix=/home/stijn/samsung_android_kernel_a52xq/toolchain/toolchains-gcc-10.3.0/bin/aarch64-buildroot-linux-gnu- --gcc-toolchain=/home/stijn/samsung_android_kernel_a52xq/toolchain/toolchains-gcc-10.3.0 -no-integrated-as -Wno-misleading-indentation -Wno-bool-operation -Werror=unknown-warning-option -Wno-unsequenced -fno-PIE -DCONFIG_AS_LSE=1 -DKASAN_SHADOW_SCALE_SHIFT=3 --target=aarch64-linux-gnu --gcc-toolchain=/home/stijn/samsung_android_kernel_a52xq/toolchain/toolchains-gcc-10.3.0 -Wa,-gdwarf-2   -c -o arch/arm64/crypto/sha256-core.o arch/arm64/crypto/sha256-core.S

source_arch/arm64/crypto/sha256-core.o := arch/arm64/crypto/sha256-core.S

deps_arch/arm64/crypto/sha256-core.o := \
  ../include/linux/kconfig.h \
    $(wildcard include/config/cpu/big/endian.h) \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \

arch/arm64/crypto/sha256-core.o: $(deps_arch/arm64/crypto/sha256-core.o)

$(deps_arch/arm64/crypto/sha256-core.o):
