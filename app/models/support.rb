class Support < ApplicationRecord
  validates :last_name, presence: true
  validates :email, presence: true
  validates :title, presence: true
  validates :description, presence: true
end
 