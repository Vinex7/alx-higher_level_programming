#!/bin/bash
#It sends a request to that URL, and displays the size of the body of response
curl -s "${1}" | wc -c
