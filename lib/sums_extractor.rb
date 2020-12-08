class SumsExtractor

  def self.extract(sums_string) 
    @@extracted_sums = [sums_string]

    split_string = sums_string.split(" ")
    first_num = split_string[0].to_i
    second_num = split_string[2].to_i
    operator = split_string[1]

    find_sum(first_num, second_num, operator)

    @@extracted_sums
  end

  private

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