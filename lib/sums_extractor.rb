class SumsExtractor

  def self.extract(sums_string) 
    @@extracted_sums = [sums_string]

    split_string = sums_string.split(" ")
    first_num = split_string[0]
    second_num = split_string[2]
    operator = split_string[1]
    raise "Invalid input; Input must only include numbers and operators" if invalid?(first_num, second_num)
    find_sum(first_num.to_i, second_num.to_i, operator)

    @@extracted_sums
  end

  private

  def self.invalid?(first_num, second_num)
    string_nums = ["1","2","3","4","5","6","7","8","9","0"]
    !string_nums.include?(first_num) || !string_nums.include?(second_num)
  end

  def self.find_sum(first_num, second_num, operator)
    if operator == "+"
      add_nums(first_num, second_num)
    elsif operator == "-"
      substract_nums(first_num, second_num)
    elsif operator == "*"
      multiply_nums(first_num, second_num)
    elsif operator == "/"
      divide_nums(first_num, second_num)
    end
  end

  def self.add_nums(first_num, second_num)
    @@extracted_sums << (first_num + second_num)
  end

  def self.substract_nums(first_num, second_num)
    @@extracted_sums << (first_num - second_num)
  end

  def self.divide_nums(first_num, second_num)
    @@extracted_sums << (first_num / second_num)
  end

  def self.multiply_nums(first_num, second_num)
    @@extracted_sums << (first_num * second_num)
  end

end