from import_export import resources
from .models import *

class ItemResource(resources.ModelResource):
    class Meta:
        model = Item

class CategoryResource(resources.ModelResource):
    class Meta:
        model = Category
