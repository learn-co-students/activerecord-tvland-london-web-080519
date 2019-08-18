class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

    def actors_list
        self.characters.map{|character| character.actor.full_name}
    end

    def build_network(attribute)
        new_network = Network.new(attribute)
        self.network = new_network
    end
end