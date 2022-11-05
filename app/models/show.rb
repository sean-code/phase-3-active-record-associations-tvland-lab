class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

    def actors_list
        self.actors.collect do |act|
            "#{act.first_name} #{act.last_name}"
        end.join
    end
end