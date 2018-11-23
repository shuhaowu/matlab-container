source /opt/matlab-env.sh

_expected_mac="$MATLAB_MAC_ADDRESS"
_current_mac=$(cat /sys/class/net/eth0/address)
if [ "$_current_mac" != "$_expected_mac" ]; then
  echo "WARNING: MAC ADDRESS CHANGE DETECTED (IS $_current_mac SHOULD BE $_expected_mac)" >&2
  echo "WARNING: MAC ADDRESS CHANGE DETECTED (IS $_current_mac SHOULD BE $_expected_mac)" >&2
  echo "WARNING: MAC ADDRESS CHANGE DETECTED (IS $_current_mac SHOULD BE $_expected_mac)" >&2
  echo "WARNING: MAC ADDRESS CHANGE DETECTED (IS $_current_mac SHOULD BE $_expected_mac)" >&2
fi

echo "Expected MAC: $_expected_mac"
echo "Current MAC:  $_current_mac"

export PATH=/opt/MATLAB/R2018b/bin:$PATH
