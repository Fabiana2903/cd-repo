#!/usr/bin/env bash

locust -f locustfile.py --host http://mywebapp2903.azurewebsites.net/ --users 100 --spawn-rate 5