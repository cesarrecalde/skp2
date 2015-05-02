# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('sprint', '0008_auto_20150430_2111'),
    ]

    operations = [
        migrations.AlterField(
            model_name='sprint',
            name='Estado',
            field=models.CharField(default=b'Pendiente', max_length=15, choices=[(b'Pendiente', b'Pendiente'), (b'En_curso', b'En_curso'), (b'Terminado', b'Terminado'), (b'Cancelado', b'Cancelado')]),
            preserve_default=True,
        ),
    ]
