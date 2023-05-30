from django import forms
from anticoru.models import RandomUser

class RandomUserForm(forms.ModelForm):
    class Meta:
        model=RandomUser
        fields="__all__"