class Support < ApplicationRecord
  validates :last_name, presence: true
  validates :email, presence: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "adresse email non valide" }
  validates :title, presence: true
  validates :description, presence: true
end
