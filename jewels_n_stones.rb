# @param {String} j
# @param {String} s
# @return {Integer}
def num_jewels_in_stones(j, s)
  jewel_amount = []

  j.split("").map do |jewel|
    if s.include?(jewel)
      jewel_amount << s.count(jewel)
    else
      jewel_amount << 0
    end
  end

  jewel_amount.inject(0) { |sum, i| sum += i }
end

num_jewels_in_stones("aA", "aAAbbbb")

num_jewels_in_stones("z", "ZZ")