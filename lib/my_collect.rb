array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
collection = ['ruby', 'javascript', 'python', 'objective-c']

def my_collect(list)
  if block_given?
    new_list = []
    i = 0
    while i < list.length
      new_list.push(yield list[i])
        i += 1
    end
    return new_list
  else
    return "Oops!"
  end
end

my_collect(array) do |name|
  name.split(" ").first
end

my_collect(collection) do |lang|
  lang.upcase
end
