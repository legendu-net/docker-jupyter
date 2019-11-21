#!/usr/bin/env python3
import getpass
import subprocess as sp
import psutil


def get_jupyterlab_user():
    for proc in psutil.process_iter():
        if proc.name() in ("jupyter", "jupyter-lab"):
            return proc.username()
    raise ProcessLookupError("No process named jupyter-lab.")


def main():
    cmd = ["/scripts/sys/list_jupyter.py"]
    if getpass.getuser() == 'root':
        cmd = ["su", get_jupyterlab_user(), "-c"] + cmd
    sp.run(cmd, check=True)


if __name__ == '__main__':
    main()
