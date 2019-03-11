class Like < ApplicationRecord
  belongs_to :article, optional: true
  belongs_to :comment, optional: true
  belongs_to :user 
end
