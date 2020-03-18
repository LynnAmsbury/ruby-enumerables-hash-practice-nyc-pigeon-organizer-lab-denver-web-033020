require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.map do |key, value| # .map returns an ARRAY
    value.map
    binding.pry
  end
end
