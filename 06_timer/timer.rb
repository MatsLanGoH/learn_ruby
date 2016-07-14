class Timer
    #write your code here
    attr_reader :seconds

    def seconds=(seconds)
        @seconds = seconds
    end

    def initialize (seconds=0)
        @seconds = seconds
    end

    def time_string
        hour_digits = "00"
        minute_digits = "00"
        second_digits = "00"

        return hour_digits + ":" + minute_digits + ":" + second_digits
    end


    def padded(number)
        if number >= 10
            return number.to_s
        else
            return "0" + number.to_s
        end
    end

end
