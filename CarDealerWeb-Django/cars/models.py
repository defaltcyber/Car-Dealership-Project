from django.db import models
from datetime import datetime
from ckeditor.fields import RichTextField
from multiselectfield import MultiSelectField

# Create your models here.
class Car(models.Model):
    year_choice = []
    for r in range(2000, (datetime.now().year+1)):
        year_choice.append((r,r))

    features_choices = (
        ('Cruise Control', 'Cruise Control'),
        ('Audio Interface', 'Audio Interface'),
        ('Airbags', 'Airbags'),
        ('Air Conditioning', 'Air Conditioning'),
        ('Seat Heating', 'Seat Heating'),
        ('Alarm System', 'Alarm System'),
        ('ParkAssist', 'ParkAssist'),
        ('Power Steering', 'Power Steering'),
        ('Reversing Camera', 'Reversing Camera'),
        ('Direct Fuel Injection', 'Direct Fuel Injection'),
        ('Auto Start/Stop', 'Auto Start/Stop'),
        ('Wind Deflector', 'Wind Deflector'),
        ('Bluetooth Handset', 'Bluetooth Handset'),
    )

    door_choices = (
        ('2', '2'),
        ('3', '3'),
        ('4', '4'),
        ('5', '5'),
        ('6', '6'),
    )

    car_title = models.CharField(max_length=255)
    color = models.CharField(max_length=100)
    model = models.CharField(max_length=100)
    year = models.IntegerField(('year'), choices=year_choice)
    price = models.IntegerField()
    description = RichTextField()
    car_photo = models.ImageField(upload_to='photos/%Y/%m/%d/')
    car_photo_1 = models.ImageField(upload_to='photos/%Y/%m/%d/', blank=True)
    car_photo_2 = models.ImageField(upload_to='photos/%Y/%m/%d/', blank=True)
    car_photo_3 = models.ImageField(upload_to='photos/%Y/%m/%d/', blank=True)
    car_photo_4 = models.ImageField(upload_to='photos/%Y/%m/%d/', blank=True)
    features = MultiSelectField(choices=features_choices)
    body_style = models.CharField(max_length=100)
    engine = models.CharField(max_length=100)
    transmission = models.CharField(max_length=100)
    interior = models.CharField(max_length=100)
    doors = models.CharField(choices=door_choices, max_length=10)
    passengers = models.IntegerField()
    vin_no = models.CharField(max_length=100)
    fuel_type = models.CharField(max_length=50)
    is_featured = models.BooleanField(default=False)
    created_date = models.DateTimeField(default=datetime.now, blank=True)

    def __str__(self):
        return self.car_title


car_data = {
    "car_title": "2023 Lamborghini Aventador SVJ",
    "color": "Orange",
    "model": "Aventador SVJ",
    "year": 2023,
    "price": 500000,
    "description": "<p>The Lamborghini Aventador SVJ is a limited-production supercar manufactured by the Italian automotive company Lamborghini. It is the most powerful version of the Aventador and is designed for high-performance track driving.</p>\r\n\r\n<p>The Aventador SVJ is equipped with a naturally aspirated 6.5-liter V12 engine that produces an astonishing 759 horsepower, allowing it to accelerate from 0 to 60 mph in just 2.8 seconds. It features advanced aerodynamics, including an active rear wing and aero vectoring, which enhance its performance and handling.</p>\r\n\r\n<p>Inside the Aventador SVJ, you'll find a luxurious and sporty interior with premium materials and modern technology. It offers a comfortable seating arrangement for two passengers and includes features such as a touchscreen infotainment system, premium audio system, and carbon fiber accents.</p>",
    "car_photo": "photos/2023/05/30/th-41096962.jpg",
    "car_photo_1": "photos/2023/05/30/th-2552590400.jpg",
    "car_photo_2": "photos/2023/05/30/th-3738237238.jpg",
    "features": "Adaptive Suspension, Carbon Ceramic Brakes, Launch Control, GPS Navigation, Apple CarPlay, Android Auto, Lane Departure Warning, Reverse Camera",
    "body_style": "Coupe",
    "engine": "6.5L V12",
    "transmission": "Automatic",
    "interior": "Black",
    "doors": "2",
    "passengers": 2,
    "vin_no": "ZXY9876543210",
    "fuel_type": "Petrol",
    "is_featured": True,
    "created_date": datetime.now()
}
car_data = {
    "car_title": "Lamborghini Revuelto",
    "color": "Red",
    "model": "Revuelto",
    "year": 2023,
    "price": 600000,
    "description": "<p>The Lamborghini Revuelto is a luxury sports car manufactured by Lamborghini. It features a sleek design and powerful performance, making it a true masterpiece of engineering.</p>",
    "car_photo": "photos/2023/05/30/th-842608322.jpg",
    "car_photo_1": "photos/2023/05/30/th-2288692250.jpg",
    "car_photo_2": "photos/2023/05/30/th-3826454088.jpg",
    "features": "Adaptive Suspension, Carbon Ceramic Brakes, Launch Control, GPS Navigation, Apple CarPlay, Android Auto, Lane Departure Warning, Reverse Camera",
    "body_style": "Coupe",
    "engine": "6.8L V12",
    "transmission": "Automatic",
    "interior": "Black",
    "doors": "2",
    "passengers": 2,
    "vin_no": "ABC1234567890",
    "fuel_type": "Petrol",
    "is_featured": True,
    "created_date": datetime.now()
}

car = Car(**car_data)
car.save()
