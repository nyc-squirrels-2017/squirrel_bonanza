class Squirrel < ActiveRecord::Base
  validates :name, :color, presence: true

  # validate  :my_custom_validation
  #
  #
  # def my_custom_validation
  #   if ()
  #     errors.add('color', "can't ba blank")
  #   end
  # end
end
