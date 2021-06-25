#--Associations--#

Puppy:
-belongs_to :owner
-has_many :puppy_friends
-has_many :playdates, through: :puppy_friends
-has_many :toys 

Owner:
-has_many :puppies
-has_many :play_dates through: :puppies

Toy:
-belongs_to :puppy

PuppyFriend:
-belongs_to :puppy
-belongs_to :play_date

PlayDate:
-has_many :puppy_friends
-belongs_to :owner
-has_many :puppies, through: :puppy_friends

#--Attributes--#

Puppy:
-name 
-age
-breed
-sex
-size
-personality 
-owner_id

Owner:
-username
-password_digest
-name
-age
-city
-bio

Toy:
-type

PlayDate:
-location
-date 
-time 
-notes
-user_id

PuppyFriend:
-name 
-age
-breed
-sex
-size
-personality 
-puppy_id 
-play_date_id