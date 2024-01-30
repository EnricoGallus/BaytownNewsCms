# lib/tasks/first_time_setup.rake

namespace :db do
  desc 'Create, migrate, and seed the database'
  task setup: :environment do
    Rake::Task['db:create'].invoke
    Rake::Task['db:migrate'].invoke
    Rake::Task['db:seed'].invoke
  end
end