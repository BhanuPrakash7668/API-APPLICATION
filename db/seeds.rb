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
Definition.destroy_all

#Definition.reload.id

list = [["evident", "clearly revealed to the mind or the senses or judgment"],
 ["practice", "a customary way of operation or behavior"],
 ["intend", "have in mind as a purpose"],
 ["concern", "something that interests you because it is important"],
["minute", "infinitely or immeasurably small"],
[" Cognizant", "Having knowledge or awareness"],
["Contours", "The broad outline of something, a way in something varies"],
["Predicament", "A difficult, unpleasing or embarrassing situation"],
["Unanimously", "Without opposition / with the approval of all the people involved"],
["Precious ", "of great value"],
["Unravelled " , " investigated or solved and explained something complicated and difficult / undo twisted or knotted or woven threads"],
["Mooted", "raised a question or topic for discussion / made a suggestion regarding something"],
["Voluntary", " Done, given or acting on one’s own will / done or working or maintained without any payment"],
["Subsume", "Include or absorb something in something else"],
["Discarded", "got rid of something or someone as no longer desirable or useful"],
["Penance ",   "Punishment inflicted on oneself for expressing repentance for any wrongdoing of one’s own"],
["Hooliganism", " Disruptive or unlawful behavior such as rioting, vandalism, bullying etc"],
["Fading", "gradually grow faint or disappear/come or cause to come gradually into or out of view (about a television image or a film)"],
["Anticipate", "regard as probable / expect or predict"],
["Presume", "Suppose that something is the case on the basis of probability/be arrogant or impatient enough to do something"],
[" Disruptive", "Causing or tending to cause disruption"],
["Precipitate", "done, made or acting suddenly or without careful consideration"],
["Consensus ", "A general agreement"],
["Condemnation", "The expression of very strong disapproval/the act of condemning someone to a punishment or sentencing"],
["Denunciation", "public condemnation of someone or something / informing against someone."],
["Notion", "a conception or belief about something / an impulse or desire"],
["Startling", "very surprising, astonishing or remarkable"],
["Denunciation", " public condemnation of someone or something / informing against someone."],
["Embody", "Be an expression of or give a visible or tangible form to an idea, quality or feeling"],
["Cumbersome", "Heavy or large & therefore difficult to carry or use"]]
list.each do |word, definition|
  Definition.create(word: word, definition: definition, token: "a")
end


#synonyms
Synonym.destroy_all

list1 = [["Modalities", "methods, procedures, processes, approaches"],
["Cognizant", "Aware, conscious, apprised, informed, observant"],
["Contours", "Outline, shape, form, blueprint"],
["Predicament", "Circumstances, crisis, deadlock, dilemma"],
["Unanimously", "Collectively, commonly, consistently"],
["Precious", "Adored, cherished, beloved, dear"],
["Unravelled", "Deciphered, undid, resolved, solved"],
["Mooted", "broached, discussed, introduced"],
["Voluntary", "Discretionary, optional, elective"],
["Subsume", "include, classify, contain, involve"],
["Discarded", "Rejected, damaged, abandoned, relinquished"],
["Penance", "Atonement, Expiation, Reparation"],
["Hooliganism", "Rowdiness, disorganization, disruption"],
["Fading", "evanescent, dying. Paling, declining"],
["Anticipate", "Expect, foresee, predict, prophesy"],
["Presume", "Surmise, guess, believe, assume"],
["Disruptive", "disturbing, rowdy, troublesome, unruly"],
["Precipitate", "Hasty, rash, rushed"],
["Consensus", "Harmony, accord, concord, unison"],
["Condemnation", "damnation, reproach"],
["Denunciation", "Indictment, accusation, censure, disapproval"] ]
list1.each do |word, synonym|
  Synonym.create(word: word, synonym: synonym)
end



#antonyms
Antonym.destroy_all
list2 = [["Modalities", "Chaos, anarchy, differences"],
["Cognizant", "Ignorant, indifferent, senseless"],
["Contours", "Similarity, uniformity"],
[" Predicament", "Advantage, Benefit, Agreement, Blessing"],
["Unanimously", "Differently, divergently, oppositely"],
["Precious", "Cheap, common, impaired, deficient"],
["Unravelled", "Entangled, questioned, wondered, joined"],
["Mooted","closed, finished"],
["Voluntary", "Compulsory, mandatory, necessary"],
["Subsume", "exclude"],
["Discarded", "Cherished, worthwhile, kept"],
["Penance", "happiness, joy, reward"],
["Hooliganism", "Continuation, peace, assistance, beginning"],
["Fading", "emerging, developing, reviving"],
["Anticipate", "Doubt, be surprised, confirm"],
["Presume", "Calculate, doubt, measure"],
["Disruptive", "calming, disciplined, soothing"],
["Precipitate", "Deliberate, gradual, leisurely"],
["Consensus", "Denial, refusal, dissension"],
["Condemnation", "compliment, acquittal, absolution"],
["Denunciation", "Appreciation, exculpation, exoneration"]]
list2.each do |word, antonym|
  Antonym.create(word: word, antonym: antonym)
end

#Examples
Example.destroy_all
list3 = [["Modalities", "The bureaucrats are the persons who work out the modalities after an agreement is signed by countries on an international forum."],
["Cognizant", "She is cognizant of her responsibilities as the sales head of the organisation"],
["Contours", "She traced the contours of his face with her finger."],
["Predicament", "The century-old club’s financial predicament is not a sudden one as the signs of the same were evident even a decade ago."],
["Unanimously", "The standing committee has decided to pass the bill unanimously after a marathon round of discussion."],
["Precious", "The exhibition at the gallery has many precious works of art on display."],
["Unravelled", "The police are attempting to unravel the cause of his death."],
["Mooted","A cheaper option to upgrade the railway link between Kuala Lumpur and Singapore has been mooted to the Malaysian government."],
["Voluntary", "he team made a voluntary contribution out of their own pockets to help the victims of the devastating earthquake in the country."],
["Subsume", "Most of these phenomena can be subsumed into two broad categories mainly."],
["Discarded", "All his theories regarding black hole have been discarded by the scientists all over the world."],
["Penance", "He had done public penance for those hasty words."],
["Hooliganism", "party cadres resorted to hooliganism when their demands were not met in the meeting by the government."],
["Fading","The fame of the city was fading at that time as the hub of international"],
["Anticipate","She anticipated scorn on her return to the theatre after so many years in the mainstream movies."],
["Presume", "I presume that the man had been escorted from the building safely."],
["Disruptive", "Bringing a disruptive technological innovation in the market is never easy for a startup company in the present era of fierce competition in every field."],
["Precipitate", "pologize for my staff – their actions were precipitate."],
["Consensus", "There is a gradually growing consensus among the general public that the current regime has failed in delivering on its promises."],
["Condemnation", "There has been a strong condemnation of the attack on civilians by the Army of the country in the name of ethnic cleansing."],
["Denunciation","His family members reacted in support of denunciation of his methods of achieving success in life."]]
list3.each do |word, example|
  Example.create(word: word, example: example)
end
