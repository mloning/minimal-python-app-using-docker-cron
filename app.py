#!/usr/bin/env python -u

from datetime import datetime
from time import sleep
import logging
from pathlib import Path

LOG_FILE = Path("/output/python.log")
LOG_LEVEL = logging.INFO
LOG_FILEMODE = "a"
LOG_FMT = "%(asctime)s %(levelname)-8s %(message)s"
LOG_DATE_FMT = "%Y-%m-%d %H:%M:%S"

def main():
    logging.basicConfig(
            filename=LOG_FILE,
            format=LOG_FMT,
            datefmt=LOG_DATE_FMT,
            level=LOG_LEVEL,
            filemode=LOG_FILEMODE
    )
    logging.info("Starting ...")
    
    import numpy as np
    logging.info(f"NumPy version: {np.__version__}")

    sleep(5)

    logging.info("Done.")
    print("test print")


if __name__ == "__main__":
    main()
