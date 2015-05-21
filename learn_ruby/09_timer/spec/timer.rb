class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    #displaying the following way : "hr:mn:sc"
    total_time = @seconds.round
    hr = (total_time/3600).floor
    (hr<10)? zhr = "0" : zhr = ""
    total_time -= hr*3600
    mn = (total_time/60).floor
    (mn<10)? zmn ="0" : zmn = ""
    sc = total_time - mn*60
    (sc<10)? zsc = "0" : zsc = ""
    "#{zhr}#{hr}:#{zmn}#{mn}:#{zsc}#{sc}"
  end

end
