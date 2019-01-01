from django.contrib.auth.models import User,Permission
from django.db.models.signals import post_save,post_delete
from django.dispatch import receiver
from filer.models import Folder
from .models import Tender,TenderType
from django.utils import timezone
import datetime
from constance import config

@receiver(post_delete, sender=Tender)
def count_item(sender, instance, **kwargs):
    print "counting"
    tender_types = TenderType.objects.all()

    for tender_type in tender_types:
        tenders = Tender.objects.filter(tender_type=tender_type)
        tender_type.total = tenders.count()
        tender_type.save()

@receiver(post_save, sender=Tender)
def count_item(sender, instance, **kwargs):
    print "counting"
    tender_types = TenderType.objects.all()

    for tender_type in tender_types:
        tenders = Tender.objects.filter(tender_type=tender_type)
        tender_type.total = tenders.count()
        tender_type.save()

@receiver(post_save, sender=Tender)
def last_tender_no(sender, created, instance, **kwargs):
    print "Generate new tender no"
    if created:
        tender_no = unicode(config.tender_no_code) +"-"+ unicode(datetime.datetime.now().year) + unicode(instance.tender_type.code)+unicode(instance.tender_type.last_tender_no).zfill(3)
        print tender_no
        instance.no = tender_no
        instance.save()

        tender_type = TenderType.objects.get(id=instance.tender_type.id)
        tender_type.last_tender_no = tender_type.last_tender_no + 1
        tender_type.save()
