# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#@apis=Api.all
#@apis.each do |api


#definitions
Word.destroy_all

#Definition.reload.id

list = ["consider", "minute", "accord", "evident", "practise", "intend", "concern", "commit",
        "issue", "approach", "establish", "utter", "conduct", "engage", "obtain", "scarce", "policy", "straight", "stock", "apparent"]
list.each do |word|
  Word.create(word: word)
end



#definitions
Def.destroy_all
list1 = ["deem to be", "infinitely or immeasurably small",
        "concurrence of opinion", "clearly revealed to the mind or the senses or judgment", "a customary way of operation or behavior",
        "have in mind as a purpose", "something that interests you because it is important", "perform an act, usually with a negative connotation",
        "some situation or event that is thought about", "move towards", "set up or found", "without qualification", "direct the course of; manage or control",
        "consume all of one's attention or time", "come into possession of", "deficient in quantity or number compared with the demand",
        "a plan of action adopted by an individual or social group", "successive, without a break", "capital raised by a corporation through the issue of shares",
        "clearly revealed to the mind or the senses or judgment"]
#list1.each do |definition|
#  Def.create(definition: definition)
#end
Word.all.each do |word|
  word.defs.create(definition: list1[word.id-1])

end
