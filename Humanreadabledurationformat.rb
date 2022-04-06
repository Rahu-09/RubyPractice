# Question:-Your task in order to complete this Kata is to write a function which formats a duration, given as a number of seconds, in a human-friendly way.

# The function must accept a non-negative integer. If it is zero, it just returns "now". Otherwise, the duration is expressed as a combination of years, days, hours, minutes and seconds.
# Answer:-
def format_duration(seconds)
  time_format={
    "year"=>31536000,
    "day"=>86400,
    "hour"=>3600,
    "minute"=>60,
    "second"=>1
  }
  if seconds==0
    return "now"
  end
  time = Array.new
  c=0
  time_format.each do |key,value|
    q=seconds/value
    if q>0
      if q==1
        time[c]="#{q} #{key}"
      else
        time[c]="#{q} #{key}s"
      end
      c+=1
    end
    seconds=seconds%value
  end
  str=""
  if time.length==1
    return time[0]
  else
    time.each do |i|
      if i==time[0]
        str+=i
      elsif i==time[time.length-1]
        str+=" and "
        str+=i
      else
        str+=", "
        str+=i
      end
    end
    return str
  end
end
puts format_duration(3600)
