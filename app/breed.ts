const breeds: {
    [key: string]: { info: string[]; images: string[] };
  } = {
    Gir: {
      info: [
        "This breed is otherwise called as Bhadawari, Desan, Gujarati, Kathiawari, Sorthi, and Surati.",
        "Originated in Gir forests of South Kathiawar in Gujarat also found in Maharashtra and adjacent Rajasthan.",
        "Basic colours of skin are white with dark red or chocolate-brown patches or sometimes black or purely red.",
        "Horns are peculiarly curved, giving a ‘half moon’ appearance.",
        "Milk yield ranges from 1200-1800 kgs per lactation.",
        "This bread is known for its hardiness and disease resistance",
      ],
      images: [
        "http://www.agritech.tnau.ac.in/expert_system/cattlebuffalo/Images/Content%20photos/gir1.png",
      ],
    },
    "Red Sindhi": {
      info: [
        "This breed is otherwise called as Red Karachi and Sindhi and Mahi",
        "Originated in Karachi and Hyderabad (Pakistan) regions of undivided India and also reared in certain organized farms in our country.",
        "Colour is red with shades varying from dark red to light, strips of white.",
        "Milk yield ranges from 1250 to 1800 kgs per lactation.",
        "Bullocks despite lethargic and slow can be used for road and field work.",
      ],
      images: [
        "http://www.agritech.tnau.ac.in/expert_system/cattlebuffalo/Images/Content%20photos/red%20sindhi2.png",
      ],
    },
    Sahiwal: {
      info: [
        "Originated in Montgomery region of undivided India.",
        "This breed otherwise known as Lola (loose skin), Lambi Bar, Montgomery, Multani, Teli.",
        "Best indigenous dairy breed.",
        "Reddish dun or pale red in colour, sometimes flashed with white patches.",
        "Heavy breed with symmetrical body having loose skin.",
        "The average milk yield of this breed is between 1400 and 2500 kgs per lactation.",
      ],
      images: [
        "http://www.agritech.tnau.ac.in/expert_system/cattlebuffalo/Images/Content%20photos/sahiwal2.png",
      ],
    },
    Hallikar: {
      info: [
        "Originated from the former princely state of Vijayanagarm, presently part of Karnataka.",
        "The colour is grey or dark grey.",
        "Compact, muscular and medium size animal with prominent forehead, long horns and strong legs.",
        "The breed is best known for its draught capacity and especially for its trotting ability.",
      ],
      images: [
        "http://www.agritech.tnau.ac.in/expert_system/cattlebuffalo/Images/Content%20photos/hallikar1.png",
      ],
    },
    " Amritmahal": {
      info: [
        "Originated in Hassan, Chikmagalur and Chitradurga district of Karnataka.",
        "Amiritmahals are grey cattle but their shade varies from almost white to near black.",
        "The muzzle, feat and tail are usually black.",
        "Horns are long and end in sharp black points",
      ],
      images: [
        "http://www.agritech.tnau.ac.in/expert_system/cattlebuffalo/Images/Content%20photos/amritmahal2.png",
      ],
    },
    Khillari: {
      info: [
        "Originated from Sholapur and Sitapur districts of Maharashtra.",
        "Closely resembles Hallikar breed.",
        "Grey-white in colour.",
        "Long horns turn forwards in a peculiar fashion. The horns are generally black, sometimes pinkish.",
        "Bullocks are fast and powerful.",
      ],
      images: [
        "http://www.agritech.tnau.ac.in/expert_system/cattlebuffalo/Images/Content%20photos/khillari1.png",
      ],
    },
    Kangayam: {
      info: [
        "Also known as kongu and konganad.",
        "Originated in Kangayam, Dharapuram, Perundurai, Erode, Bhavani and part of Gobichettipalayam taluk of Erode and Coimbatore district.",
        "Bulls are grey with dark colour in hump, fore and hind quarters.",
        "The horns are spread apart, nearly straight with a slight curve backwards.",
        "Cows are grey or white.",
        "The eyes are dark and prominent with black rings around them.",
        "Moderate size with compact bodies.",
      ],
      images: [
        "http://www.agritech.tnau.ac.in/expert_system/cattlebuffalo/Images/Content%20photos/kankeyam1.png",
      ],
    },
    Bargur: {
      info: [
        "Found around Bargur hills in Bhavani taluk of Erode district in Tamilnadu.",
        "Developed for work in uneven hilly terrains.",
        "Generally brown colour with white markings.",
        "Animals are well built, compact and medium in size.",
        "Known for their speed and endurance in trotting.",
        "Cautious in behaviour and tends to remain away from strangers.",
      ],
      images: [
        "http://www.agritech.tnau.ac.in/expert_system/cattlebuffalo/Images/Content%20photos/bargur1.png",
      ],
    },
    Umblachery: {
      info: [
        "It is otherwise called as Jathi madu, Mottai madu, Molai madu, Therkathi madu.",
        "Originated inThanjavur, Thiruvarur and Nagappattinam districts of Tamil Nadu.",
        "Suitable for wet ploughing and known for their strength and sturdiness.",
        "Umblachery calves are generally red or brown at birth with all the characteristic white marking on the face, on limbs and tail.",
        "The legs have white markings below the hocks like socks.",
        "The practice of dehorning of bullocks is peculiar in Umblachery cattle.",
      ],
      images: [
        "http://www.agritech.tnau.ac.in/expert_system/cattlebuffalo/Images/Content%20photos/umbalacheri1.png",
        "https://www.dairyknowledge.in/sites/default/files/styles/medium_large/public/umblachery_cow.jpg?itok=BBTew12r",
        "https://www.dairyknowledge.in/sites/default/files/styles/large/public/umblachery_bull.jpg?itok=JEqGj69E",
      ],
    },
    Pulikulam: {
      info: [
        "This breed is commonly seen in cumbum valley of Madurai district in Tamil Nadu.",
        "Also known as Jallikattu madu, kidai madu, sentharai.",
        "Small in size, usually grey or dark grey in colour.",
        "Well- developed hump.",
        "Mainly used for penning in the field.",
        "Useful for ploughing.",
        "Presence of reddish or brownish spots in muzzle, eyes, switch and back is the characteristic feature of this breed.",
        "Typical backward curving horns of likeMysore type cattle.",
        "Breeds are active, useful draught animals but not fast trotter",
      ],
      images: [
        "http://www.agritech.tnau.ac.in/expert_system/cattlebuffalo/Images/Content%20photos/pullikulam2.png",
        "https://www.dairyknowledge.in/sites/default/files/styles/medium_large/public/pulikulam_cow.jpg?itok=CqoGnhvn",
        "https://www.dairyknowledge.in/sites/default/files/styles/large/public/pulikulam_bull.jpg?itok=hXFwn5x0",
      ],
    },
    Alambadi: {
      info: [
        "Originated from Alambadi of Dharmapuri district in Tamilnadu.",
        "Grey or dark grey in colour.",
        "White markings will be seen in forehead, limb and tail.",
        "Horns are backward curving like Mysore cattle.",
        "Resembles Hallikar and also known as Betas.",
        "It is useful in ploughing",
      ],
      images: [
        "http://www.agritech.tnau.ac.in/expert_system/cattlebuffalo/Images/Content%20photos/alambadi.jpg",
      ],
    },
    Tharparkar: {
      info: [
        "Originated in Tharparkar district (Pakistan) of undivided India and also found in Rajasthan.",
        "Otherwise known as White Sindhi, Gray Sindhi and Thari.",
        "They are medium sized, compact and have lyre-shaped horn.",
        "Body colour is white or light grey.",
        "The bullocks are quite suitable for ploughing and casting and the cows yield 1800 to 2600 kgs of milk per lactation.",
      ],
      images: [
        "http://www.agritech.tnau.ac.in/expert_system/cattlebuffalo/Images/Content%20photos/tharparkar2.png",
      ],
    },
    Hariana: {
      info: [
        "It was originated from Rohtak, Hisar, Jind and Gurgaon districts of Haryana and also popular in Punjab, UP and parts of MP.",
        "Horns are small.",
        "The bullocks are powerful work animals.",
        "Hariana cows are fair milkers yielding 600 to 800 kg of milk per lactation.",
      ],
      images: [
        "http://www.agritech.tnau.ac.in/expert_system/cattlebuffalo/Images/Content%20photos/hariana1.png",
      ],
    },
    Kankrej: {
      info: [
        "It is otherwise called as Wadad or Waged, Wadhiar.",
        "Originated from Southeast Rann of Kutch of Gujarat and adjoining Rajasthan (Barmer and Jodhpur district).",
        "The horns are lyre-shaped.",
        "Colour of the animal varies from silver-grey to iron-grey or steel black.",
        "The gait of Kankrej is peculiar called as 1 ¼ paces (sawai chal).",
        "Kankrej is valued for fast, powerful, draught cattle. Useful in ploughing and carting.",
        "The cows are good milkers, yielding about 1400 kgs per lactation.",
      ],
      images: [
        "http://www.agritech.tnau.ac.in/expert_system/cattlebuffalo/Images/Content%20photos/kankrej2.png",
      ],
    },
    Ongole: {
      info: [
        "Otherwise known as Nellore.",
        "Home tract is Ongole taluk in Guntur district of Andhra Pradesh.",
        "Large muscular breed with a well developed hump.",
        "Suitable for heavy draught work.",
        "White or light grey in colour.",
        "Average milk yield is 1000 kgs per lactation.",
      ],
      images: [
        "http://www.agritech.tnau.ac.in/expert_system/cattlebuffalo/Images/Content%20photos/ongole2.png",
      ],
    },
    "Krishna Valley": {
      info: [
        "Originated from black cotton soil of the water shed of the river Krishna in Karnataka and also found in border districts of Maharastra.",
        "Animals are large, having a massive frame with deep, loosely built short body.",
        "Tail almost reaches the ground.",
        "Generally grey white in colour with a darker shade on fore quarters and hind quarters in male. Adults females are more whitish in appearance.",
        "The bullocks are powerful animals useful for slow ploughing, and valued for their good working qualities.",
        "The average yield is about 900 kgs per lactation.",
      ],
      images: [
        "http://www.agritech.tnau.ac.in/expert_system/cattlebuffalo/Images/Content%20photos/krishnavalley1.png",
      ],
    },
    Deoni: {
      info: [
        "This breed otherwise known as Dongerpati, Dongari, Wannera, Waghyd, Balankya, Shevera.",
        "Originated in Western Andra Pradesh and also found in Marathwada region of Maharashtra state and adjoining part of Karnataka.",
        "Body colour is usually spotted black and white.",
        "Milk yield ranges from 636 to 1230 kgs per lactation.",
        "Caving interval average is 447 days.",
        "Bullocks are suitable for heavy cultivation.",
      ],
      images: [
        "http://www.agritech.tnau.ac.in/expert_system/cattlebuffalo/Images/Content%20photos/deoni2.png",
      ],
    },
    Rathi: {
      info: [
        "1800-3500 kg",
        "Bikaner, Rajasthan, Haryana, Punjab",
        "Type of a w:Zebu cattle.",
      ],
      images: [
        "https://www.biodiversityofindia.org/images/thumb/1/11/Bos_taurus_indicus.jpg/400px-Bos_taurus_indicus.jpg",
      ],
    },
    "Red Kandhari": {
      info: [
        "Marathwada, Maharashtra. ",
        "Bullocks are good draught animals. Cows are good milkers.",
      ],
      images: [
        "https://www.biodiversityofindia.org/images/thumb/6/67/Lal_Kandhari.JPG/400px-Lal_Kandhari.JPG",
      ],
    },
    Nimari: {
      info: [
        "Khandwa, Madhya Pradesh",
        "This is a dual purpose milk and draught breed. Animals are copper colored, with patches of white",
      ],
      images: [
        "https://www.biodiversityofindia.org/images/e/ed/Nimari_cow.jpg",
        "https://www.dairyknowledge.in/sites/default/files/styles/medium_large/public/nimari_cow.jpg?itok=_C09TsMt",
        "https://www.dairyknowledge.in/sites/default/files/styles/large/public/nimari_bull.jpg?itok=6AbDvu3b",
      ],
    },
    Malvi: {
      info: [
        "Madhya Pradesh, Rajasthan",
        "Bullocks are useful for ploughing. Cows are average milkers.",
      ],
      images: ["https://www.biodiversityofindia.org/images/a/ac/Malvi_cow.jpg"],
    },
    Dangi: {
      info: [
        "Western Maharashtra",
        "Especially good for heavy rainfall areas for draught purpose.",
      ],
      images: [
        "https://www.biodiversityofindia.org/images/thumb/7/71/Dangi_Cow.jpg/400px-Dangi_Cow.jpg",
      ],
    },
    Amritmahal: {
      info: [
        "1000-1200 kg per lactation",
        "Karnataka",
        "Bullocks are well-known for draught power and endurance.",
      ],
      images: [
        "https://www.biodiversityofindia.org/images/thumb/1/18/Amrit_Mahal.jpg/400px-Amrit_Mahal.jpg",
      ],
    },
    Nagori: {
      info: [
        "Nagore, Rajasthan",
        "It is an excellent draught breed. Bullocks are good for draught purposes.",
      ],
      images: [
        "https://www.biodiversityofindia.org/images/thumb/8/8c/Nagori.jpg/400px-Nagori.jpg",
      ],
    },
    Baraguru: {
      info: ["Coimbatore, Tamil Nadu", "Bullocks are good work animals."],
      images: [
        "https://www.biodiversityofindia.org/images/thumb/2/2d/Baraguru.jpg/400px-Baraguru.jpg",
      ],
    },
    Kenkatha: {
      info: [
        "Banda, Uttar Pradesh, Madhya Pradesh.",
        "Bullocks are small but fairly sturdy animals and good for cultivation in rocky areas.",
      ],
      images: [
        "https://www.biodiversityofindia.org/images/thumb/b/b9/Kenkatha.jpg/400px-Kenkatha.jpg",
      ],
    },
    Siri: {
      info: [
        "Hills around Darjeeling and Sikkim. Originally from Bhutan.",
        "This breed can stand the rugged conditions of the mountains very well. Bullocks are eagerly sought after for draught purposes (ploughing and transport) due to their reputed great strength.",
      ],
      images: [
        "https://www.biodiversityofindia.org/images/thumb/5/59/Siri_Nublaung.png/400px-Siri_Nublaung.png",
      ],
    },
    Bachaur: {
      info: [
        "Sitamarhi, Bihar.",
        "Bullocks are used for draught purpose. Cows are poor milkers.",
      ],
      images: ["https://www.biodiversityofindia.org/images/f/f5/Bachaur.jpg"],
    },
    Kherigarh: {
      info: [
        "Kheri, Uttar Pradesh.",
        "The cattle of this breed are very active and thrive on grazing only. Bullocks are good for light draught and quick light transport. The cows are poor milkers.",
      ],
      images: [
        "https://www.biodiversityofindia.org/images/thumb/4/4d/Kerighar.jpg/400px-Kerighar.jpg",
      ],
    },
    Mewati: {
      info: [
        "Rajasthan",
        "Mewati cattle are in general sturdy, powerful and docile and are useful for heavy ploughing, carting and drawing water from deep wells. Cows are said to be good milkers.",
      ],
      images: [
        "https://www.dairyknowledge.in/sites/default/files/styles/medium_large/public/mewati-cow.jpg?itok=yHLD_C97",
        "https://www.dairyknowledge.in/sites/default/files/styles/large/public/mewati-bull.jpg?itok=LC7vN5p7",
      ],
    },
    Ponwar: {
      info: ["Pilbhit, Uttar Pradesh", "Draught purpose. Cows are poor milkers."],
      images: [
        "https://www.biodiversityofindia.org/images/thumb/4/47/Ponwar_cow.jpg/400px-Ponwar_cow.jpg",
      ],
    },
    Vechur: {
      info: [
        "Kerala",
        "Smallest cow breed in the world! Bullocks are mainly used for draught purpose. Cows are poor milkers. In the image alongside, the smaller cow is a 16 year old Vechur cow, while the larger cow is a 6-year old cross bred cow.",
      ],
      images: [
        "https://www.biodiversityofindia.org/images/thumb/1/10/Vechur_cow.jpg/400px-Vechur_cow.jpg",
      ],
    },
    "Malenadu Gidda": {
      info: ["Coastal and hilly areas of Karnataka"],
      images: [
        "https://www.biodiversityofindia.org/images/thumb/4/41/Malenadu_Gidda.jpg/400px-Malenadu_Gidda.jpg",
      ],
    },
    Kasaragod: {
      info: ["Kerala"],
      images: [
        "https://www.biodiversityofindia.org/images/thumb/7/73/Kasaragod.jpg/400px-Kasaragod.jpg",
      ],
    },
    Gaolao: {
      info: [
        "Chhattisgarh/Maharashtra",
        "Gaolao breed of cattle is a dual purpose breed and originated from Maharashtra, Madhya Pradesh and Chhattisgarh state and known for their large and well built in size.",
      ],
      images: [],
    },
    Punganur: {
      info: ["Chiitur Andhrapradesh"],
      images: [
        "https://i.pinimg.com/564x/5f/32/e9/5f32e935a7dd29580b3607883a20841a.jpg",
      ],
    },
    Nimadi: {
      info: ["Khandwa"],
      images: [
        "https://i.pinimg.com/474x/c0/a5/3d/c0a53dc3346af7084df637bc4919f84c.jpg",
      ],
    },
    Motoo: {
      info: ["Orissa"],
      images: [
        "https://i.pinimg.com/474x/9e/19/62/9e1962f4d9ea18d2b4b3bb9c83c7eb14.jpg",
      ],
    },
    "Lal Kandari": {
      info: ["Naded Maharashra"],
      images: [
        "https://i.pinimg.com/474x/e0/56/d5/e056d51cfb0b78111558c352310a4098.jpg",
      ],
    },
    "Lal Sindhi": {
      info: ["Developed Breed"],
      images: [
        "https://i.pinimg.com/474x/be/50/c8/be50c85ae3074f5eb48786ab08406c32.jpg",
      ],
    },
    Kosail: {
      info: ["Orissa"],
      images: [
        "https://i.pinimg.com/474x/53/c7/e3/53c7e385859f19f83e066eaee0e86279.jpg",
      ],
    },
    Ghumsari: {
      info: ["Orissa"],
      images: [
        "https://i.pinimg.com/474x/83/15/86/8315864f36f62b8559dbb1a1c86b8d7d.jpg",
      ],
    },
    Devoni: {
      info: ["Latur,Parbani,Nanded - mah"],
      images: [
        "https://i.pinimg.com/474x/72/27/02/7227023c8f94db612957ef66f69b6a38.jpg",
      ],
    },
    Gangatiri: {
      info: ["Utter Pradesh"],
      images: [
        "https://i.pinimg.com/474x/32/83/e1/3283e1003b4060be91551416afc492b4.jpg",
      ],
    },
    Binjhapuri: {
      info: ["Orissa"],
      images: [
        "https://i.pinimg.com/474x/bd/55/07/bd5507879546fab3c73840f4c18e1d72.jpg",
      ],
    },
    Javari: {
      info: ["Hubli, Bijapur areas of Karnataka"],
      images: [
        "https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Javari_01.JPG/440px-Javari_01.JPG",
        "http://govanithashraya.org/wp-content/uploads/2013/07/Javari.png",
      ],
    },
    Bargagur: {
      info: ["Tamilnadu"],
      images: [
        "http://govanithashraya.org/wp-content/uploads/2013/07/Baragur.png",
      ],
    },
    Khariar: {
      info: [
        "Odisha",
        "Khariar is named after its native tract 'Khariar' in Nuapada district of Odisha. Breeding tract comprises Nuapada, Kalahandi and Balangir districts of Odisha. Heavy concentration of animals of this breed is found in Khariar, Komna, Sinapali and Boden blocks of Nuapada district. Coat colour is mainly brown and sometimes grey. Horns are straight and often emerge upward and inward. Animals of this breed are  small sized and of strong built. Hump, neck, and some regions of face and back are dark in colour. The breed is used for draught purpose in its native tract, which is hilly and undulated. The lactation milk yield ranges from 300 to 450 Kg with 4 to 5 % Fat.",
      ],
      images: [
        "https://www.dairyknowledge.in/sites/default/files/styles/medium_large/public/khariar-cow.jpg?itok=RELIdbkw",
        "https://www.dairyknowledge.in/sites/default/files/styles/large/public/khariar-bull.jpg?itok=mYmFO3Jg",
      ],
    },
    Belahi: {
      info: [
        "Haryana",
        `Belahi breed of cattle are also known as Morni/ Desi. The breeding tract of this breed lies in the foothills of Shivalik in Haryana State and includes Ambala, Panchkula, Yamunanagar districts of Haryana and Chandigarh. Term ‘Belaha’ is used to describe mixture of colours. Animals of this breed are migratory in nature and are maintained on low input cost.
        Most common colour of the animals are Reddish brown, Grey or white. Horns are sickle shaped curving upwards and inwards. Animals are  medium sized and having uniform but distinct body colour pattern.   The face and extremities are white in colour and different degrees of white colour can be seen on ventral part of body. Head is straight and broad with prominent poll. The average standard lactation yield  is  1014 Kg ranging from 182 to 2092 Kgs with average milk fat  % of 5.25  ranging from 2.37 to  7.89 %`,
      ],
      images: [
        "https://www.dairyknowledge.in/sites/default/files/styles/medium_large/public/belahi.jpg?itok=wG0J-lM2",
        "https://saveindiancows.org/wp-content/uploads/2018/05/belahi-thumbnails.png",
      ],
    },
    Binjharpuri: {
      info: [
        "Odisha",
        `Binjharpuri, also known as “Deshi”, is a breed of cattle found in Jajpur, Kendrapara and Bhadrak districts of Odisha, maintained for milk, draught and manure. Animals are medium sized, strong and chiefly white in colour. Some animals are Grey, Black or Brown. In males, the hump, neck and some regions of face and back are black in colour irrespective of their coat color. Horns are medium in size and curved upward and inward. The milk yield per lactation ranges from 915-1350 kg with milk fat ranging from 4.3-4.4%.`,
      ],
      images: [
        "https://www.dairyknowledge.in/sites/default/files/styles/medium_large/public/binjharpuri_cow.png?itok=QYyXo_BR",
        "http://www.dairyknowledge.in/sites/default/files/styles/large/public/binjharpuri_bull.png?itok=uEzmEJVO",
      ],
    },
    Ghumusari: {
      info: [
        "Odisha",
        `Ghumusari breed of cattle is also known as “Deshi”. Breeding tract includes western part of Ganjam district and adjoining areas of Phulbani district of Odisha. It is chiefly a draught cattle breed, but few animals are maintained for milk, manure and fuel. The draughtability of bullocks is considered superior than other breeds of bullocks in the native tract. The animals are small sized and strong in built. They are chiefly white in color, but sometimes shades of grey are also visible. The horns are medium sized, mostly curved upward and inward, but some animals having straight horns as well. The animals of this breed have a small head with flat, broad forehead, depressed in between the eyes. The animals are maintained in semi-intensive management system, and rarely fed any concentrate. Lactating cows and bullocks are fed with straw, rice bran and kitchen waste. Cows are milked only once in morning hours. The milk yield per lactation ranges from 450-650 kg, with milk fat ranging from 4.8-4.9%.`,
      ],
      images: [
        "https://www.dairyknowledge.in/sites/default/files/styles/medium_large/public/ghumusari_cow.png?itok=TxIv93Rk",
      ],
    },
    Motu: {
      info: [
        "Odisha",
        `These dwarf cattle are used for draught purpose in hilly and undulated terrain and the breed is named after local area "Motu" of Malkangiri district in Orissa. Their breeding tract comprises southern part of Malkangiri district and adjoining area of Chhattisgarh and Andhra Pradesh. Heavy concentration of animals is found in Motu, Kalimela, Podia and Malkangiri areas of Malkangiri district in Orissa. Sandy and clay type soil is predominant in this area.. Coat colour is mainly brown (reddish) and sometimes grey. Few animals are white in colour. Animals of this breed are mostly polled and horns whenever present emerge straight and upward and end with rounded tip. Though the breed is small sized they are strong in built. The milk yield is meagre and ranges from 100 to 140 Kg in a lactation with 4.8 to 5.3% fat.`,
      ],
      images: [
        "https://www.dairyknowledge.in/sites/default/files/styles/medium_large/public/motu-cow.jpg?itok=1O1StKiV",
        "https://www.dairyknowledge.in/sites/default/files/styles/large/public/motu-bull.jpg?itok=rhnh0pY4",
      ],
    },
    Kosali: {
      info: [
        "Chhattisgarh",
        `The breed is predominantly seen in the plains of Chhattisgarh and the breeding tract includes Raipur, Durg, Bilaspur and Janjgir districts. The ancient name of this region was ‘Kowshal’.
        Farmers particularly of Yadava/Rawuth communit y are keeping this breed of cattle, generation after generation. These are mainly reared for manure, draught and milk. Most predominant colour is light red, followed by whitish grey. Few animals having black coat colour or red with white patches are also seen. Horns are stumpy, emerging straight, then going outward, upward, and inward from the polls. Muzzle, eyelids, tail switch and hooves are black. Head is broad, flat and straight. Hump is small to medium in size. Udder small and bowl shaped. Bullocks of this breed are very efficient for ploughing in paddy fields and other operations in the paddy fields. The average milk yield per lactation is 210 kg with an average milk fat % of 3.5. The lactation yield ranges from 200 to 250 kg with average fat % from 3 to 4.5.`,
      ],
      images: [
        "https://www.dairyknowledge.in/sites/default/files/styles/medium_large/public/kosali.jpg?itok=kHR8Hnrk",
        "https://www.dairyknowledge.in/sites/default/files/styles/large/public/kosali_bull.jpg?itok=Iusxz1Gu",
      ],
    },
    "Konkan Kapila": {
      info: [
        "Konkan region of Maharashtra",
        `Konkan Kapila is a native breed distributed along the Konkan region of Maharashtra and Goa. This breed has been recently registered with the National Bureau of Animal Genetic Resources, India.
        The Kapila is an exceptional and revered breed in terms of its spiritual quotient, and has inherited its name from the ancient sage Kapila who is said to have tended this cattle breed. Kapila is native to the regions of Dakshina Karnataka and Kasaragod in Kerala. This breed is easy to maintain as it is not labour-intensive. It can survive on jungle forage and minimal added fodder. Its food comprises highly diverse forest flora, including many of the wild medicinal plants.
        
        The Kapila breed has excellent tolerance to diseases. Its products are regarded as the holiest among all cow products, and are used extensively for performing rituals. Its milk, dung and urine are utilised for the curing of cancer. The milk produced by these cows contain immense medicinal properties and healing capabilities. Due to its small stature, Kapila bulls and cows can easily ingest small-sized grass, plants etc. and these are highly nutritious. The nutritional values are naturally passed on to its milk, dung and urine.
        
        Swarna Kapila has golden-coloured nose, skin and eyes. This breed produces a substance called “Go-rochana” in its horns that are shed once in two years. Go-rochana has great therapeutic value. It eases off fever and weakness, is effective against skin problems, and is an antidote to poison. It is a spiritual product, and wards off negativities, promotes clear thoughts, etc.
        
        Males of this breed possess good draft ability. They are best suited to hilly terrain and hot, humid climate- as found in its native tract. It possesses a high level of heat tolerance. It can survive on scanty grazing, even in sloppy forest areas, without any fatigue.
        
        The Konkan Kapila breed is small in stature and produces less milk. Nevertheless, its milk has high medicinal values and healing properties. It is noteworthy that practitioners of Ayurveda prefer the products of the Kapila, for preparation of medicinal formulations.`,
      ],
      images: [
        "https://saveindiancows.org/wp-content/uploads/2019/06/konkan_kapila.png",
      ],
    },
    Ladakhi: {
      info: [
        "Leh-Ladakh region of Jammu & Kashmir",
        `Ladakhi breed is found in the high-altitude desert region where the main source of water is the winter snowfall on the mountains. These cattle are native to the Leh-Ladakh region of Jammu & Kashmir, and have their breeding tracts in and around the Leh and Kargil districts of Jammu and Kashmir. Ladakhi cattle is a unique germplasm having excellent adaptation to high atmospheric conditions.
        The regions on the north flank of the Himalayas experience heavy snowfall and remain virtually cut off from the rest of the country for several months in the year, while summers are short but long enough to grow crops. The proportion of oxygen is comparatively less due to a lack of vegetation. Nevertheless, these are well adapted to the extreme cold climatic and hypoxic (decreased oxygen supply) conditions.
        
        Ladakhi like the other native breeds are known for their resistance to diseases and their ability to thrive on low input system.
        
        These cattle are reared under the extensive system for milk, draft and manure purposes. The Ladakhi cow is a great source of A2 milk. In spite of extreme climatic conditions, subsistence on poor quality feed and low availability of water, it produces around 2 to 5 kg of milk per day.
        
        Milk of Ladakhi breed serves as an important protein source for local people, particularly during lean winter periods. Since its milk has a high fat percentage, it is used for producing butter and churpi – an important part of the local diet.
        
        The lactating cows are provided additional feed-Thuchu that is left- over food (rice, raw vegetables, sattu, etc) and local barley straw.
        
        In winter, farmers mix local barley grains/sattu in hot salted water and feed it to the cattle especially to the lactating cows.`,
      ],
      images: [
        "https://saveindiancows.org/wp-content/uploads/2019/05/ladakhi.png",
      ],
    },
    Hissar: {
      info: [
        "crossing of the several native breeds including the Hariana breed",
        `Hissar is a hybrid ‘desi’ breed developed in course of over a century with the crossing of the several native breeds including the Hariana breed. Currently, the population of this breed is very low, since the present government policy is to develop the Hariana breed. Hissar cattle have their origin from Indian state “Hissar” but are found in fair number in areas adjoining Indian border including districts of Bahawalnagar and Bahawalpur in the Punjab province of Pakistan.
        The home of this breed is Hansi tehsil of Hissar district, and these cattle are present in the Hissar and Hansi districts. These are also found abundantly in Punjab, and is generally found to be white coloured. It was observed that farmers of certain areas of Punjab had a special liking for white and others for the dark grey colour of these cattle. The herd was, therefore, divided on these lines and this made the breed more popular in the region.
        
        Hissar is famous for its draught power capacity, endurance and agility at work. These are seen in cattle fairs at Hansi, Hissar, Bhiwani, Sirsa, Rewari and Singar.`,
      ],
      images: [
        "https://saveindiancows.org/wp-content/uploads/2019/05/ladakhi.png",
      ],
    },
    "Red Purnea": {
      info: [
        "distributed in the entire district of Purnea and the adjoining Araria and Katihar districts of Bihar",
        `Purnea /Red Purnea cattle is a distinct indigenous breed, distributed in the entire district of Purnea and the adjoining Araria and Katihar districts of Bihar. Most of its breeding tract has sandy soil deficient in micro-nutrients, with water logging condition. These cattle are naturally bred, and are resistant to diseases.
        Purnea cattle which exist in grey and red varieties, are not listed amongst the recognised breeds of cattle in India. Its estimated population is about 2.5 lakhs.
        
        Purnea cattle are small to medium-sized animals. These are low milk yielders, and are extensively useful in agricultural operations and pulling loads. On an average, they work 7 to 8 hours a day and a pair of bullocks can plough an acre of land in approximately six hours.
        
        The Purnea cattle are mostly provided housing sheds, or are kept in front of the farmer’s house or under shades of nearby trees. Almost 70% of the cattle are stall-fed with straws from paddy, wheat and maize that are cultivated locally. These are rarely fed with green fodder or any type of concentrate. The remaining 30% are allowed for community grazing.`,
      ],
      images: [
        "https://saveindiancows.org/wp-content/uploads/2018/10/Red-purnea.png",
      ],
    },
    "Kasargod Dwarf": {
      info: [
        "Kasaragod dwarf is mostly found in Kasargod, the northern-most district of Kerala",
        `Kasaragod dwarf (Kullan) is one amongst the three prime dwarf cattle in India, the other two being Malnad Gidda and Vechur breed of cattle. Kasaragod dwarf is mostly found in Kasargod, the northern-most district of Kerala, flanked by a vast coastal area in the West, plains in the South and hilly tracts towards the North. The breed is also found in Mangalore, Coorg and some other parts of Karnataka. Some centuries ago, this breed of cattle was known as Sahya Pashu (Sahyadri Hill Cows) and was also found in Kannur and other parts of Kerala.
        Kasaragod Dwarf is small-sized, friendly and understanding, and is well adapted to the hot and humid climate of Kerala. It possesses high heat tolerance and disease resistance, and can survive on kitchen scraps and jungle forage. This breed is also less susceptible to mastitis, a common udder infection.
        
        Kasaragod Dwarf breed is in much demand due to the popularity of zero-budget farming. Those who know this breed are confident that conservation of these cattle could actually help the agrarian communities to deal with their problem of sustainable progress, and could also play a vital role in the growth and development of rural areas.
        
        This breed has not been included in the list of India’s 41 native cattle breeds that have been documented by the National Bureau for Animal Genetic Resources (NBAGR) Karnal, Haryana though moves have already begun to get this breed included in the list of native cattle breed of Kerala.`,
      ],
      images: [
        "https://saveindiancows.org/wp-content/uploads/2018/10/cow_thumbnails_sept.png",
      ],
    },
    Lakhimi: {
      info: [
        "Assam",
        `The Lakhimi Cattle is found in all parts of Assam. This dual-purpose ‘desi’ breed is reared for milking and draught purposes. Bullocks of this breed are excellent draft animals and are used for carting and ploughing during paddy cultivation. The total population of the Lakhimi cattle is about 79 to 80 lakhs. This breed is known for its heat tolerance, disease resistance, adaptability to harsh agro-climatic conditions, and also for its ability to survive and perform under scarce feed and fodder.`,
      ],
      images: [
        "https://saveindiancows.org/wp-content/uploads/2018/07/lakhimi_thumbnails.png",
      ],
    },
    Badri: {
      info: [
        "Uttarakhand",
        `The Red Hill Cattle or Badri is a dual-purpose ‘desi’ cattle breed – reared for milking and draught purposes. The petite Badri cow is found only in the hill districts and was earlier known as the ‘pahadi’ cow. These cattle are well adapted to the hilly terrain and the climatic conditions of Uttarakhand. This sturdy and disease-resistant breed is found in hilly regions of the Almora and Pauri Garhwal districts of Uttarakhand. The Badri cow is considered auspicious and is also used for religious purposes.
        Disease resistance is a very important characteristic of this breed as it rarely gets any disease. It remains healthy throughout life, as these cattle are fed on pure vegetation and live in natural and fresh, pollution-free condition of the hilly areas of Uttarakhand.
        
        Badri breed is the first certified cattle breed of Uttarakhand. In its endeavour to promote cattle-rearing of the Badri breed, the government has started initiatives by improving marketing facilities, providing nutritious feed and fodder, and providing employment opportunities to the locals of the region.
        
        According to a research study conducted by the Uttarakhand State Council for Science & Technology & IIT Roorkee, the milk of the Badri cow contains almost 90% A2 beta-casein proteins – and is one of the highest in any indigenous varieties.
        
        The constitution of an organized market for the Badri cattle products, and the promotion of organic farming with appropriate incentives are needed for promoting Badri cattle-keeping among the farmers of Uttarakhand.`,
      ],
      images: [
        "https://saveindiancows.org/wp-content/uploads/2018/06/Cow_thumbnail.png",
      ],
    },
    Kerigarh: {
      info: [
        "Uttar Pradesh",
        `Kerigarh cattle is named after the Kheri district of Uttar Pradesh from where it originated. This breed is also found in the adjoining Pilibhit district. It is closely related to the Malvi breed in appearance. Its lyre-shaped horn formation is typical of the Malvi breed though the Kerigarh are much lighter in appearance.
        The Kerigarh bullocks are fast trotters and are extensively used for draught purposes. Though very poor milkers, this breed is considered as one of the foremost amongst the draught animals of India.
        The cattle start work when they are about 4 years old with a weight of approx. 270 kgs.
        It is said that a pair of bullocks can pull about 1.5 tons of load trotting to a distance of about 50 to 55 kms per day at a speed of 5 to 6 kms per hour.`,
      ],
      images: [
        "https://saveindiancows.org/wp-content/uploads/2017/08/Kerigarh-cow-surabhivana.jpg",
      ],
    },
  };
  
  const breedInfoLinks = [
    "http://www.agritech.tnau.ac.in/expert_system/cattlebuffalo/Breeds%20of%20cattle%20&%20baffalo.html", // Done
    "https://www.biodiversityofindia.org/index.php?title=Native_cow_varieties_of_Indias", //Done
    "https://www.pinterest.com/vediccow/desi-breed-indian-cows/more_ideas/?ideas_referrer=1", //Done
    "http://govanithashraya.org/indian-cow-breeds/", // Done
    "https://www.pinterest.com/savecows/", //Done
    "https://krushimahiti.wordpress.com/2016/03/04/indian-cattle-breeds/", //Done
    "https://in.pinterest.com/ruchi15/gau-mata/",
    "https://www.dairyknowledge.in/section/cattle-breeds", // Done
    "http://14.139.252.116/agris/breed.aspx",
    "https://saveindiancows.org/category/indian-breeds/",
  ];