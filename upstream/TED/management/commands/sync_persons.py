# -*- coding: utf-8 -*-
from django.core.management.base import BaseCommand, CommandError
from TED.models import Person
from datetime import datetime
import json

class Command(BaseCommand):
    help = 'Sync persons with TED'

    def handle(self, *args, **options):
        self.stdout.write(self.style.SUCCESS('SYNC PERSONS WITH TED'))
