namespace :user_exporter do

  desc "Export all Discourse users to CSV file"
  task export: :environment do
    puts [:email, :name, :username, :title, :groups, :active].join ';'

    User.all.each do |user|
      puts [
        user.email,
        user.name,
        user.username,
        user.title,
        user.groups.map(&:name).join(','),
        user.active?
      ].join ';'
    end
  end
end

