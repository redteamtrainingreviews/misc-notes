#!/bin/bash
# Bash Menu Script for *any* OpenVPN Connections

clear >$(tty)
echo ""
echo ""
echo "OpenVPN Connection Options"
echo ""
echo ""
PS3=$'\n\nPlease select your connection choice: '
options=("One TCP" "Two TCP" "One UDP" "Two UDP" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "One TCP")
            echo "you chose One TCP"
            openvpn /profiles/openvpn/tcp/one-tcp.ovpn
            break
            ;;
        "Two TCP")
            echo "you chose Two TCP"
            openvpn /profiles/openvpn/tcp/two-tcp.ovpn
            break
            ;;
        "One UDP")
            echo "you chose One UDP"
            openvpn /profiles/openvpn/udp/one-udp.ovpn
            break
            ;;
        "Two UDP")
            echo "you chose Two UDP"
            openvpn /profiles/openvpn/udp/two-udp.ovpn
            break
            ;;
#        "Option 9")
#            echo "you chose choice $REPLY which is $opt"
#            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
