def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(name_array)
    name_array.map {|name| "Hello, my name is #{name}."}
end

#If we do not add a code block for an enumerator method, it returns a Ruby Enumerator, which is something we can iterate through
def assign_rooms(speakers) 
    speakers.each_with_index.map {|speaker, index| "Hello, #{speaker}! You'll be assigned to room #{index + 1}!"}
end

def printer(array)
    badges = batch_badge_creator(array)
    badges.each {|badge| puts badge}
    assignments = assign_rooms(array)
    assignments.each {|assignment| puts assignment}
end