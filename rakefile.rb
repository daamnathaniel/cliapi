def latest_gem
    Dir["*.gem"].sort.last
end 

task :default do
    puts `gem build cliapi.gemspec`
    if $?.success?
        puts "\nyou can install it with:"
        puts "rake install\n"
        puts "then run your app with:\ncliapi\n"
            
    end    
end
task :run do
    puts `gem build cliapi.gemspec`
    puts `gem install --local #{latest_gem}`
    puts "===output==="
    puts `cliapi`
    
end

task :install do
    puts `gem install --local #{latest_gem}`
end

task :push do
    puts "pusing #{latest_gem}..."
    puts `gem push #{latest_gem}`
    if $?.success?
        puts "https://rubygems.org/gems/cliapi"
    end
end    

task :i=>:install

