import logging
import logging.config
import yaml
from configs import LOGGER_CONFIGS_FILE

def get_logger(name: str) -> logging.Logger :
    """Returns a logger based on a yaml config file with a given name."""
    with open(LOGGER_CONFIGS_FILE, 'r') as f:
        settings = yaml.safe_load(f.read())
        logging.config.dictConfig(settings)
        logging.captureWarnings(True)
    return logging.getLogger(__name__)

if __name__ == "__main__":
    test_logger = get_logger(__name__)
    test_logger.debug('debug message')
    test_logger.info('info message')
    test_logger.warning('warning message')
    test_logger.error('error message')
    test_logger.critical('critical message')
