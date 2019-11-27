from django.contrib.auth.models import User, Permission
from django.db.models.signals import post_save, post_delete, pre_save
from django.dispatch import receiver
from filer.models import Folder
from .models import Tender, TenderType
from django.utils import timezone
import datetime
from constance import config


@receiver(post_delete, sender=Tender)
def count_item(sender, instance, **kwargs):
    # print "counting"
    tender_types = TenderType.objects.all()

    for tender_type in tender_types:
        tenders = Tender.objects.filter(tender_type=tender_type)
        tender_type.total = tenders.count()
        tender_type.save()


@receiver(post_save, sender=Tender)
def count_item(sender, instance, **kwargs):
    # print "counting"
    tender_types = TenderType.objects.all()

    for tender_type in tender_types:
        tenders = Tender.objects.filter(tender_type=tender_type)
        tender_type.total = tenders.count()
        tender_type.save()


@receiver(pre_save, sender=Tender)
def last_tender_no(sender, instance, **kwargs):
    if not instance.no:
        print "Generate new tender no"
        tenders = Tender.objects.filter(tender_type=instance.tender_type)
        tender_no_list = []

        for tender in tenders:
            if tender.no:
                print tender.no[len(config.tender_no_code) + 1:len(config.tender_no_code) + 5]
                if tender.no[len(config.tender_no_code) + 1:len(config.tender_no_code) + 5] == unicode(
                        datetime.datetime.now().year):
                    # if unicode(datetime.datetime.now().year) in tender.no:
                    try:
                        tender_no_list.append(int(tender.no[-3:]))
                    except ValueError:
                        print "Tender no is not valid"
        if tender_no_list:
            last_tender_no = max(tender_no_list) + 1
        else:
            last_tender_no = 1

        tender_no = unicode(config.tender_no_code) + "-" + unicode(datetime.datetime.now().year) + unicode(
            instance.tender_type.code) + unicode(last_tender_no).zfill(3)
        print tender_no
        instance.no = tender_no
        instance.save()
    else:
        print "Tender no will not generated"

        # tender_type = TenderType.objects.get(id=instance.tender_type.id)
        # tender_type.last_tender_no = tender_type.last_tender_no + 1
        # tender_type.save()
