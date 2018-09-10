desc "This task imports fish details"
task :import_fish => :environment do
    require 'csv'
    CSV.foreach(Rails.root + "fish.csv", headers: true) do |column|
        Fish.create(name: column['name'], waters: column['waters'], characteristics: column['characteristics'], size: column['size'], distribution: column['distribution'], image: column['image'])
        puts column
    end
end
