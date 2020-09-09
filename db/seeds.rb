# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#@apis=Api.all
#@apis.each do |api|
Definition.destroy_all
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
