#!/system/bin/sh
#setenforce 0 && getenforce
chmod 666 /d/regmap/0-0034/address
chmod 666 /d/regmap/0-0034/data
ls -l /d/regmap/0-0034/
echo 0 > /sys/bus/i2c/devices/0-0034/enable
sleep 0.1;
echo 1 > /sys/bus/i2c/devices/0-0034/enable
sleep 0.1;
echo 2 > /sys/bus/i2c/devices/0-0034/test_mode
chmod 666 /sys/devices/platform/soc/ac4a000.qcom,cci/ac4a000.qcom,cci\:qcom,cam-sensor@3/mv_operate_sensor_read_regs
chmod 666 /sys/devices/platform/soc/ac4a000.qcom,cci/ac4a000.qcom,cci\:qcom,cam-sensor@3/mv_operate_sensor_write_regs
ls -l /sys/devices/platform/soc/ac4a000.qcom,cci/ac4a000.qcom,cci\:qcom,cam-sensor@3/mv_*
echo 0x0 > /d/regmap/0-0034/address
cat /d/regmap/0-0034/data
