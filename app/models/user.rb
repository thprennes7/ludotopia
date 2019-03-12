class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :status
  has_many :comments
  has_many :likes
  has_many :scores
  has_many :donations
  has_many :games, through: :score
  has_one_attached :avatar
  after_create :set_status


  private

  def set_status
    self.status = Status.first
  end


end
