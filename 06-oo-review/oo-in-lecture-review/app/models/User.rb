class User
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def recipes
        results = []
        RecipeCard.all.each do |card|
            if card.user == self
                results << card.recipe
            end
        end
        results
    end

    def recipe_cards
        RecipeCard.all.select do |card|
            card.user == self
        end
    end

    def top_three_recipes
        self.recipe_cards.sort_by(&:rating).last(3).map{|rr| rr.recipe}
        #self.recipe_cards.sort_by(&:rating).last(3).map(&:recipe)
    end

    def add_allergen(ingredient)
        Allergen.new(self, ingredient)
    end
end