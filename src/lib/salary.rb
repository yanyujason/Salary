class Salary

  SALARY_PER_DAY = 200
  BONUS_RATE = 0.2
  BASIC_SALARY_TAX_RATE = 0.05
  BONUS_TAX_RATE = 0.1

  def basic_salary (working_days)
    SALARY_PER_DAY * working_days
  end

  def bonus (basic_salary)
    BONUS_RATE * basic_salary
  end

  def basic_salary_tax (basic_salary)
    (basic_salary > 3000) ? (basic_salary - 3000) * BASIC_SALARY_TAX_RATE : 0
  end

  def bonus_tax (bonus)
    BONUS_TAX_RATE * bonus
  end

  def total_salary (working_days)
    (basic_salary (working_days)) + bonus(basic_salary (working_days))
  end

  def total_tax (working_days)
    basic = basic_salary working_days
    bonus_for_basic = bonus basic
    (basic_salary_tax basic) + (bonus_tax bonus_for_basic)
  end

  def incoming (working_days)
    (total_salary working_days) - (total_tax working_days)
  end

end