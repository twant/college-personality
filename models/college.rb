require 'set' 
class Array
  def included_in?(array)
    array.to_set.superset?(self.to_set)
  end
end

def college_picker(choice_array)
  colleges = {
  :Duke => ["party","perfectionist","suburb", "technology", "baboon","tv","mcdonald","socialite"],
  :Carleton => ["camping","nerdy","harry potter","giraffe","farm","technology","maoz","punk"],
  :UNC => ["party","socialite", "impala","coldstone","nerdy","suburb","music","stars"],
  :UPenn => ["perfectionist","city","technology","impala","enders","coldstone","socialite"],
  :UCLA => ["party","slackers","beach","sports","butterfly","tv","maoz","hipster"],
  :Stanford => ["camping","nerdy","suburb","technology","impala","stars","panda","punk"],
  :Yale => ["read","nerdy","suburb","music","butterfly","harry potter","panda","wallflower"],
  :Columbia => ["movies","perfectionist","city","art","butterfly","stars","mcdonalds","hipster"],
  :uchicago =>["read","nerdy","city","technology","baboon","enders","mcdonalds","wallflower"]
#   :caltech
#   :dartmouth
#   :mit
#   :brown
#   :vanderbilt
#   :berkeley
#   :georgetown
#   :umichagan
#   :arizona_state
#   :penn_state
#   :ohio_state
#   :case_western
#   :carnegie
#   :uillinois
#   :pepperdine
#   :kentucky
#   :florida
#   :texasam
#   :auburn
#   :olemiss
#   :virginiatech
    }
  short_array = choice_array.sample(3)
  your_colleges = []
  colleges.each do |college,adj|
    #adds college if 3 of user options are included in set college values
    if short_array.include?(adj)
      your_colleges << college
    end
    #if no colleges match, returns random college. else returns random matched college
    if your_colleges.empty?
      return colleges.keys.sample.to_s
    else
      return your_colleges.sample.to_s
    end
  end
end