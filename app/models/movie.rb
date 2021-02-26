# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  # def director
  #   my_director_id = self.director_id

  #   matching_directors = Director.where({ :id => my_director_id })

  #   the_director = matching_directors.at(0)

  #   return the_director
  # end

  belongs_to(:director, { :foreign_key => "director_id", :class_name => "Director" })

  #can become belongs_to(:director)

  # def characters
  #   my_character_id = self.character_id
  #   matching_characters = Character.where({ :id => my_character_id})

  #   # the_character = matching_characters.at(0)

  #   return the_character
  # end
  has_many(:characters)
end




# class Model_name < ApplicationRecord
#   def one_to_many
#     the_foreign_key = self.one_to_many_id
    
#     matching_records = One_To_Many.where({ :id =>
#      the_foreign_key })
#     the_record  = matching_records.at(0)

#     return the_record
#   end
# end

