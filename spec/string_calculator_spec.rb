require 'spec_helper'
require 'string_calculator'

describe StringCalculator do
  describe '.add' do
    context 'given an empty string' do
      it { expect(StringCalculator.add('')).to eql 0 }
    end

    context "given '10'" do
      it { expect(StringCalculator.add('10')).to eql 10 }
    end

    context 'two numbers' do
      context 'given 2,4' do
        it { expect(StringCalculator.add('2,4')).to eql 6 }
      end

      context 'given 17,100' do
        it { expect(StringCalculator.add('17,100')).to eql 117 }
      end
    end

    context 'three numbers' do
      context 'take only two first' do
        it { expect(StringCalculator.add('2, 3, 7')).to eql 5 }
      end
    end
  end

  describe '.subt' do
    context 'given an empty string' do
      it { expect(StringCalculator.subt('')).to eql 0 }
    end

    context "given '10'" do
      it { expect(StringCalculator.subt('10')).to eql 10 }
    end

    context 'two numbers' do
      context 'given 2,4' do
        it { expect(StringCalculator.subt('2,4')).to eql(-2) }
      end

      context 'given 4,2' do
        it { expect(StringCalculator.subt('4,2')).to eql 2 }
      end

      context 'given 17,100' do
        it { expect(StringCalculator.subt('17,100')).to eql(-83) }
      end

      context 'given 100,17' do
        it { expect(StringCalculator.subt('100,17')).to eql 83 }
      end

      context 'given 7,7' do
        it { expect(StringCalculator.subt('7,7')).to eql 0 }
      end
    end

    context 'three numbers' do
      context 'take only two first' do
        it { expect(StringCalculator.subt('2, 3, 7')).to eql(-1) }
      end
    end
  end

  describe '.mult' do
    context 'given an empty string' do
      it { expect(StringCalculator.mult('')).to eql 0 }
    end

    context "given '10'" do
      it { expect(StringCalculator.mult('10')).to eql 10 }
    end

    context 'two numbers' do
      context 'given 2,4' do
        it { expect(StringCalculator.mult('2,4')).to eql 8 }
      end

      context 'given 17,100' do
        it { expect(StringCalculator.mult('17,100')).to eql 1700 }
      end
    end

    context 'three numbers' do
      context 'take only two first' do
        it { expect(StringCalculator.mult('2, 3, 7')).to eql 6 }
      end
    end
  end

  describe '.divis' do
    context 'given an empty string' do
      it { expect(StringCalculator.divis('')).to eql 0 }
    end

    context "given '10'" do
      it { expect(StringCalculator.divis('10')).to eql 10 }
    end

    context 'two numbers' do
      context 'given 2,4' do
        it { expect(StringCalculator.divis('2,4')).to eql 0.5 }
      end

      context 'given 4,2' do
        it { expect(StringCalculator.divis('4,2')).to eql 2 }
      end

      context 'given 17,100' do
        it { expect(StringCalculator.divis('17,100')).to eql 0.17 }
      end

      context 'given 100,17' do
        it { expect(StringCalculator.divis('100,17')).to eql 5.882 }
      end

      context 'given 7,7' do
        it { expect(StringCalculator.divis('7,7')).to eql 1 }
      end
    end

    context 'three numbers' do
      context 'take only two first' do
        it { expect(StringCalculator.divis('2, 3, 7')).to eql 0.666 } # ~(666
      end
    end
  end
end
