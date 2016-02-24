import os

from flower.utils.template import humanize


if 'CELERY_BROKER_URL' in os.environ:
    BROKER_URL = os.environ['CELERY_BROKER_URL']

def format_task(task):
    task.args = humanize(task.args, length=50)
    return task
