class DurationCalculator
  def self.compute(input)
    h, m, s, ms = input.split(":").map(&:to_i)
    h %= 24
    ((h * 60) + m) + (s >= 30 ? 1 : 0)
  end
end