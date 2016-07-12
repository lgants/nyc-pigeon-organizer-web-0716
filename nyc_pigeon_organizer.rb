def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |supra_attribute, sub_attribute|
    sub_attribute.each do |sub_attribute, names|
      names.each do |name|
        if !pigeon_list[name] 
          pigeon_list[name] = {}
        end 
        if !pigeon_list[name][supra_attribute]
          pigeon_list[name][supra_attribute] = []
        end 
        pigeon_list[name][supra_attribute].push(sub_attribute.to_s)
      end 
    end 
  end 
  pigeon_list
end