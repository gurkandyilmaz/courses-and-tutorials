"""Custom logs for keras model and flask app. Requires a yaml config file."""
import logging
import logging.config
import yaml

from config import Logger

with open(Logger.LOGGER_FILE, 'r') as f:
    config = yaml.safe_load(f.read())
    logging.config.dictConfig(config)
    logging.captureWarnings(True)

def get_logger(name: str):
    """Logs a message given the name of the logger."""
    return logging.getLogger(name)

if __name__ == "__main__":
    test_logger = get_logger(__name__)
    test_logger.debug('This is inside the custom_logger_configs.py')
    test_logger.info('test info')
    test_logger.warning('test warning')
    test_logger.error('test error')
    test_logger.critical('test critical')
