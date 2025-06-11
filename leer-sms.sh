# Full instructions: http://manpages.ubuntu.com/manpages/bionic/en/man8/mmcli.8.html
# Examples: http://manpages.ubuntu.com/manpages/bionic/en/man8/mmcli.8.html#examples
# Supported modems: https://www.freedesktop.org/wiki/Software/ModemManager/SupportedDevices/

# Get list of connected modems.
mmcli --list-modems
# Output:
# Found 1 modems:
#	  /org/freedesktop/ModemManager1/Modem/1 [huawei] E3531
# The number at the end of the path is the modem index.
# In this case, that's the 1. We will use that to target 
# the modem in all future commands:
#   mmcli -m 1 ...

# Get list of received text messages
mmcli --modem 1 --messaging-list-sms
# Output:
# Found 1 SMS messages:
#   /org/freedesktop/ModemManager1/SMS/0 (received)
# The number at the end of the path is the SMS index.

# Display the received text message
mmcli --modem 1 --sms 0
# Output:
# SMS '/org/freedesktop/ModemManager1/SMS/0'
#   -----------------------------------
#   Content    |              number: '+3376660xxxx'
#              |                text: 'Hello Finn'
#   -----------------------------------
#   Properties |            PDU type: 'deliver'
#              |               state: 'received'
#              |             storage: 'me'
#              |                smsc: '+3369500xxxx'
#              |           timestamp: '191227144612+01'
