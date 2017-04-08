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
  end
end
