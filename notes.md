#--Associations--#

Puppy:
x-belongs_to :owner
-has_many :puppy_friends
-has_many :playdates, through: :puppy_friends
-has_many :toys 

Owner:
-has_many :puppies
-has_many :play_dates through: :puppies

Toy:
x-belongs_to :puppy

PuppyFriend:
-belongs_to :puppy
-belongs_to :play_date

PlayDate:
-has_many :puppy_friends
-belongs_to :owner
-has_many :puppies, through: :puppy_friends

#--Attributes--#

Puppy:
x-name 
x-age
x-breed
x-sex
x-size
x-personality 
x-owner_id

Owner:
x-username
x-password_digest
x-name
x-age
x-city
x-bio

Toy:
x-type


PlayDate:
x-location
x-date 
x-time 
x-notes
x-owner_id

PuppyFriend:
-name 
-age
-breed
-sex
-size
-personality 
-puppy_id 
-play_date_id