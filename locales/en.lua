local Translations = {
    gym = {
        do_pushup = 'Do Pushups',
        do_horizontal = 'Pull Up',
        do_situp = 'Shuttle',
        do_yoga = 'Do Yoga',
        do_karate = 'Do Karate',
        do_zbar = 'Do Z-Bar'
    },

    progressbar = {
        pushup = 'You are doing push-ups..',
        horizontal = 'You\'re doing pull-ups..',
        situp = 'You\'re doing situps..',
        yoga = 'You are doing yoga..',
        karate = 'You are doing karate..',
        zbar = 'You are doing zbar'
    },

    notify = {
        start = 'You are starting the exercise..',
        pushup = 'You did pushups and you are tired, you need to rest for 20 seconds..',
        horizontal = 'You pulled up and you\'re tired, you need to rest for 20 seconds..',
        situp = 'You did sit-ups and you\'re tired, you need to rest for 20 seconds..',
        yoga = 'You did yoga and calmed down, you should stop for 20 seconds..',
        karate = 'You did karate and you are tired, you need to rest for 20 seconds..',
        zbar = 'You did zbar and you are tired, you need to rest for 20 seconds..',
        warn = 'You can\'t exercise that often, you have to wait 20 seconds..',
        ready = 'You have calmed down enough, you can exercise again..'
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})