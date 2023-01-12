#!/bin/sh

if [[ ! -z "$STUNNEL_CONF" ]]
then
    echo -n "STUNNEL_CONF environment variable provided, provisioning configuration..."
    cat > /etc/stunnel/stunnel.conf <<EOF
$STUNNEL_CONF
EOF
    echo " done"
    # Add "foreground = yes" parameter anyway
    sed -i "s/^[[:blank:]]*foreground.*$/foreground = yes/" /etc/stunnel/stunnel.conf
else
    echo "STUNNEL_CONF environment variable is not provided, using existing configuration at /etc/stunnel/."
fi

stunnel
