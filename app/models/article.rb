class Article < ApplicationRecord
    # active record association with comment model
    has_many :comments

    # validations - validates title + length of title
    validates :title, presence: true,  
        length: { minimum: 5 }
    
        
    
end
