module NembaManager
  class Species
    # South African NEMBA Invasive Species Database
    DATA = {
      # Category 1b: Must be controlled/eradicated
      "Lantana camara" => { category: "1b", common: "Lantana", action: "Control/Eradicate under management plan" },
      "Acacia mearnsii" => { category: "2", common: "Black Wattle", action: "Permit required for commercial; otherwise 1b" },
      "Acacia saligna" => { category: "1b", common: "Port Jackson", action: "Control required; biocontrol available" },
      "Acacia cyclops" => { category: "1b", common: "Rooikrans", action: "Control required" },
      "Eichhornia crassipes" => { category: "1b", common: "Water Hyacinth", action: "Immediate control required" },
      "Campuloclinium macrocephalum" => { category: "1b", common: "Pom Pom Weed", action: "Eradicate/Control" },
      "Cereus jamacaru" => { category: "1b", common: "Queen of the Night", action: "Control required" },
      "Chromolaena odorata" => { category: "1b", common: "Triffid Weed", action: "High priority control" },
      
      # Category 1a: Highest priority (Eradication)
      "Nassella trichotoma" => { category: "1a", common: "Nassella Tussock", action: "Compulsory Eradication" },
      
      # Category 3: Controlled (usually ornamental)
      "Jacaranda mimosifolia" => { category: "3", common: "Jacaranda", action: "No new plantings allowed; exempted in urban areas" }
    }

    def self.lookup(name)
      # This allows you to search by the Scientific Name
      DATA[name] || { category: "Unknown", common: "Unknown", action: "Consult NEMBA Gazettes" }
    end
  end
end