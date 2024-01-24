#!/bin/bash
acorn build -t ghcr.io/randall-coding/acorn/basetool && \
acorn push ghcr.io/randall-coding/acorn/basetool && \
acorn run --compute-class pro -n basetool ghcr.io/randall-coding/acorn/basetool