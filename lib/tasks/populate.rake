namespace :db do
  task populate: :environment do
    Comment.destroy_all

    10.times do
      Comment.create author: FFaker::Name.name, comment: FFaker::DizzleIpsum.paragraph
    end
  end
end
