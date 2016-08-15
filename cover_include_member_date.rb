require 'benchmark/ips'
require 'date'

Benchmark.ips do |x|
  start_date = Date.new(2016, 2, 3)
  end_date = Date.new(2016, 4, 3)
  between_date = Date.new(2016, 3, 4)
  x.report 'cover?' do
    (start_date..end_date).cover?(between_date)
  end
  x.report 'include?' do
    (start_date..end_date).include?(between_date)
  end
  x.report 'member?' do
    (start_date..end_date).member?(between_date)
  end
  x.report 'plain' do
    start_date > between_date && between_date < end_date
  end
  x.compare!
end
