#!/usr/bin/env python3
# encoding: utf-8
import json
from notebook import notebookapp

servers = list(notebookapp.list_running_servers())
print(json.dumps(servers, indent=4))
