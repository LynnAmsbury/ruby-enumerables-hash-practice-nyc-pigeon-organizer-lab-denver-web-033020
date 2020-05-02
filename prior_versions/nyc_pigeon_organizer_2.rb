# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }

def nyc_pigeon_organizer(data)
    pigeons = {}
    data.each do |attribute_category, attribute_hash|
      attribute_hash.each do |attribute, attribute_value|
        attribute_value.each do |name|
          if pigeons[name] == nil
            pigeons[name] = {}
          end
          if pigeons[name][attribute_category] == nil
            pigeons[name][attribute_category] = []
          end
          pigeons[name][attribute_category] << attribute.to_s
        end
      end
    end
    pigeons
  end