Config = {}
Config.Locale = 'en'

--[[────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
─██████──────────██████─██████████████─██████████████─██████──██████─██████──────────██████─██████████████─████████──████████─██████████████─████████████████───
─██░░██████████████░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██──██░░██─██░░██████████──██░░██─██░░░░░░░░░░██─██░░░░██──██░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░░░██───
─██░░░░░░░░░░░░░░░░░░██─██░░██████████─██░░██████████─██░░██──██░░██─██░░░░░░░░░░██──██░░██─██░░██████░░██─████░░██──██░░████─██░░██████████─██░░████████░░██───
─██░░██████░░██████░░██─██░░██─────────██░░██─────────██░░██──██░░██─██░░██████░░██──██░░██─██░░██──██░░██───██░░░░██░░░░██───██░░██─────────██░░██────██░░██───
─██░░██──██░░██──██░░██─██░░██████████─██░░██─────────██░░██████░░██─██░░██──██░░██──██░░██─██░░██──██░░██───████░░░░░░████───██░░██████████─██░░████████░░██───
─██░░██──██░░██──██░░██─██░░░░░░░░░░██─██░░██─────────██░░░░░░░░░░██─██░░██──██░░██──██░░██─██░░██──██░░██─────██░░░░░░██─────██░░░░░░░░░░██─██░░░░░░░░░░░░██───
─██░░██──██████──██░░██─██░░██████████─██░░██─────────██░░██████░░██─██░░██──██░░██──██░░██─██░░██──██░░██───████░░░░░░████───██░░██████████─██░░██████░░████───
─██░░██──────────██░░██─██░░██─────────██░░██─────────██░░██──██░░██─██░░██──██░░██████░░██─██░░██──██░░██───██░░░░██░░░░██───██░░██─────────██░░██──██░░██─────
─██░░██──────────██░░██─██░░██████████─██░░██████████─██░░██──██░░██─██░░██──██░░░░░░░░░░██─██░░██████░░██─████░░██──██░░████─██░░██████████─██░░██──██░░██████─
─██░░██──────────██░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██──██░░██─██░░██──██████████░░██─██░░░░░░░░░░██─██░░░░██──██░░░░██─██░░░░░░░░░░██─██░░██──██░░░░░░██─
─██████──────────██████─██████████████─██████████████─██████──██████─██████──────────██████─██████████████─████████──████████─██████████████─██████──██████████─
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────]]--

Config.Marker = {
    Type = 27,
    DrawDistance = 10,
    ColorR = 255,
    ColorG = 255,
    ColorB = 255,
}


Config.Restos = {
    {
        RestoName = 'Logger',
        Owner = 'steam:11000010efdfb1b',
        posX = 258.56,
        posY = -773.07,
        posZ = 30.69,
        type = 'logger',
        Logo = 280,
        LogoColor = 0,
    },

    {
        RestoName = 'Cubaans menu',
        Owner = 'steam:11000010d5d17ff',
        posX = 279.63,
        posY = -972.65,
        posZ = 29.87,
        type = 'Cubaans',
        Logo = 280,
        LogoColor = 0,
    },

    {
        RestoName = 'Italiaans menu',
        Owner = 'steam:1100001051d9c75',
        posX = 283.8,
        posY = -972.54,
        posZ = 29.87,
        type = 'Italiaans',
        Logo = 280,
        LogoColor = 0,
    },

    {
        RestoName = 'Pearls',
        Owner = 'steam:110000107b82acf',
        posX = -1820.71,
        posY = -1198.44,
        posZ = 14.47,
        type = 'Pearls',
        Logo = 280,
        LogoColor = 0,
    },

    {
        RestoName = 'Anarchy Pub',
        Owner = 'steam:1100001051d9c75',
        posX = -560.01,
        posY = 284.58,
        posZ = 82.18,
        type = 'Anarchy',
        Logo = 280,
        LogoColor = 0,
    },

    {
        RestoName = 'Cosmos Cafe',
        Owner = 'steam:11000011be63479',
        posX = -631.67,
        posY = 233.79,
        posZ = 81.88,
        type = 'Cafe',
        Logo = 280,
        LogoColor = 0,
    },

    {
        RestoName = 'Cosmos Tacoshop',
        Owner = 'steam:11000011be63479',
        posX = 417.1,
        posY = -1913.94,
        posZ = 25.47,
        type = 'Taco',
        Logo = 280,
        LogoColor = 0,
    },
}

Config.Food = {
    --donut kraam bp

    {
        name = 'Sandwich',
        resto = 'logger',
        addfood = '120000',
        adddrink = '-10000',
        price = 6,
    },

    {
        name = 'donut',
        resto = 'logger',
        addfood = '100000',
        adddrink = '-10000',
        price = 4,
    },

    {
        name = 'Blikje Cola',
        resto = 'logger',
        addfood = '0',
        adddrink = '100000',
        price = 3,
    },  
    
    {
        name = 'Flesje Water',
        resto = 'logger',
        addfood = '0',
        adddrink = '150000',
        price = 2,
    },  
 
    {
        name = 'Blikje Sprite',
        resto = 'logger',
        addfood = '0',
        adddrink = '100000',
        price = 3,
    }, 
    
    --Cubaans menu
    {
        name = 'Flesje Water',
        resto = 'Cubaans',
        addfood = '0',
        adddrink = '150000',
        price = 2,
    }, 
    
    {
        name = 'Ropa Vieja',
        resto = 'Cubaans',
        addfood = '250000',
        adddrink = '-30000',
        price = 18,
    },

    {
        name = 'Ajiaco',
        resto = 'Cubaans',
        addfood = '150000',
        adddrink = '-10000',
        price = 9,
    },

    {
        name = 'Arroz con Pollo',
        resto = 'Cubaans',
        addfood = '270000',
        adddrink = '-20000',
        price = 21,
    },

    {
        name = 'L A con Mojo',
        resto = 'Cubaans',
        addfood = '300000',
        adddrink = '-40000',
        price = 24,
    },

    {
        name = 'Cubaanse sandwich',
        resto = 'Cubaans',
        addfood = '150000',
        adddrink = '-15000',
        price = 7,
    },

    {
        name = 'Buñuelos Cubanos',
        resto = 'Cubaans',
        addfood = '175000',
        adddrink = '-20000',
        price = 11,
    },

    {
        name = 'Blikje Sprite',
        resto = 'Cubaans',
        addfood = '0',
        adddrink = '100000',
        price = 3,
    },

    {
        name = 'Blikje Cola',
        resto = 'Cubaans',
        addfood = '0',
        adddrink = '100000',
        price = 3,
    }, 

    {
        name = 'Blikje Fanta',
        resto = 'Cubaans',
        addfood = '0',
        adddrink = '100000',
        price = 3,
    }, 

    {
        name = 'Blikje Icetea',
        resto = 'Cubaans',
        addfood = '0',
        adddrink = '100000',
        price = 4,
    }, 

    -- italiaans menu

    {
        name = 'Spaghetti Bolongnese',
        resto = 'Italiaans',
        addfood = '250000',
        adddrink = '-25000',
        price = 18,
    }, 

    {
        name = 'Spaghetti Carbonara',
        resto = 'Italiaans',
        addfood = '300000',
        adddrink = '-25000',
        price = 21,
    }, 

    {
        name = 'Lasagne',
        resto = 'Italiaans',
        addfood = '200000',
        adddrink = '-30000',
        price = 15,
    }, 

    {
        name = 'Tiramisu',
        resto = 'Italiaans',
        addfood = '100000',
        adddrink = '-10000',
        price = 8,
    },

    {
        name = 'Ravioli',
        resto = 'Italiaans',
        addfood = '200000',
        adddrink = '-30000',
        price = 16,
    },

    {
        name = 'Pizza Margerita',
        resto = 'Italiaans',
        addfood = '300000',
        adddrink = '-25000',
        price = 23,
    },

    {
        name = 'Pizza Hawai',
        resto = 'Italiaans',
        addfood = '325000',
        adddrink = '-25000',
        price = 25,
    },

    {
        name = 'Scampi italiano',
        resto = 'Italiaans',
        addfood = '325000',
        adddrink = '0',
        price = 28,
    },

    {
        name = 'Blikje Icetea',
        resto = 'Italiaans',
        addfood = '0',
        adddrink = '100000',
        price = 4,
    }, 

    {
        name = 'Blikje Fanta',
        resto = 'Italiaans',
        addfood = '0',
        adddrink = '100000',
        price = 3,
    }, 

    {
        name = 'Blikje Cola',
        resto = 'Italiaans',
        addfood = '0',
        adddrink = '100000',
        price = 3,
    }, 

    {
        name = 'Blikje Sprite',
        resto = 'Italiaans',
        addfood = '0',
        adddrink = '100000',
        price = 3,
    },

    {
        name = 'Flesje Water',
        resto = 'Italiaans',
        addfood = '0',
        adddrink = '150000',
        price = 2,
    }, 

    --Pearls

    {
        name = 'Flesje Water',
        resto = 'Pearls',
        addfood = '0',
        adddrink = '150000',
        price = 2,
    },   

    {
        name = 'Fishsticks',
        resto = 'Pearls',
        addfood = '200000',
        adddrink = '-15000',
        price = 15,
    },  

    {
        name = 'vispannetje',
        resto = 'Pearls',
        addfood = '300000',
        adddrink = '40000',
        price = 30,
    },  

    {
        name = 'kreeft',
        resto = 'Pearls',
        addfood = '280000',
        adddrink = '-20000',
        price = 27,
    }, 

    {
        name = 'Fish n chips',
        resto = 'Pearls',
        addfood = '200000',
        adddrink = '-20000',
        price = 14,
    }, 

    {
        name = 'mosselen',
        resto = 'Pearls',
        addfood = '230000',
        adddrink = '-20000',
        price = 21,
    }, 

    {
        name = 'scampi diabolique',
        resto = 'Pearls',
        addfood = '190000',
        adddrink = '-20000',
        price = 18,
    }, 

    {
        name = 'kibbeling',
        resto = 'Pearls',
        addfood = '175000',
        adddrink = '-20000',
        price = 15,
    }, 

    {
        name = 'haring',
        resto = 'Pearls',
        addfood = '150000',
        adddrink = '-15000',
        price = 12,
    }, 

    {
        name = 'Blikje Sprite',
        resto = 'Pearls',
        addfood = '0',
        adddrink = '100000',
        price = 3,
    },

    {
        name = 'Blikje Cola',
        resto = 'Pearls',
        addfood = '0',
        adddrink = '100000',
        price = 3,
    }, 

    {
        name = 'Blikje Icetea',
        resto = 'Pearls',
        addfood = '0',
        adddrink = '100000',
        price = 4,
    }, 

    {
        name = 'Blikje Fanta',
        resto = 'Pearls',
        addfood = '0',
        adddrink = '100000',
        price = 3,
    }, 
}