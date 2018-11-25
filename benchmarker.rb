class Benchmarker
    def run
        start_time = Time.now
        yield
        end_time = Time.now
        elapsed = end_time - start_time
        puts "Elapsed time: #{elapsed}"
    end
end

benchmarker = Benchmarker.new

benchmarker.run do
    # this method puts the interpreter to sleep for a specified amount of time. In this case between 0.1 and 1 second.
    5.times do
        sleep(rand(0.1..1.0))
    end
end