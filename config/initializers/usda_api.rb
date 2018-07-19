usda_info_path = Rails.root.join('config', 'usda_api.yml')
usda_info = YAML.load_file(usda_info_path)
ENV['USDA_API_KEY'] = usda_info['api_key']