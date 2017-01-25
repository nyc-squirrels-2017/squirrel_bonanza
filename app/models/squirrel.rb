class Squirrel < ActiveRecord::Base
  validates :name, :color, presence: true
end
