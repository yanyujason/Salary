require 'salary'

describe 'Salary and Bonus' do

  subject {Salary.new}

  describe 'Basic calculation' do

    it 'The basic salary should be 4400 when working 22 days' do
      expect(subject.basic_salary(22)).to eq 4400
    end

    it 'The bonus should be 880 when basic salary is 4400' do
      expect(subject.bonus(4400)).to eq 880
    end

    it 'The salary tax should be 0 when basic salary is 2000' do
      expect(subject.basic_salary_tax(2000)).to eq 0
    end

    it 'The salary tax should be 0 when basic salary is 2000' do
      expect(subject.basic_salary_tax(4000)).to eq 50
    end

    it 'The bonus tax should be 100 when bonus is 1000' do
      expect(subject.bonus_tax(1000)).to eq 100
    end

  end


  describe 'Calculation for total' do

    it 'The total salary should be 5280 when working 22 days' do
      expect(subject.total_salary(22)).to eq 5280
    end

    it 'The total tax should be 158 when working 22 days' do
      expect(subject.total_tax(22)).to eq 158
    end

    it 'The total tax should be 4 when working 1 day' do
      expect(subject.total_tax(1)).to eq 4
    end

    it 'The incoming should be 5122 when working 22 days' do
      expect(subject.incoming(22)).to eq 5122
    end

    it 'The incoming should be 236 when working 1 day' do
      expect(subject.incoming(1)).to eq 236
    end

  end

end