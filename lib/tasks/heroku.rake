namespace :heroku do
  APP = 'wemadea'

  def run(*cmd)
    system(*cmd)
    raise "Command #{cmd.inspect} failed!" unless $?.success?
  end

  def confirm(message)
    print "\n#{message}\nAre you sure? [Yn] "
    raise 'Aborted' unless STDIN.gets.chomp.downcase == 'y'
  end

  def app_version
    %x[git describe --always]
  end

  desc "Deploy app to Heroku"
  task :deploy do
    puts "-----> Pushing..."
    run "git push git@heroku.com:#{APP}.git HEAD:master -f"

    puts "-----> Migrating..."
    run "heroku run rake db:migrate"

    puts "-----> Versioning..."
    run "heroku config:add APP_VERSION=#{app_version.strip}"

    puts "-----> Restarting..."
    run "heroku restart --app #{APP}"
   end
end
