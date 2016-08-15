require 'benchmark/ips'

Benchmark.ips do |x|
  x.report 'cover?' do
    (1..10).cover?(5)
  end
  x.report 'include?' do
    (1..10).include?(5)
  end
  x.report 'member?' do
    (1..10).member?(5)
  end
  x.report 'plain' do
    1 > 5 && 5 < 10
  end
  x.compare!
end
