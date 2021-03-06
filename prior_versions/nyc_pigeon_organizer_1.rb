require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.map do |key1, value1| # .map returns an ARRAY
    value1.map do |key2, value2|
      value2.map do |name| # name is a STRING
        if !pigeon_list[name]
        pigeon_list[name] = {}
        end
        if !pigeon_list[name][key1]
          pigeon_list[name][key1] = []
        end
        pigeon_list[name][key1] << key2.to_s
      end
    end
  end
  return pigeon_list
end
