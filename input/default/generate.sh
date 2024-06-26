#!/usr/bin/env bash

# This generates the same codeplug as generate.py
# using bash scripting. Linux or macOS only.

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
OUTPUT=${OUTPUT:-$DIR/../../OUTPUT}
python -m dzcb \
    --k7abd $DIR/k7abd \
    --repeaterbook-proximity-csv "$DIR/prox.csv" \
    --repeaterbook-state maine "new hampshire" "massachusetts" "connecticut" "vermont" "rhode island"\
    --repeaterbook-name-format '{Callsign} {Nearest City} {Landmark}' \
    --anytone 878_1_21 \
    --dmrconfig "$DIR/dmr6x2-jim.conf" \
-- "$OUTPUT/$(basename "$DIR")"

    # --default-k7abd \
    # --pnwdigital \
    # --seattledmr \
    # --scanlists-json "$DIR/scanlists.json" \
    # --exclude "$DIR/exclude.csv" \
    # --order "$DIR/order.csv" \
    # --replacements "$DIR/replacements.csv" \
    # --farnsworth-template-json "$DIR/example-md-uv380.json" \
    # --gb3gf \
