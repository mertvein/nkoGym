local Translations = {
    gym = {
        do_pushup = 'Şınav Çek',
        do_horizontal = 'Barfiks Çek',
        do_situp = 'Mekik Çek',
        do_yoga = 'Yoga Yap',
        do_karate = 'Karate Yap',
        do_zbar = 'Z-Bar Kaldır'
    },

    progressbar = {
        pushup = 'Şınav çekiyorsun..',
        horizontal = 'Barfiks çekiyorsun..',
        situp = 'Mekik çekiyorsun..',
        yoga = 'Yoga yapıyorsun..',
        karate = 'Karate yapıyorsun..',
        zbar = 'Z-Bar kaldırıyorsun..'
    },

    notify = {
        start = 'Egzersize başlıyorsun..',
        pushup = 'Şınav çektin ve yoruldun, 20 saniye dinlenmelisin..',
        horizontal = 'Barfiks çektin ve yoruldun, 20 saniye dinlenmelisin..',
        situp = 'Mekik çektin ve yoruldun, 20 saniye dinlenmelisin..',
        yoga = 'Yoga yaptın ve sakinleştin, 20 saniye durmalısın..',
        karate = 'Karate yaptın ve yoruldun, 20 saniye dinlenmelisin..',
        zbar = 'Z-Bar kaldırdın ve yoruldun, 20 saniye dinlenmelisin..',
        warn = 'Bu kadar sık spor yapamazsın, 20 saniye beklemelisin..',
        ready = 'Yeterince sakinleştin, yeniden spor yapabilirsin..'
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})