namespace :deployment do
  desc 'Things to do in a deployment before the server is restarted'
  task :prerestart do
    %w(retro_wiki agile_pm).each do |ext|
      puts `script/rxm install #{ext} RAILS_ENV=#{RAILS_ENV}`
    end
  end
end
