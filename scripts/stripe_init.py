from loguru import logger
from pistosi_stripe import init

if __name__ == '__main__':
    logger.info('Running stripe init script')
    output = init.run()
    logger.info(f'Got result: {output}')