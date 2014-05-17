class CalculatorHandler

  def calc(val)
    lh_term = val.lh_term
    rh_term = val.rh_term
    p case val.op
        when 1
          lh_term+rh_term
        when 2
          lh_term-rh_term
        when 3
          lh_term*rh_term
        when 4
          lh_term/rh_term
        when 5
          lh_term%rh_term
      end
  end

  def run_task()
    id = rand 1000
    puts "Kicking off the task #{id}"
    sleep 2
    puts "Done with the task #{id}"
  end
end