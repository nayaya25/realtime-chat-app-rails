class User < ApplicationRecord
    validates_uniqueness_of :username, on: :create, message: "Username must be unique"

    def self.generate
        adjective = ['Ancient', 'Smart', 'Effective', 'Gilded', 'Flying']
        nouns = ['Highway', 'Intern', 'Lion', 'Master', 'Turbo']
        username = "#{adjective.sample}-#{nouns.sample}-#{rand.to_s[2..4]}"
        create(username: username)
    end

end
