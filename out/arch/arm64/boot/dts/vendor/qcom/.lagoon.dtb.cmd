cmd_arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon.dtb := mkdir -p arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/ ; /home/stijn/samsung_android_kernel_a52xq/toolchain/clang/host/linux-x86/clang-r383902/bin/clang -E -Wp,-MD,arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/.lagoon.dtb.d.pre.tmp -nostdinc -I../scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/.lagoon.dtb.dts.tmp ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon.dts ; /home/stijn/samsung_android_kernel_a52xq/tools/dtc -O dtb -o arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon.dtb -b 0 -i../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/ -i../scripts/dtc/include-prefixes -@ -Wno-unit_address_vs_reg  -Wno-unit_address_vs_reg  -Wno-unit_address_vs_reg  -q -d arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/.lagoon.dtb.d.dtc.tmp arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/.lagoon.dtb.dts.tmp 2>arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon.dtb.dtout || ( cat  arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon.dtb.dtout; for err in "$$(cat  arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon.dtb.dtout | grep 'Error:')"; do echo "See more detail error as below:"; cat $$(echo $$err | cut -d':' -f2) | awk '{printf("ERROR: %6d  %s\n"), NR, $$0}' | head -n $$(echo $$err | grep -Eo ':[0-9]+' | cut -d':' -f2) | tail -n 2; done; rm  arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon.dtb.dtout; false; ) ; /home/stijn/samsung_android_kernel_a52xq/tools/dtc -O dts -I dtb -q -o arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon.dtb.reverse.dts arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon.dtb ; cat arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/.lagoon.dtb.d.pre.tmp arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/.lagoon.dtb.d.dtc.tmp > arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/.lagoon.dtb.d

source_arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon.dtb := ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon.dts

deps_arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon.dtb := \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon.dtsi \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/qcom,aop-qmp.h \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/qcom,camcc-lagoon.h \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/qcom,dispcc-lagoon.h \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gcc-lagoon.h \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gpucc-lagoon.h \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/qcom,npucc-lagoon.h \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/qcom,rpmh.h \
  ../scripts/dtc/include-prefixes/dt-bindings/regulator/qcom,rpmh-regulator-levels.h \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/qcom,videocc-lagoon.h \
  ../scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/arm-gic.h \
  ../scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/irq.h \
  ../scripts/dtc/include-prefixes/dt-bindings/soc/qcom,rpmh-rsc.h \
  ../scripts/dtc/include-prefixes/dt-bindings/soc/qcom,ipcc.h \
  ../scripts/dtc/include-prefixes/dt-bindings/soc/qcom,dcc_v2.h \
  ../scripts/dtc/include-prefixes/dt-bindings/msm/msm-bus-ids.h \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon-gdsc.dtsi \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon-usb.dtsi \
  ../scripts/dtc/include-prefixes/dt-bindings/phy/qcom,lagoon-qmp-usb3.h \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon-gpu.dtsi \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon-npu.dtsi \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/camera/lagoon-camera.dtsi \
  ../scripts/dtc/include-prefixes/dt-bindings/msm/msm-camera.h \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/msm-arm-smmu-lagoon.dtsi \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon-pinctrl.dtsi \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon-pm.dtsi \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon-regulators.dtsi \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon-coresight.dtsi \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/pm6350.dtsi \
  ../scripts/dtc/include-prefixes/dt-bindings/input/input.h \
  ../scripts/dtc/include-prefixes/dt-bindings/input/linux-event-codes.h \
  ../scripts/dtc/include-prefixes/dt-bindings/input/qcom,qpnp-power-on.h \
  ../scripts/dtc/include-prefixes/dt-bindings/spmi/spmi.h \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/pm7250b.dtsi \
  ../scripts/dtc/include-prefixes/dt-bindings/iio/qcom,spmi-vadc.h \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/pm6150l.dtsi \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/pmk8350.dtsi \
  ../scripts/dtc/include-prefixes/dt-bindings/iio/qcom,spmi-adc7-pmk8350.h \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon-ion.dtsi \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon-qupv3.dtsi \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon-audio.dtsi \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/qcom,audio-ext-clk.h \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/msm-audio-lpass.dtsi \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/ipcc-test-lagoon.dtsi \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/ipcc-test.dtsi \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon-vidc.dtsi \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/pm8008.dtsi \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon-bus.dtsi \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon-thermal.dtsi \
  ../scripts/dtc/include-prefixes/dt-bindings/thermal/thermal.h \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/sdxprairie-thermal-integrated.dtsi \
  ../scripts/dtc/include-prefixes/dt-bindings/thermal/qmi_thermal.h \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon-sde.dtsi \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/mdss-10nm-pll-clk.h \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon-sde-pll.dtsi \
  ../arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/msm-rdbg.dtsi \

arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon.dtb: $(deps_arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon.dtb)

$(deps_arch/arm64/boot/dts/samsung/a52/a52xq/../../../vendor/qcom/lagoon.dtb):
