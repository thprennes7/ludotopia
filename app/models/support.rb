class Support < ApplicationRecord
  validate :last_name, presence: true
  validate :email, presence: true
  validate :title, presence: true
  validate :description, presence: true
end
