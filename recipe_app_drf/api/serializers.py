from rest_framework import serializers
from .models import Category, Recipe # 追記


class CategorySerializer(serializers.ModelSerializer):
    class Meta:
        model = Category
        fields = ['id', 'name']

class RecipeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Recipe
        fields = ['id', 'title', 'instructions', 'cooking_time_minutes', 'category']