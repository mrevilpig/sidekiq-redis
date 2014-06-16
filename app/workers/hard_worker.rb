# app/workers/hard_worker.rb
class HardWorker
  include Sidekiq::Worker

  def perform(name, count)
    puts "#{name} is #{count} years old"
  end
end
