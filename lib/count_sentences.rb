require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
     self[-1] == "?"
  end

  def exclamation?
     self[-1] == "!"
  end

  # here i called the self method with split and passed the regex to check
  # for panctuation mark the plus indicates that the accourance of it one or more times
  # The reject method returns a new array with the elements that match the given block condition removed.
  # notice i used shorthand instead of of block
  # lastly the count method returns the number of elems in the array
  def count_sentences
    self.split(/[.?!]+/).reject(&:empty?).count

  end
end

binding.pry
