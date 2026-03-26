module NembaManager
  class Report
    def self.generate_summary(plant, hectares, density)
      info = NembaManager::Species.lookup(plant)
      days = NembaManager::Calculator.estimate_work_days(hectares, density)
      
      "MANAGEMENT PLAN SUMMARY:\n" +
      "--------------------------\n" +
      "Target Species: #{plant} (#{info[:common]})\n" + # Added common name here
      "NEMBA Status: Category #{info[:category]}\n" +
      "Area Size: #{hectares} Hectares\n" +
      "Infestation Density: #{density}\n" +
      "Estimated Labor: #{days} person-days required.\n" +
      "Legal Requirement: #{info[:action]}"
    end
  end
end