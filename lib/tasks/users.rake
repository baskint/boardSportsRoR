namespace :users do
  desc "Seeds users"
  task seed: :environment do

    user = User.new(
      :first_name => "Alice",
      :last_name => "Ford",
      :email => "alice@ford.com",
      :desc => "FTE"
    )

    user.save

  end
end