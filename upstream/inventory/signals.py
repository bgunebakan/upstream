from django.contrib.auth.models import User,Permission
from django.db.models.signals import post_save,post_delete
from django.dispatch import receiver
from filer.models import Folder
from .models import Item,ItemType
from django.utils import timezone

@receiver(post_delete, sender=Item)
def count_item(sender, instance, **kwargs):
    print "counting"
    item_types = ItemType.objects.all()

    for item_type in item_types:
        items = Item.objects.filter(item_type=item_type)
        item_type.total = items.count()
        item_type.save()

@receiver(post_save, sender=Item)
def count_item(sender, instance, **kwargs):
    print "counting"
    item_types = ItemType.objects.all()

    for item_type in item_types:
        items = Item.objects.filter(item_type=item_type)
        item_type.total = items.count()
        item_type.save()
