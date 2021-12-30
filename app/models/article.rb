class Article < ActiveRecord::Base
validates :title,  presence: true, length: {minimum:3, maximum:50 }
validates :description, presence: true, length: {minimum:5, maximum:200}

#But it also add data in database of just one words.
#For This We Also add length check on both attributes.

end