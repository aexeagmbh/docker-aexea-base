#!/usr/bin/python

try:
    from axhandle.i18n import get_locales
    print(get_locales())
except ImportError:
    # fallback when axhandle is not found
    print("en_US de_DE")
