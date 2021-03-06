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
  pigeon_hash = {}
  data.each do |attributes, attributes_hash|
    attributes_hash.each do |attribute, names|
      names.each do |name|
        if !pigeon_hash[name]
          pigeon_hash[name] = {}
        end
        if !pigeon_hash[name][attributes]
          pigeon_hash[name][attributes] = []
        end
        pigeon_hash[name][attributes] << attribute.to_s
      end
    end
  end
  pigeon_hash
end