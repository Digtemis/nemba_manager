module NembaManager
  class Calculator
    # Rates based on average person-days per hectare (PD/ha)
    # These are estimates—you can refine them as your business grows!
    DENSITY_RATES = {
      "Occasional" => 2.0,  # 2 person-days per hectare
      "Medium"     => 5.0,  # 5 person-days per hectare
      "Dense"      => 15.0  # 15 person-days per hectare
    }

    def self.estimate_work_days(hectares, density)
      rate = DENSITY_RATES[density] || 1.0
      (hectares * rate).round(2)
    end
  end
end