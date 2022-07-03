#!/bin/sh
#
# Test script for MiceWeb. It runs simple commands.

EXAMPLE_URL="http://example.com"
miceweb save $EXAMPLE_URL
miceweb present $EXAMPLE_URL
