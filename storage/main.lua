local function clear()
    term.clear()
    term.setCursorPos(1, 1)
end

clear()

peripheral.find('modem', rednet.open)
print("What is the main computers id?")
local compID = tonumber(read())

local op = {
    info = 7
}

local name = os.getComputerLabel()
local names = { 'Holly', 'Vincent', 'Holly', 'Daxton', 'Adrianna', 'Leo', 'Ellison', 'Abraham', 'Nevaeh', 'Bryson',
    'Madilynn', 'Jaziel', 'Gianna', 'Alfredo', 'Ayla', 'Cullen', 'Harleigh', 'Vihaan', 'Wynter', 'Rex', 'August', 'Avi',
    'Scarlette', 'Cruz', 'Bailee', 'Vance', 'Savannah', 'Van', 'Karsyn', 'Omar', 'Aubriella', 'Zaid', 'Blair', 'Luke',
    'Emma', 'Grey', 'Jane', 'Carter', 'Violette', 'Terry', 'Cecelia', 'Alex', 'Lennon', 'Tucker', 'Alaiya', 'Waylon',
    'Alexa', 'Arjun', 'Skyla', 'Charlie', 'Emmeline', 'Cain', 'Lucy', 'Emory', 'Arya', 'Darius', 'Morgan', 'Quentin',
    'Emely', 'Benson', 'Lilly', 'Daniel', 'Lila', 'Thiago', 'Helena', 'Kamari', 'Emerie', 'Silas', 'Serenity', 'Izaiah',
    'Analia', 'Philip', 'Queen', 'Eliel', 'Ariya', 'Maurice', 'Dalary', 'Frank', 'Kamilah', 'Callahan', 'Giuliana',
    'Lawson', 'Cadence', 'Ellis', 'Lucia', 'Tony', 'Valery', 'Kendrick', 'Hailey', 'Dexter', 'Zendaya', 'Aron', 'Zoie',
    'Hakeem', 'Audrey', 'Jeremias', 'Dylan', 'Kaleb', 'Dahlia', 'Iker', 'Alice', 'Quinn', 'Addilynn', 'Kyng', 'Nataly',
    'Mordechai', 'Paulina', 'Ronald', 'Elianna', 'Alex', 'Bailey', 'Jayson', 'Ella', 'Sterling', 'Reese', 'Thatcher',
    'Alani', 'Jabari', 'Delilah', 'Camilo', 'Rosa', 'Ryder', 'Harleigh', 'Ricky', 'Hattie', 'Kylen', 'Janelle', 'Baker',
    'Maya', 'Reign', 'Belen', 'Donovan', 'Kaia', 'Cooper', 'London', 'London', 'Nadia', 'Michael', 'Milana', 'Casey',
    'Joy', 'Boone', 'Etta', 'Russell', 'Della', 'Tatum', 'Esme', 'Ali', 'Kailani', 'Alex', 'Paola', 'Anakin', 'Ellie',
    'Skyler', 'Isla', 'Holden', 'Avalynn', 'Owen', 'Brittany', 'Creed', 'Naomi', 'Moshe', 'Alisson', 'Gatlin', 'Lauryn',
    'Isaac', 'Winter', 'Kenzo', 'Belen', 'Reid', 'Danielle', 'Gianni', 'Zara', 'Simon', 'Wrenley', 'Sam', 'Arielle',
    'Romeo', 'Giselle', 'Nasir', 'Kamari', 'Jacob', 'Kaliyah', 'Brycen', 'Opal', 'Bentley', 'Angela', 'London', 'Lara',
    'Jonathan', 'Kylee', 'Casey', 'Analia', 'Bjorn', 'Ila', 'Dominik', 'Esme', 'Jase', 'Luna', 'Jayson', 'Milena',
    'Lukas', 'Bellamy', 'Cruz', 'Treasure', 'Castiel', 'Valery', 'Hayden', 'Averie', 'Franco', 'Freyja', 'Miles', 'Ruth',
    'Leon', 'Emmie', 'Francisco', 'Malayah', 'Ayaan', 'Macie', 'Adriel', 'Tessa', 'Samuel', 'Parker', 'Layne', 'June',
    'Erick', 'Queen', 'Malcolm', 'Guadalupe', 'Davion', 'Summer', 'Jaxton', 'Selah', 'Alberto', 'Joy', 'Mccoy',
    'Lorelai', 'Genesis', 'Avianna', 'Darius', 'Cassidy', 'Dalton', 'Lylah', 'Ellis', 'Aubrey', 'Milan', 'Maia',
    'Maxwell', 'Violeta', 'Ahmad', 'Alyssa', 'Holden', 'Noah', 'Daniel', 'Zora', 'Jaylen', 'Makenzie', 'Aarav', 'Selah',
    'Ermias', 'Mikaela', 'Dalton', 'Autumn', 'Magnus', 'Vanessa', 'Isaiah', 'Adalee', 'Johnathan', 'Alora', 'Curtis',
    'Anais', 'Marcellus', 'Margot', 'Yusuf', 'Braelynn', 'Heath', 'Deborah', 'Judah', 'Ada', 'Princeton', 'Collins',
    'Justin', 'Aspyn', 'Abdullah', 'Jemma', 'Sylas', 'Elle', 'Antonio', 'Kara', 'Theodore', 'Keyla', 'Marcos', 'Emma',
    'Solomon', 'Yareli', 'Roland', 'Hadlee', 'Ibrahim', 'Thea', 'Bryan', 'Eden', 'Brecken', 'Salem', 'Alex', 'Lyra',
    'Amias', 'Dylan', 'Marcos', 'Kori', 'Omari', 'Cora', 'Jett', 'Jimena', 'Kannon', 'Scout', 'Ezequiel', 'Ryleigh',
    'Fletcher', 'Morgan', 'Jesus', 'Henley', 'Davion', 'Andrea', 'Fox', 'Kendall', 'Zahir', 'Charlee', 'Tate',
    'Giavanna', 'Hayes', 'Alexandra', 'Ashton', 'Raelyn', 'Rylan', 'Everly', 'Mason', 'Emma', 'Hezekiah', 'Gabriela',
    'Kendrick', 'Chana', 'Eliezer', 'Megan', 'Lionel', 'Dalary', 'Stefan', 'Meilani', 'Emory', 'Alaina', 'Collin',
    'Sadie', 'Heath', 'Coraline', 'William', 'Ashlynn', 'Atlas', 'Jazmin', 'Skyler', 'Amayah', 'Walter', 'Aya', 'John',
    'Catalina', 'Mitchell', 'Lillian', 'Raiden', 'Nala', 'Stetson', 'Sutton', 'Ayaan', 'Raquel', 'Jase', 'Tiana',
    'Royce', 'Jessica', 'Marcelo', 'Katie', 'Kaden', 'Alina', 'Darian', 'Reese', 'Jesus', 'Anaya', 'Karsyn', 'Chana',
    'Conrad', 'Kaylani', 'Luciano', 'Andrea', 'Magnus', 'Delilah', 'Kyro', 'Keilani', 'Jair', 'Giselle', 'Theodore',
    'Averi', 'Misael', 'Alena', 'Alec', 'Sevyn', 'Ayan', 'Zaylee', 'Kristian', 'Emily', 'Tate', 'Mikayla', 'Musa',
    'Blair', 'Kane', 'Ashlynn', 'Jad', 'Josie', 'Gunner', 'Amari', 'Gustavo', 'Maya', 'Watson', 'Alani', 'Victor',
    'Blakely', 'Kaiden', 'Scarlett', 'Uriah', 'Kynlee', 'Preston', 'Liberty', 'Enoch', 'Daisy', 'Conner', 'Cleo',
    'Lucas', 'Maxine', 'Javier', 'Denise', 'Eden', 'Murphy', 'Graysen', 'Sky', 'Jake', 'Amora', 'Walter', 'Madison',
    'Rafael', 'Esme', 'Sullivan', 'Kehlani', 'Thaddeus', 'Clarissa', 'Garrett', 'Lilyana', 'Kye', 'Louise', 'Corbin',
    'Isabel', 'Zayd', 'Aliana', 'Cesar', 'Sky', 'Nixon', 'Janiyah', 'Callum', 'Delilah', 'Jude', 'Sarai', 'Augustine',
    'Sunny', 'Nasir', 'Jordan', 'Maximus', 'Celia', 'Jeremy', 'Angela', 'Amir', 'Baylee', 'Leo', 'Lilianna', 'Kason',
    'Evie', 'Musa', 'Kallie', 'Van', 'Phoebe', 'Maximilian', 'Jianna', 'Arthur', 'Ariyah', 'Myles', 'Rosemary',
    'Vincenzo', 'Kailani', 'Eddie', 'Mya', 'Nikolas', 'Brylee', 'Terrance', 'Alisson', 'Judah', 'Joyce', 'Omari',
    'Laylani', 'Madden', 'Esperanza', 'Jorge', 'Amora', 'Emiliano', 'Clarissa', 'Harrison', 'Stevie', 'Kamryn',
    'Savanna', 'Maximo', 'Alayah', 'Sullivan', 'Adelina', 'Arian', 'Lucy', 'Bodie', 'Lexi', 'Tommy', 'Haley', 'Jensen',
    'Winter', 'Van', 'Serena', 'Sonny', 'Eileen', 'Korbyn', 'Janelle', 'Ethan', 'Promise', 'Holden', 'Elena', 'Kian',
    'Sky', 'Walter', 'Madilyn', 'Gordon', 'Andi', 'Briggs', 'Melani', 'Casey', 'Laylani', 'Matthias', 'Ellie', 'Harlem',
    'Veda', 'Houston', 'Nova', 'Abdullah', 'Ellison', 'Sam', 'Eden', 'Cillian', 'Lexi', 'River', 'Laylani', 'Andres',
    'Chaya', 'Phoenix', 'Gracelyn', 'Orlando', 'Madilynn', 'Benicio', 'Chandler', 'Jett', 'Brooke', 'Keenan', 'Simone',
    'Callum', 'Makenna', 'Brock', 'Denisse', 'Yousef', 'Kylie', 'Ty', 'Cameron', 'Otis', 'Gracelynn', 'Coen', 'Cassidy',
    'Dalton', 'Kora', 'Beckett', 'Lilianna', 'Lucian', 'Kora', 'Mauricio', 'Avianna', 'Roger', 'Brianna', 'Cory',
    'Clementine', 'Elijah', 'Elaine', 'Denver', 'Kaydence', 'Kohen', 'Penny', 'Alexis', 'Hayden', 'Arturo', 'Paisleigh',
    'Rudy', 'Paityn', 'Branson', 'Alyssa', 'Paul', 'Ryann', 'Dorian', 'Amy', 'Garrett', 'Lena', 'Joel', 'Bianca',
    'Spencer', 'Emani', 'Edgar', 'Zaylee', 'Bruce', 'Tinsley', 'Emmitt', 'Estelle', 'Jair', 'Nyla', 'Julio', 'Melany',
    'Oakley', 'Sara', 'Leland', 'Aliza', 'Bear', 'Amayah', 'Gabriel', 'Lilian', 'Dario', 'Julieta', 'Gideon', 'Reign',
    'Tripp', 'Kaylie', 'Nova', 'Lyra', 'Santino', 'Flora', 'Douglas', 'Ila', 'Jon', 'Brittany', 'Jovanni', 'Joyce',
    'Davian', 'Eliana', 'Dangelo', 'Estelle', 'Lane', 'Jimena', 'Uriah', 'Ainsley', 'Miles', 'Carolyn', 'Drew',
    'Matilda', 'Dustin', 'Rebecca', 'Caspian', 'Armani', 'Finnegan', 'Alora', 'Carl', 'Melina', 'Walter', 'Daleyza',
    'Braden', 'Lana', 'Bishop', 'Skyla', 'Wallace', 'Royalty', 'Pedro', 'Aisha', 'Jay', 'Lana', 'Jorge', 'Brynlee',
    'Blake', 'Paislee', 'Avery', 'Amaris', 'Warren', 'Journi', 'Evan', 'Payton', 'Ledger', 'Haisley', 'Jameson',
    'Sariyah', 'Sage', 'Kimberly', 'Shepherd', 'Anais', 'Levi', 'Kaitlyn', 'Finnley', 'Lina', 'Darius', 'Kamari',
    'Augustine', 'Mazikee', 'Thomas', 'Ramona', 'Cannon', 'Julissa', 'Eddie', 'Miriam', 'Isaiah', 'Adelaide', 'Yosef',
    'Keily', 'Leonard', 'Everlee', 'Dorian', 'Aya', 'Emerson', 'Lilliana', 'Ricky', 'Pearl', 'Cruz', 'Louisa', 'Peyton',
    'Paislee', 'Quinton', 'Macie', 'Kylian', 'Savanna', 'Armando', 'Maeve', 'Kole', 'Tori', 'Omar', 'Johanna', 'Noah',
    'Avalynn', 'Asher', 'Teagan', 'Titan', 'Pearl', 'Jason', 'Harmony', 'Clyde', 'Maya', 'Asa', 'Nyla', 'Brayden',
    'Amari', 'Rafael', 'Londyn', 'Desmond', 'Stormi', 'Kole', 'Lilah', 'Alaric', 'Arielle', 'Caspian', 'Gabrielle',
    'Enrique', 'Fallon', 'Leif', 'Kalani', 'Jalen', 'Amoura', 'Jamal', 'Livia', 'Kohen', 'Marina', 'Kabir', 'Milani',
    'Jensen', 'Maisie', 'Dayton', 'Deborah', 'Warren', 'Zuri', 'Shepherd', 'Murphy', 'Kai', 'Kali', 'Leonardo',
    'Sariyah', 'Abner', 'Oaklyn', 'Kenji', 'Lana', 'Asa', 'Denver', 'Langston', 'Baylee', 'Hezekiah', 'Angelina',
    'Quinton', 'Alison', 'Murphy', 'Amirah', 'Collin', 'Adley', 'Jaxxon', 'Carly', 'Caleb', 'London', 'Lawson',
    'Alianna', 'Kole', 'Scarlet', 'Santiago', 'Mercy', 'Jasper', 'Legacy', 'Kaleb', 'Paityn', 'Lucas', 'Ellianna',
    'Samuel', 'Serenity', 'Blaine', 'Emmeline', 'Houston', 'Kimberly', 'Gianni', 'Keyla', 'Ivan', 'Corinne', 'Zaire',
    'Lillie', 'Royce', 'Maryam', 'Josue', 'Lydia', 'Wes', 'Madisyn', 'Felix', 'Quinn', 'August', 'Trinity', 'Wilder',
    'Cecilia', 'Rafael', 'Jacqueline', 'Archer', 'Amora', 'Wallace', 'Nora', 'Donovan', 'Barbara', 'Dario', 'Anahi',
    'Heath', 'Esperanza', 'Theo', 'Simone', 'Marshall', 'Marley', 'Arthur', 'Greta', 'Edwin', 'Katalina', 'Nikolai',
    'Molly', 'Kaysen', 'Dallas', 'Gavin', 'Helena', 'Briggs', 'Lily', 'Kamari', 'Cecelia', 'Ahmed', 'Emmaline', 'Emory',
    'Caroline', 'Chaim', 'Nia', 'Rudy', 'Dahlia', 'Anderson', 'Kelsey', 'Jaxxon', 'Parker', 'Caiden', 'Dani', 'Zayne',
    'Rayne', 'Arlo', 'Ayleen', 'Aziel', 'Amora', 'Johan', 'Daleyza', 'Quincy', 'Cassandra', 'Thiago', 'Magnolia',
    'Riggs', 'Noa', 'Atreus', 'Keyla', 'Kelvin', 'Astrid', 'Osiris', 'Camryn', 'Kevin', 'Bria', 'Lyric', 'Amy', 'Bode',
    'Raegan', 'Noel', 'Amalia', 'Alden', 'Nina', 'Forest', 'Hannah', 'Julius', 'Everly', 'Collin', 'Dalary', 'Bradley',
    'Kataleya', 'Zachariah', 'Mabel', 'Darren', 'Elle', 'William', 'Bellamy', 'Jerry', 'Jasmine', 'Mohammed', 'Helena',
    'Callan', 'Blakely', 'Frederick', 'Nora', 'Kaysen', 'Dream', 'Josiah', 'Kaydence', 'Paxton', 'Whitney', 'Landen',
    'Elisabeth', 'Alexander', 'Dallas', 'Gavin', 'Bailee', 'Reece', 'Maryam', 'Alvaro', 'Elsa', 'Adrian', 'Cadence',
    'Nova', 'Harper', 'Franco', 'Bexley', 'Allen', 'Zola', 'Tadeo', 'Lea', 'Abner', 'Eloise', 'Boston', 'Cassidy',
    'Raiden', 'Jianna', 'Malcolm', 'Kensley', 'Aron', 'Jolie', 'Jefferson', 'Sienna', 'Gunner', 'Blaire', 'Ayden',
    'Keilani', 'Princeton', 'Chaya', 'Kian', 'Megan', 'Brody', 'Jimena', 'Watson', 'Kendra', 'Eugene', 'Jennifer',
    'Tucker', 'Lilah', 'Briar', 'Adelynn', 'Coen', 'Katalina', 'Vicente' }
if name == nil then
    local i = math.random(1000)
    name = names[i]
    os.setComputerLabel(name)
end

clear()
print(('%s is running on channel %d and is connected to %d'):format(name, os.getComputerID(), compID))

local location = { gps.locate() }
local fuelLevel = turtle.getFuelLevel()
local maxFuel = turtle.getFuelLimit()

rednet.send(compID, {
    label = name,
    id = os.getComputerID(),
    currentFuel = fuelLevel,
    maxFuel = maxFuel,
    x = location[1],
    y = location[2],
    z = location[3],
})

while true do
    local id, msg = rednet.receive()
    local e = tonumber(msg.e)
    if e == op.info and msg.label == name then
        rednet.send(id, {
            label = name,
            currentFuel = fuelLevel,
            maxFuel = maxFuel,
            x = location[1],
            y = location[2],
            z = location[3],
        })
    end
end
