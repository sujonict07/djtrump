from .base import *

#DATABASES = {
#    'default': {
#        'ENGINE': 'django.db.backends.postgresql_psycopg2',
#        'NAME': 'djtrumpprod',
#        'USER': 'djtrumpuser',
#        'PASSWORD': 'djtrump',
#        'PORT': '5432',
#    }
#}
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
    }
}
