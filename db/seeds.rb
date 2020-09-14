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

#antonyms
Antonym.destroy_all

list2 = ["disregard, ignore, overlook, slight", "aeon (or eon), age, eternity, forever", "dispute, gainsay, negate, nullify",
         "inapparent, impossible, improbable, inconceivable, unlikely", "inaction, rest, relaxation, idleness, inactivity",
         "chance, haphazard, hit-or-miss, incidental, random", "calmness, content, contentment, ease", "fail, slight, slur",
         "causation, cause, occasion, reason", "recede, retire, retreat, withdraw", "discredit, invalidate, rebut, refute",
         "dubious, equivocal, qualified, questionable", "carry on, cut up, misbehave, misconduct", "jade, pall, tire, weary",
         "give, grant, pay, lose", "ample, bountiful, copious, generous", "foolishness, half-wittedness, idiocy, senselessness",
         "dishonest, dishonorable, evil", "birth, descent, extraction, origin", "impossible, improbable, inconceivable"]

Word.all.each do |word|
  word.antonyms.create(antonym: list2[word.id-1])
end

#synonyms
Synonym.destroy_all

list3 = ["call, count, esteem, hold", "eyeblink, flash, heartbeat, instant", " check, chord, cohere, coincide",
         "assumed, ostensible, ostensive, presumed", "dry run, rehearsal, trial", "aspire, calculate, contemplate, design",
         "company, enterprise, establishment, firm", "achieve, bring off, carry off, carry out", "aftermath, backwash, child, conclusion",
         "passage, path, route, way", "prove, show, substantiate", "all-out, arrant, blank, blooming", "administrate, carry on, control, direct",
         "bemuse, busy, catch up, engross", "attain, bag, bring in, capture", "niggardly, poor, scant", "line, methodology, procedure",
         "linear, right, straightaway", "clan, family, folks, house", "evident, ostensible, ostensive, presumed"]


Word.all.each do |word|
  word.synonyms.create(synonym: list3[word.id-1])
end


#Examples
Example.destroy_all

list4 = ["At the moment, artemisinin-based therapies are considered the best treatment, but cost about $10 per dose - far too much for impoverished communities.",
         "The minute stain on the document was not visible to the naked eye.", "The committee worked in accord on the bill, and it eventually passed.",
         "That confidence was certainly evident in the way Smith handled the winning play with 14 seconds left on the clock.",
         "He directed and acted in plays every season and became known for exploring Elizabethan theatre practices.",
         "Lipstick, as a product intended for topical use with limited absorption, is ingested only in very small quantities,” the agency said on its website.",
         "The scandal broke out in October after former chief executive Michael Woodford claimed he was fired for raising concerns about the company's accounting practices.",
         "In an unprecedented front page article in 2003 The Times reported that Mr. Blair, a young reporter on its staff, had committed journalistic fraud.",
         "As a result, the privacy issues surrounding mobile computing are becoming ever-more complex.",
         "Spain’s jobless rate for people ages 16 to 24 is approaching 50 percent.",
         "A small French colony, Port Louis, was established on East Falkland in 1764 and handed to the Spanish three years later.",
         "No one can blame an honest mechanic for holding a wealthy snob in utter contempt.",
         "Scientists have been conducting studies of individual genes for years.",
         "We had nearly two hundred passengers, who were seated about on the sofas, reading, or playing games, or engaged in conversation.",
         "He delayed making the unclassified report public while awaiting an Army review, but Rolling Stone magazine obtained the report and posted it Friday night.",
         "Meanwhile, heating oil could grow more scarce in the Northeast this winter, the Energy Department warned last month.",
         "Inflation has lagged behind the central bank’s 2 percent target, giving policy makers extra scope to cut rates.",
         "After three straight losing seasons, Hoosiers fans were just hoping for a winning record.",
         "In other words, Apple’s stock is cheap, and you should buy it.",
         "But the elderly creak is beginning to become apparent in McCartney’s voice."]

Word.all.each do |word|
  word.examples.create(example: list4[word.id-1])
end
