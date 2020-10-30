class Article < ApplicationRecord
    # validations - validates title + length of title

    validates :title, presence: true,  
        length: { minimum: 5 }
    
    
end