require 'yaml'

class YmlData
  def self.load_data(path)
    puts "No settings file found: #{path}" unless File.exists?(path)
    datas = YAML.load_file(path)
  end
end

Examples = YmlData.load_data(File.join(Rails.root, 'db/yml', 'example.yml'))