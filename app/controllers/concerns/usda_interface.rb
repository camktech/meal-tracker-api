module USDAInterface

  def usda_search_foods(query, include_brands, food_group_id)
    params = {q: query, fg: food_group_id}
    params = params.merge!({ds: 'Standard Reference'}) unless include_brands
    usda_request('search', params)
  end

  def usda_get_all_nutrients
    usda_request('list', {lt: 'n'})
  end

  def usda_get_all_food_groups
    usda_request('list', {lt: 'g'})
  end

  def usda_get_foods_by_nutrient(nutrient_id, food_group_id, subset)
    params = {nutrients: nutrient_id, fg: food_group_id, subset: subset, sort: 'c'}
    usda_request('nutrients', params)
  end

  def usda_show_food_nutrients(ndbno, nutrients)
    param_string = ""
    if nutrients
      nutrients.each do |n|
        param_string += "&nutrients=#{n}"
      end
    end
    params = {ndbno: ndbno}
    usda_request('nutrients', params, param_string)
  end

  def usda_request(type, params, param_string = "")
    url = url(type, params, param_string)
    puts url
    HTTParty.get(url)
  end

  def url(type, params, param_string)
    "https://api.nal.usda.gov/ndb/#{type}/?format=json&api_key=#{ENV['USDA_API_KEY']}&" + params.to_param + param_string
  end

end
