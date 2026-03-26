module NembaManager
  class Species
    # A simple lookup tool for your business
    def self.category(plant_name)
      list = {
        "Lantana" => "Category 1b",
        "Pom Pom Weed" => "Category 1b",
        "Pampas Grass" => "Category 1b",
        "Water Hyacinth" => "Category 1a"
      }
      
      list[plant_name] || "Species not found in database"
    end
  end
end