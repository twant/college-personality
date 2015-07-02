class Array
  def included_in?(array)
    array.to_set.superset?(self.to_set)
  end
end

def college_picker(choice_array)
  colleges = {
  :duke => ["party","perfectionist","suburb", "technology", "baboon","tv","mcdonald","socialite"],
  :carlton => ["camping","nerdy","harry potter","giraffe","farm","technology","maoz","punk"],
  :unc => ["party","socialite", "impala","coldstone","nerdy","suburb","music","stars"],
  :upenn => ["perfectionist","city","technology","impala","enders","coldstone","socialite"],
  :ucla => ["party","slackers","beach","sports","butterfly","tv","maoz","hipster"],
  :stanford => ["camping","nerdy","suburb","technology","impala","stars","panda","punk"],
  :yale => ["read","nerdy","suburb","music","butterfly","harry potter","panda","wallflower"],
  :columbia => ["movies","perfectionist","city","art","butterfly","stars","mcdonalds","hipster"],
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
      return colleges.keys.sample
    else
      return your_colleges.sample
    end
  end
end