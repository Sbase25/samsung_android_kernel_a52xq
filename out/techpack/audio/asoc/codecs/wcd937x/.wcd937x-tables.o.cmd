cmd_techpack/audio/asoc/codecs/wcd937x/wcd937x-tables.o := /home/stijn/samsung_android_kernel_a52xq/toolchain/clang/host/linux-x86/clang-r383902/bin/clang -Wp,-MD,techpack/audio/asoc/codecs/wcd937x/.wcd937x-tables.o.d -nostdinc -isystem /home/stijn/samsung_android_kernel_a52xq/toolchain/clang/host/linux-x86/clang-r383902/lib64/clang/11.0.1/include -I../arch/arm64/include -I./arch/arm64/include/generated  -I../include -I./include -I../arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I../include/uapi -I./include/generated/uapi -include ../include/linux/kconfig.h -I../techpack/audio/include/uapi -I../techpack/audio/include -include ../techpack/audio/config/lito_a52.h -include ../include/linux/compiler_types.h  -I../techpack/audio/asoc/codecs/wcd937x -Itechpack/audio/asoc/codecs/wcd937x -D__KERNEL__ -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT=3 -Qunused-arguments -DANI_LITTLE_BYTE_ENDIAN -DANI_LITTLE_BIT_ENDIAN -DDOT11F_LITTLE_ENDIAN_HOST -DANI_COMPILER_TYPE_GCC -DANI_OS_TYPE_ANDROID=6 -DPTT_SOCK_SVC_ENABLE -Wall -Werror -D__linux__ -DANI_LITTLE_BYTE_ENDIAN -DANI_LITTLE_BIT_ENDIAN -DDOT11F_LITTLE_ENDIAN_HOST -DANI_COMPILER_TYPE_GCC -DANI_OS_TYPE_ANDROID=6 -DPTT_SOCK_SVC_ENABLE -Wall -Werror -D__linux__ -DANI_LITTLE_BYTE_ENDIAN -DANI_LITTLE_BIT_ENDIAN -DDOT11F_LITTLE_ENDIAN_HOST -DANI_COMPILER_TYPE_GCC -DANI_OS_TYPE_ANDROID=6 -DPTT_SOCK_SVC_ENABLE -Wall -Werror -D__linux__ -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -Werror-implicit-function-declaration -Wno-format-security -std=gnu89 --target=aarch64-linux-gnu --prefix=/home/stijn/samsung_android_kernel_a52xq/toolchain/toolchains-gcc-10.3.0/bin/aarch64-buildroot-linux-gnu- --gcc-toolchain=/home/stijn/samsung_android_kernel_a52xq/toolchain/toolchains-gcc-10.3.0 -no-integrated-as -Wno-misleading-indentation -Wno-bool-operation -Werror=unknown-warning-option -Wno-unsequenced -fno-PIE -mno-implicit-float -DCONFIG_AS_LSE=1 -fno-asynchronous-unwind-tables -DKASAN_SHADOW_SCALE_SHIFT=3 -fno-delete-null-pointer-checks -Wno-int-in-bool-context -Wno-address-of-packed-member -O2 -Wframe-larger-than=2048 -fstack-protector-strong --target=aarch64-linux-gnu --gcc-toolchain=/home/stijn/samsung_android_kernel_a52xq/toolchain/toolchains-gcc-10.3.0 -meabi gnu -Wno-format-invalid-specifier -Wno-gnu -Wno-duplicate-decl-specifier -Wno-asm-operand-widths -Wno-initializer-overrides -Wno-tautological-constant-out-of-range-compare -Wno-tautological-compare -mno-global-merge -Wno-unused-const-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -Wvla -g -Wdeclaration-after-statement -Wno-pointer-sign -Wno-array-bounds -fno-strict-overflow -fno-merge-all-constants -fno-stack-check -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -fmacro-prefix-map=../= -Wno-initializer-overrides -Wno-unused-value -Wno-format -Wno-sign-compare -Wno-format-zero-length -Wno-uninitialized -w  -I/kernel/msm-4.19/techpack/audio/include  -I/kernel/msm-4.19/techpack/audio/include/uapi -Wmaybe-uninitialized -Wheader-guard    -DKBUILD_BASENAME='"wcd937x_tables"' -DKBUILD_MODNAME='"wcd937x_dlkm"' -c -o techpack/audio/asoc/codecs/wcd937x/.tmp_wcd937x-tables.o ../techpack/audio/asoc/codecs/wcd937x/wcd937x-tables.c

source_techpack/audio/asoc/codecs/wcd937x/wcd937x-tables.o := ../techpack/audio/asoc/codecs/wcd937x/wcd937x-tables.c

deps_techpack/audio/asoc/codecs/wcd937x/wcd937x-tables.o := \
  ../include/linux/kconfig.h \
    $(wildcard include/config/cpu/big/endian.h) \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
  ../techpack/audio/config/lito_a52.h \
    $(wildcard include/config/pinctrl/lpi.h) \
    $(wildcard include/config/audio/ext/clk.h) \
    $(wildcard include/config/snd/soc/wcd9xxx/v2.h) \
    $(wildcard include/config/snd/soc/wcd/mbhc.h) \
    $(wildcard include/config/snd/soc/wsa881x.h) \
    $(wildcard include/config/snd/soc/wsa883x.h) \
    $(wildcard include/config/wcd9xxx/codec/core/v2.h) \
    $(wildcard include/config/msm/cdc/pinctrl.h) \
    $(wildcard include/config/msm/qdsp6v2/codecs.h) \
    $(wildcard include/config/msm/ultrasound.h) \
    $(wildcard include/config/msm/qdsp6/aprv2/rpmsg.h) \
    $(wildcard include/config/snd/soc/msm/qdsp6v2/intf.h) \
    $(wildcard include/config/msm/adsp/loader.h) \
    $(wildcard include/config/regmap/swr.h) \
    $(wildcard include/config/msm/qdsp6/ssr.h) \
    $(wildcard include/config/msm/qdsp6/pdr.h) \
    $(wildcard include/config/msm/qdsp6/notifier.h) \
    $(wildcard include/config/snd/soc/msm/hostless/pcm.h) \
    $(wildcard include/config/soundwire.h) \
    $(wildcard include/config/soundwire/mstr/ctrl.h) \
    $(wildcard include/config/snd/soc/wcd/mbhc/adc.h) \
    $(wildcard include/config/snd/soc/qdsp6v2.h) \
    $(wildcard include/config/snd/soc/msm/hdmi/codec/rx.h) \
    $(wildcard include/config/qti/pp.h) \
    $(wildcard include/config/snd/hwdep/routing.h) \
    $(wildcard include/config/snd/soc/msm/stub.h) \
    $(wildcard include/config/msm/avtimer.h) \
    $(wildcard include/config/snd/soc/bolero.h) \
    $(wildcard include/config/wsa/macro.h) \
    $(wildcard include/config/va/macro.h) \
    $(wildcard include/config/rx/macro.h) \
    $(wildcard include/config/tx/macro.h) \
    $(wildcard include/config/digital/cdc/rsc/mgr.h) \
    $(wildcard include/config/snd/soc/wcd/irq.h) \
    $(wildcard include/config/snd/soc/wcd938x.h) \
    $(wildcard include/config/snd/soc/wcd938x/slave.h) \
    $(wildcard include/config/snd/soc/wcd937x.h) \
    $(wildcard include/config/snd/soc/wcd937x/slave.h) \
    $(wildcard include/config/snd/soc/lito.h) \
    $(wildcard include/config/snd/event.h) \
    $(wildcard include/config/mi2s/disable.h) \
    $(wildcard include/config/tdm/disable.h) \
    $(wildcard include/config/auxpcm/disable.h) \
    $(wildcard include/config/snd/soc/tas256x.h) \
    $(wildcard include/config/tas25xx/algo.h) \
    $(wildcard include/config/platform/qcom.h) \
    $(wildcard include/config/tas256x/regmap.h) \
    $(wildcard include/config/tas256x/misc.h) \
    $(wildcard include/config/tas256x/codec.h) \
    $(wildcard include/config/tas25xx/calib/val/big.h) \
    $(wildcard include/config/sec/snd/primary.h) \
    $(wildcard include/config/sec/snd/adaptation.h) \
    $(wildcard include/config/snd/soc/wcd/mbhc/slow/det.h) \
    $(wildcard include/config/snd/soc/imped/sensing.h) \
    $(wildcard include/config/sec/snd/debug.h) \
  ../include/linux/compiler_types.h \
    $(wildcard include/config/have/arch/compiler/h.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  ../include/linux/compiler-clang.h \
    $(wildcard include/config/cfi/clang.h) \
    $(wildcard include/config/lto/clang.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  ../include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  ../include/uapi/linux/types.h \
  arch/arm64/include/generated/uapi/asm/types.h \
  ../include/uapi/asm-generic/types.h \
  ../include/asm-generic/int-ll64.h \
  ../include/uapi/asm-generic/int-ll64.h \
  ../arch/arm64/include/uapi/asm/bitsperlong.h \
  ../include/asm-generic/bitsperlong.h \
  ../include/uapi/asm-generic/bitsperlong.h \
  ../include/uapi/linux/posix_types.h \
  ../include/linux/stddef.h \
  ../include/uapi/linux/stddef.h \
  ../arch/arm64/include/uapi/asm/posix_types.h \
  ../include/uapi/asm-generic/posix_types.h \
  ../techpack/audio/asoc/codecs/wcd937x/wcd937x-registers.h \

techpack/audio/asoc/codecs/wcd937x/wcd937x-tables.o: $(deps_techpack/audio/asoc/codecs/wcd937x/wcd937x-tables.o)

$(deps_techpack/audio/asoc/codecs/wcd937x/wcd937x-tables.o):
