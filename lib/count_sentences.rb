require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    # use backslash to escape syntax for special characters like . ! ?
    self.split(/\.|\?|\!/).select{|sentence| sentence.length > 0 }.count
  end
end