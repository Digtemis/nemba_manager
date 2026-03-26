module NembaManager
  class Species
    # Official NEMBA Categories and their required legal actions
    DATA = {
      "Lantana camara" => { category: "1b", action: "Control/Eradicate under management plan" },
      "Acacia mearnsii" => { category: "2", action: "Permit required for commercial use; otherwise 1b" },
      "Eichhornia crassipes" => { category: "1b", action: "Immediate control required (Water Hyacinth)" },
      "Opuntia ficus-indica" => { category: "1b", action: "Control required (Sweet Prickly Pear)" }
    }

    def self.lookup(name)
      DATA[name] || { category: "Unknown", action: "Consult NEMBA Gazettes" }
    end
  end
end