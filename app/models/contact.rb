class Contact < ApplicationRecord
  belongs_to :me, :class_name => "User"
  belongs_to :friend, :class_name => "User"
end
