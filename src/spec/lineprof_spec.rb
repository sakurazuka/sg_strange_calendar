require_relative '../ITP1_10.rb'
require 'rblineprof'
require 'rblineprof-report'
target = "#{Dir.pwd}/../ITP1_10.rb"

profile = lineprof(target) do
  RSpec.describe 'A' do
    it 'Sample input' do
      in_val = '0 0 1 1'
      # out_val = "1.41421356\n"
      out_val = "1.4142\n"

      allow(ARGF).to receive(:gets) { in_val }
      expect { ITP1_10.new.a }.to output(out_val).to_stdout
    end

    it 'Test case 2' do
      in_val = '0 0 123.456789 0'
      # out_val = "123.456789\n"
      out_val = "123.4567\n"

      allow(ARGF).to receive(:gets) { in_val }
      expect { ITP1_10.new.a }.to output(out_val).to_stdout
    end
  end

  RSpec.describe 'B' do
    it 'Sample input' do
      in_val = '4 3 90'
      # out_val = <<-EOS
      # 6.00000000
      # 12.00000000
      # 3.00000000
      # EOS
      out_val = <<-EOS
6.0
12.0
3.0
      EOS

      allow(ARGF).to receive(:gets) { in_val }
      expect { ITP1_10.new.b }.to output(out_val).to_stdout
    end
  end

  RSpec.describe 'C' do
    it 'Sample input' do
      in_val = [
        '5',
        '70 80 100 90 20',
        '3',
        '80 80 80',
        '0',
      ]
      # out_val = <<-EOS
      # 27.85677655
      # 0.00000000
      # EOS
      out_val = <<-EOS
27.8567
0.0
      EOS

      allow(ARGF).to receive(:gets) { in_val.shift.to_s }
      expect { ITP1_10.new.c }.to output(out_val).to_stdout
    end

    it 'Test case 1' do
      in_val = [
        '5',
        '70 80 100 90 20',
        '3',
        '80 80 80',
        '1',
        '100',
        '1',
        '50',
        '1',
        '0',
        '10',
        '0 0 0 0 0 0 0 0 0 0',
        '10',
        '1 34 44 63 30 1 9 53 57 57',
        '10',
        '20 12 52 44 6 9 94 31 67 70',
        '0',
      ]
      # out_val = <<-EOS
      # 27.85677655
      # 0.00000000
      # 0.00000000
      # 0.00000000
      # 0.00000000
      # 0.00000000
      # 22.73961301
      # 28.43325518
      # EOS
      out_val = <<-EOS
27.8567
0.0
0.0
0.0
0.0
0.0
22.7396
28.4332
      EOS

      allow(ARGF).to receive(:gets) { in_val.shift.to_s }
      expect { ITP1_10.new.c }.to output(out_val).to_stdout
    end
  end

  RSpec.describe 'D' do
    it 'Sample input' do
      in_val = [
        '3',
        '1 2 3',
        '2 0 4',
      ]
      #     out_val = <<-EOS
      # 4.000000
      # 2.449490
      # 2.154435
      # 2.000000
      #     EOS
      out_val = <<-EOS
4.0
2.44949
2.154435
2.0
      EOS

      allow(ARGF).to receive(:gets) { in_val.shift.to_s }
      expect { ITP1_10.new.d }.to output(out_val).to_stdout
    end

    it 'Test case 7' do
      in_val = [
        '1',
        '3',
        '8',
      ]
      #     out_val = <<-EOS
      #5.00000000
      #5.00000000
      #5.00000000
      #5.00000000
      #     EOS
      out_val = <<-EOS
5.0
5.0
5.0
5.0
      EOS

      allow(ARGF).to receive(:gets) { in_val.shift.to_s }
      expect { ITP1_10.new.d }.to output(out_val).to_stdout
    end
  end

end
LineProf.report(profile)
