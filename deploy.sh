#!/bin/bash
acorn build -t ghcr.io/randall-coding/acorn/basetool && \
acorn push ghcr.io/randall-coding/acorn/basetool && \
acorn run -n basetool ghcr.io/randall-coding/acorn/basetool
