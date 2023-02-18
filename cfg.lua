Config = {}

Config.Times = { -- 10000 ms = 10 sec
    ['pushup'] = 10000,
    ['horizontal'] = 12000,
    ['situp'] = 8500,
    ['yoga'] = 14000,
    ['karate'] = 9000,
    ['zbar'] = 8000,
}

Config.Locations = {
    ['pushup'] = {
        coords = vector3(-1205.05, -1560.16, 4.61),
        heading = 1,
        label = Lang:t('gym.do_pushup'),
        icon = 'fas fa-hockey-puck',
        event = 'nkoGym:pushup' -- Don't change, it's pushup event.
    },
    ['horizontal_bar'] = {
        coords = vector3(-1199.89, -1571.32, 4.61),
        heading = 1,
        label = Lang:t('gym.do_horizontal'),
        icon = 'fas fa-dumbbell',
        event = 'nkoGym:horizontal' -- Don't change, it's horizontal event.
    },
    ['situp'] = {
        coords = vector3(-1208.53, -1562.1, 4.61),
        heading = 1,
        label = Lang:t('gym.do_situp'),
        icon = 'fas fa-chair',
        event = 'nkoGym:situp' -- Don't change, it's shuttle event.
    },
    ['yoga'] = {
        coords = vector3(-1196.39, -1568.3, 4.62),
        heading = 1,
        label = Lang:t('gym.do_yoga'),
        icon = 'fas fa-shoe-prints',
        event = 'nkoGym:yoga' -- Don't change, it's yoga event.
    },
    ['karate'] = {
        coords = vector3(-1202.29, -1571.05, 4.63),
        heading = 1,
        label = Lang:t('gym.do_karate'),
        icon = 'fas fa-wave-pulse',
        event = 'nkoGym:karate' -- Don't change, it's yoga event.
    },
    ['zbar'] = {
        coords = vector3(-1202.86, -1565.23, 4.61),
        heading = 1,
        label = Lang:t('gym.do_zbar'),
        icon = 'fas fa-dumbbell',
        event = 'nkoGym:zbar' -- Don't change, it's yoga event.
    },
}

Config.Animations = {
    ['pushup'] = {
        animDict = 'amb@world_human_push_ups@male@idle_a',
        anim = 'idle_d',
        flag = 49,
    },
    ['horizontal_bar'] = {
        anim = 'PROP_HUMAN_MUSCLE_CHIN_UPS',
    },
    ['situp'] = {
        animDict = 'amb@world_human_sit_ups@male@idle_a',
        anim = 'idle_a',
        flag = 49,
    },
    ['yoga'] = {
        animDict = 'rcmfanatic1maryann_stretchidle_b',
        anim = 'idle_e',
        flag = 49,
    },
    ['karate'] = {
        animDict = 'anim@mp_player_intcelebrationfemale@karate_chops',
        anim = 'karate_chops',
        flag = 49,
    },
    ['zbar'] = {
        anim = 'WORLD_HUMAN_MUSCLE_FREE_WEIGHTS',
    },
}