import os

from flower.utils.template import humanize


BROKER_URL = os.environ['CELERY_BROKER_URL']


def format_task(task):
    task.args = humanize(task.args, length=50)
    return task
