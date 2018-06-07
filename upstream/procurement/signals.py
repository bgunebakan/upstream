from django.contrib.auth.models import User,Permission
from django.db.models.signals import post_save,post_delete
from django.dispatch import receiver
from filer.models import Folder
from .models import Tender,TenderType
from django.utils import timezone

@receiver(post_delete, sender=Tender)
def count_item(sender, instance, **kwargs):
    print "counting"
    tender_types = TenderType.objects.all()

    for tender_type in tender_types:
        tenders = Tender.objects.filter(tender_type=tender_type)
        tender_type.total = tenders.count()
        tender_type.save()

@receiver(post_save, sender=Item)
def count_item(sender, instance, **kwargs):
    print "counting"
    tender_types = TenderType.objects.all()

    for tender_type in tender_types:
        tenders = Tender.objects.filter(tender_type=tender_type)
        tender_type.total = tenders.count()
        tender_type.save()
