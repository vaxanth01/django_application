import os

from django.core.wsgi import get_wsgi_application

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'vasanth_portfolio.settings_rail')

application = get_wsgi_application()


app = application