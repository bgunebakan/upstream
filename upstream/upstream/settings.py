# -*- coding: utf-8 -*-

"""
Django settings for upstream project.

Generated by 'django-admin startproject' using Django 1.9.4.

For more information on this file, see
https://docs.djangoproject.com/en/1.9/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/1.9/ref/settings/
"""

import os
#import raven
from easy_thumbnails.conf import Settings as thumbnail_settings


# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/1.9/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'k3iogt1+t=udm=!i!rn_hqwk@_*y9v*#ru7r^_wq4zyfuzml%3'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = ['login.tarla.org.tr','internal.tarla.org.tr','92.61.14.47','127.0.0.1']

# Application definition
ADMIN_VIEW_PERMISSION_MODELS = [
    'auth.User',
]

INSTALLED_APPS = [
    #'admin_view_permission',

    'django_adminlte_theme',
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'django.contrib.sites',
    'crispy_forms',
    'django_select2',
    'easy_thumbnails',
    'image_cropping',
    'cruds_adminlte',
    'django_mailbox',
    'django_tables2',
    'filer',
    'mptt',

    'constance',
    'constance.backends.database',
    'import_export',

    'homepage',
    'procurement',
    'personnel',
    'project',
    'portunes',
    'inventory',

    'django_libs',
    'generic_positions',

    'django_ajax',
    'menu',
    'django_python3_ldap',
    'auditlog',
    'fullcalendar',
    #'csvimport.app.CSVImportConf',

#    'raven.contrib.django.raven_compat',
]

IMPORT_EXPORT_USE_TRANSACTIONS = True

SITE_ID = 1

CRISPY_TEMPLATE_PACK = 'bootstrap3'
IMAGE_CROPPING_JQUERY_URL = None

TIME_FORMAT= 'H:i'
DATETIME_FORMAT='d/m/Y H:i'
DATE_FORMAT="d/m/Y"

TIME_INPUT_FORMATS = ['%I:%M %p']

FILER_CANONICAL_URL = 'sharing/'
FILER_ENABLE_PERMISSIONS = True
THUMBNAIL_PROCESSORS = (
    'image_cropping.thumbnail_processors.crop_corners',
    'easy_thumbnails.processors.colorspace',
    'easy_thumbnails.processors.autocrop',
    #'easy_thumbnails.processors.scale_and_crop',
    'filer.thumbnail_processors.scale_and_crop_with_subject_location',
    'easy_thumbnails.processors.filters',
) + thumbnail_settings.THUMBNAIL_PROCESSORS

THUMBNAIL_HIGH_RESOLUTION = True

CONSTANCE_BACKEND = 'constance.backends.database.DatabaseBackend'


CONSTANCE_CONFIG = {
    'title': ("Creworker","Software name",str),
    'version': ("0.4.0","Version",str),
    'hide_sidebar': (False, 'Left sidebar setting '),
}
CONSTANCE_CONFIG_FIELDSETS = {
    'General Options': ('title','version','hide_sidebar'),
}

#RAVEN_CONFIG = {
#    'dsn': 'https://108ffdfbcded4db1970763f200f27005:d56bbf45b4a0458eb3351b7da9b14e8a@sentry.io/291384',
    # If you are using git, you can also automatically configure the
    # release based on the git info.
#    'release': raven.fetch_git_sha(os.path.abspath(os.pardir)),
##}

MIDDLEWARE_CLASSES = [
    'raven.contrib.django.raven_compat.middleware.Sentry404CatchMiddleware',
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.auth.middleware.SessionAuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'auditlog.middleware.AuditlogMiddleware',
]

#DJANGO_SIMPLE_AUDIT_ACTIVATED = True

ROOT_URLCONF = 'upstream.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR, 'templates')],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'constance.context_processors.config',
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'upstream.wsgi.application'

# Keep ModelBackend around for per-user permissions and maybe a local
# superuser.
AUTHENTICATION_BACKENDS = (
    'django.contrib.auth.backends.ModelBackend',
    'django_python3_ldap.auth.LDAPBackend',
)
#-----------------------LDAP AUTH

# Database
# https://docs.djangoproject.com/en/1.9/ref/settings/#databases

# DATABASES = {
#     'default': {
#         'ENGINE': 'django.db.backends.mysql',
#         'OPTIONS': {
#             'read_default_file': '/etc/upstream/db.conf',
#         },
#     }
# }

DATABASES = {
#   'default': {
#       'ENGINE': 'django.db.backends.sqlite3',
#       'NAME': os.path.join(BASE_DIR, 'upstream.sqlite3'),
#    },
    'default': {
             'ENGINE': 'django.db.backends.mysql',
             'OPTIONS': {
                 'sql_mode': 'traditional',
                 'read_default_file': '/etc/upstream/db.conf',
             },
         }
}


# Password validation
# https://docs.djangoproject.com/en/1.9/ref/settings/#auth-password-validators

LOGGING = {
    'version': 1,
    'disable_existing_loggers': False,
    'root': {
        'level': 'WARNING',
        'handlers': ['sentry'],
    },
    'formatters': {
        'verbose': {
            'format': '%(levelname)s %(asctime)s %(module)s '
                      '%(process)d %(thread)d %(message)s'
        },
    },
    'handlers': {
        'sentry': {
            'level': 'ERROR', # To capture more than ERROR, change to WARNING, INFO, etc.
            'class': 'raven.contrib.django.raven_compat.handlers.SentryHandler',
            'tags': {'custom-tag': 'x'},
        },
        'console': {
            'level': 'DEBUG',
            'class': 'logging.StreamHandler',
            'formatter': 'verbose'
        }
    },
    'loggers': {
        'django.db.backends': {
            'level': 'ERROR',
            'handlers': ['console'],
            'propagate': False,
        },
        'raven': {
            'level': 'DEBUG',
            'handlers': ['console'],
            'propagate': False,
        },
        'sentry.errors': {
            'level': 'DEBUG',
            'handlers': ['console'],
            'propagate': False,
        },
    },
}



AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/1.9/topics/i18n/

LANGUAGE_CODE = 'tr-TR'#'en-US'

TIME_ZONE = 'Europe/Istanbul'
TIME_INPUT_FORMATS = ('%H:%M','%I:%M %p')
USE_I18N = True

USE_L10N = True
DEFAULT_CHARSET = 'utf-8'
USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/1.9/howto/static-files/

#STATIC_ROOT = '/var/www/upstream/static/'
#STATIC_ROOT = os.path.join(BASE_DIR, "static/")
STATIC_ROOT = os.path.join(BASE_DIR, 'static')
STATIC_URL = '/static/'
MEDIA_URL = '/media/'
MEDIA_ROOT = '/opt/upstream/media/'#os.path.join(BASE_DIR, 'media')
LOGIN_REDIRECT_URL = '/'


FILER_STORAGES = {
    'public': {
        'main': {
            'ENGINE': 'filer.storage.PublicFileSystemStorage',
            'OPTIONS': {
                'location': '/opt/upstream/media/filer',
                'base_url': '/media/filer/',
            },
            'UPLOAD_TO': 'filer.utils.generate_filename.randomized',
            'UPLOAD_TO_PREFIX': 'filer_public',
        },
        'thumbnails': {
            'ENGINE': 'filer.storage.PublicFileSystemStorage',
            'OPTIONS': {
                'location': '/opt/upstream/media/filer_thumbnails',
                'base_url': '/media/filer_thumbnails/',
            },
        },
    },
    'private': {
        'main': {
            'ENGINE': 'filer.storage.PrivateFileSystemStorage',
            'OPTIONS': {
                'location': '/opt/upstream/smedia/filer',
                'base_url': '/smedia/filer/',
            },
            'UPLOAD_TO': 'filer.utils.generate_filename.randomized',
            'UPLOAD_TO_PREFIX': 'filer_public',
        },
        'thumbnails': {
            'ENGINE': 'filer.storage.PrivateFileSystemStorage',
            'OPTIONS': {
                'location': '/opt/upstream/smedia/filer_thumbnails',
                'base_url': '/smedia/filer_thumbnails/',
            },
        },
    },
}


#INTERNAL_IPS = ('127.0.0.1',)

# The URL of the LDAP server.
LDAP_AUTH_URL = "ldap://ldap.tarla.org.tr:389"

# Initiate TLS on connection.
LDAP_AUTH_USE_TLS = False

# The LDAP search base for looking up users.
LDAP_AUTH_SEARCH_BASE = "ou=people,dc=tarla,dc=org,dc=tr"

# The LDAP class that represents a user.
LDAP_AUTH_OBJECT_CLASS = "inetOrgPerson"

# User model fields mapped to the LDAP
# attributes that represent them.
LDAP_AUTH_USER_FIELDS = {
    "username": "uid",
    "first_name": "givenName",
    "last_name": "sn",
    "email": "mail",
}

# A tuple of django model fields used to uniquely identify a user.
LDAP_AUTH_USER_LOOKUP_FIELDS = ("username",)

# Path to a callable that takes a dict of {model_field_name: value},
# returning a dict of clean model data.
# Use this to customize how data loaded from LDAP is saved to the User model.
LDAP_AUTH_CLEAN_USER_DATA = "django_python3_ldap.utils.clean_user_data"

# Path to a callable that takes a user model and a dict of {ldap_field_name: [value]},
# and saves any additional user relationships based on the LDAP data.
# Use this to customize how data loaded from LDAP is saved to User model relations.
# For customizing non-related User model fields, use LDAP_AUTH_CLEAN_USER_DATA.
LDAP_AUTH_SYNC_USER_RELATIONS = "django_python3_ldap.utils.sync_user_relations"

# Path to a callable that takes a dict of {ldap_field_name: value},
# returning a list of [ldap_search_filter]. The search filters will then be AND'd
# together when creating the final search filter.
LDAP_AUTH_FORMAT_SEARCH_FILTERS = "django_python3_ldap.utils.format_search_filters"

# Path to a callable that takes a dict of {model_field_name: value}, and returns
# a string of the username to bind to the LDAP server.
# Use this to support different types of LDAP server.
LDAP_AUTH_FORMAT_USERNAME = "django_python3_ldap.utils.format_username_openldap"

# Sets the login domain for Active Directory users.
LDAP_AUTH_ACTIVE_DIRECTORY_DOMAIN = None

# The LDAP username and password of a user for querying the LDAP database for user
# details. If None, then the authenticated user will be used for querying, and
# the `ldap_sync_users` command will perform an anonymous query.
LDAP_AUTH_CONNECTION_USERNAME = None
LDAP_AUTH_CONNECTION_PASSWORD = None

# Set connection/receive timeouts (in seconds) on the underlying `ldap3` library.
LDAP_AUTH_CONNECT_TIMEOUT = None
LDAP_AUTH_RECEIVE_TIMEOUT = None

#E-MAIL settings
EMAIL_HOST = 'smtp.yandex.com.tr'
EMAIL_PORT = 587
EMAIL_HOST_USER = 'info@tarla.org.tr'
EMAIL_HOST_PASSWORD = 'tarla2007'
EMAIL_USE_TLS = True
