# Helper class does not need Active Record

class Clock
    def self.read
        Time.now
    end
    def self.days_forward(num)
        Time.now+(num*86400)
    end
    def self.weeks_forward(num)
        Time.now+(num*604800)
    end
    def self.days_backward(num)
        Time.now-(num*86400)
    end
    def self.weeks_backward(num)
        Time.now-(num*604800)
    end
end