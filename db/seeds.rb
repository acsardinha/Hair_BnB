# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Wig.destroy_all
User.destroy_all

require 'open-uri'

user = User.create!(email: "test@test.com", password: "123456")

# wig_one
wig_one = Wig.new(wig_type: "Straight", color: "Brown", name: "Short Size Brown Straight Wig", description: "Powerful and absolutely perfect! Precision cut, short wig with brown short layers. The possibilities are endless: you can wear it slicked, swooped, or spiked with a bit of product.", price: 238.60, user: user)
file = URI.open('https://res.cloudinary.com/dxtsuiudu/image/upload/v1669215465/development/a1li5oedexkrxdi9fbcx7dal2ui1.jpg')
wig_one.photo.attach(io: file, filename: "", content_type: 'image/jpg')
wig_one.save!

# wig_two
wig_two = Wig.new(wig_type: "Curly", color: "Black", name: "Mid Size Black Curly Wig", description: "The reinvented wig is lavish with volume, body and beautiful curls! This mid-length wig features Ellen Wille's impeccable temple to temple lace front that offers styling versatility and a seamless, natural hairline. Style away from the face or however you choose. The cap design is extremely comfortable with open wefting and is ideal for an average head size. The adjustable velcro straps in the nape attach to very soft felt and allow for altering or reducing the circumference size. The density of the ready-to-wear synthetic hair mimics biological hair and requires little to no customization or thinning.", price: 299.99, user: user)
file = URI.open('https://res.cloudinary.com/dxtsuiudu/image/upload/v1669288581/wig3_ujsynj.jpg')
wig_two.photo.attach(io: file, filename: "", content_type: 'image/jpg')
wig_two.save!

# wig_three
wig_three = Wig.new(wig_type: "Straight", color: "Blonde", name: "Long Size Blond Straight Wig", description: "Miles of Style by André Sardinha is a long wig with layers that fall to mid-back to create this full, flowing silhouette. Each softly sculpted wave is designed to add interest and movement to this long style. The Sheer Indulgence lace front monofilament part allows for off-the-face styling, and parting options.", price: 159.99, user: user)
file = URI.open('https://res.cloudinary.com/dxtsuiudu/image/upload/v1669288581/wig4_pztqji.jpg')
wig_three.photo.attach(io: file, filename: "", content_type: 'image/jpg')
wig_three.save!

# wig_four
wig_four = Wig.new(wig_type: "Curly", color: "Brown", name: "Long Size Black Curly Wig", description: "This wig by Alexandre Ferreira is a beautifully shaped beach waved wig. The long heat friendly synthetic layers are accented by feathered bangs. With a lace front and monofilament top, this is a multi-textured dream.", price: 174.99, user: user)
file = URI.open('https://res.cloudinary.com/dxtsuiudu/image/upload/v1669288581/wig6_wcvanc.jpg')
wig_four.photo.attach(io: file, filename: "", content_type: 'image/jpg')
wig_four.save!

# wig_five
wig_five = Wig.new(wig_type: "Curly", color: "Black", name: "Short Size Black Curly Wig", description: "", price: 179.99, user: user)
file = URI.open('https://res.cloudinary.com/dxtsuiudu/image/upload/v1669288581/wig5_wy9tgp.jpg')
wig_five.photo.attach(io: file, filename: "", content_type: 'image/jpg')
wig_five.save!

# wig_six
wig_six = Wig.new(wig_type: "Pixie", color: "Brown", name: "Short Size Brown Pixie Wig", description: "This best seller wig by Alexandre Sá is a pixie wig with barely waved layers that's perfect for every occasion. Loved for its simplicity. Sá offers a wispy bang, textured layering on top with length at the crown and layered ends. The tapered neckline has a touch of length, giving you coverage where you need it most.", price: 79.99, user: user)
file = URI.open('https://res.cloudinary.com/dxtsuiudu/image/upload/v1669288581/wig2_n9jw19.jpg')
wig_six.photo.attach(io: file, filename: "", content_type: 'image/jpg')
wig_six.save!

# wig_seven
wig_seven = Wig.new(wig_type: "Straight", color: "Redhead", name: "Long Size Redhead Straight Wig", description: "The Catwalk-look of the next generation. Wig by David Deus is a modern and long, long, long wig with layers that frame your face perfectly. A side-swept bang adds a perfectly feminine touch, while the wavy layers lend a beachy look that certainly won't miss the target.", price: 324.99, user: user)
file = URI.open('https://res.cloudinary.com/dxtsuiudu/image/upload/v1669288581/wig8_ad2d9b.jpg')
wig_seven.photo.attach(io: file, filename: "", content_type: 'image/jpg')
wig_seven.save!

# wig_eight
wig_eight = Wig.new(wig_type: "Cleopatra", color: "Black", name: "Long Size Black Cleopatra Wig", description: "Material: 100% high-quality heat resistant synthetic fiber of Japanese, which is very soft, the color and texture looks as natural as human hair, it's also not easy to tangle and just minimal shedding. With 150% hair density, the wig is thick enough but lightweight at the same time, remain you comfortable day and night. Furthermore, the hair can be Permed, Straightened, Dyed and Cut, easily satisfy any idea you have.", price: 399.99, user: user)
file = URI.open('https://res.cloudinary.com/dxtsuiudu/image/upload/v1669288581/wig7_wevm2t.jpg')
wig_eight.photo.attach(io: file, filename: "", content_type: 'image/jpg')
wig_eight.save!

# wig_nine
wig_nine = Wig.new(wig_type: "Curly", color: "Black", name: "Long Size Black Curly Wig", description: "Our curly fringe wig with bangs is Modern, Chic, and Bold for its great value, great style, and great design. Differen curly black hair looks natural like your own hair, 23 Inch long hair is so impressive!", price: 199.99, user: user)
file = URI.open('https://res.cloudinary.com/dxtsuiudu/image/upload/v1669288581/wig9_vu1hde.jpg')
wig_nine.photo.attach(io: file, filename: "", content_type: 'image/jpg')
wig_nine.save!

# wig_ten
wig_ten = Wig.new(wig_type: "Wavy", color: "Black", name: "Long Size Black Wavy Wig", description: "This long black wavy wig is made from the high-quality synthetic heat-resistant fibers, soft and smooth. The skin-friendly feature makes you feel very comfortable wearing it. The simulated scalp wig is vivid, making the hair crack more realistic and natural.", price: 239.99, user: user)
file = URI.open('https://res.cloudinary.com/dxtsuiudu/image/upload/v1669288582/wig11_otszuk.jpg')
wig_ten.photo.attach(io: file, filename: "", content_type: 'image/jpg')
wig_ten.save!

# wig_eleven
wig_eleven = Wig.new(wig_type: "Straight", color: "Black", name: "Mid Size Black Straight Wig", description: "High Quality Synthetic Wig: Our black Bob wig is made of high quality heat resistant synthetic fiber, natural looking and feeling like human hair, soft to the touch. Natural Middle Parting Hairline: Small area of lace to help you fix it, so you can wear it looks more natural and easy to install.", price: 189.99, user: user)
file = URI.open('https://res.cloudinary.com/dxtsuiudu/image/upload/v1669288582/wig12_ehrnqj.jpg')
wig_eleven.photo.attach(io: file, filename: "", content_type: 'image/jpg')
wig_eleven.save!

# wig_twelve
wig_twelve = Wig.new(wig_type: "Wavy", color: "Black", name: "Super Long Black Wavy Wig", description: "Long wavy black wig with middle parting, new hairline processing technology makes it more natural. High temperature fiber that can be ironed up to 160 Degrees Centigrade (320 Degrees Fahrenheit). This long wavy wig is soft and smoothly.", price: 279.99, user: user)
file = URI.open('https://res.cloudinary.com/dxtsuiudu/image/upload/v1669288582/wig10_ormxn9.jpg')
wig_twelve.photo.attach(io: file, filename: "", content_type: 'image/jpg')
wig_twelve.save!
