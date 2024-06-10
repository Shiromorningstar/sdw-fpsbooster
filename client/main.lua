RegisterKeyMapping('fpsmenu', 'FPS Menu', 'keyboard', 'Y')

RegisterCommand('fpsmenu', function()
    lib.registerContext({
        id = 'sdw_fpsmenu:main',
        title = 'sdw-fpsbooster Menu',
        options = {
            {
                title = 'FPS Booster',
                description = 'Press To Open Booster Menu',
                event = 'sdw_fpsmenu:booster',
                image = 'https://media.discordapp.net/attachments/839858302753308672/1249733701760192674/image.png?ex=666860b5&is=66670f35&hm=ad85f66b186d857900c15f3ad96484032071d463df9c06b06fbbb9668b6b2206&=&format=webp&quality=lossless&width=643&height=437',
                metadata = {
                    {label = 'Reminder', value = 'This Option May Lower The Default Texture Budget And Render Quality'}
                },
            },
            {
                title = 'FPS Graphics',
                description = 'Press To Open Graphics Menu',
                event = 'sdw_fpsmenu:graphics',
                image = 'https://media.discordapp.net/attachments/839858302753308672/1249734495700258856/image.png?ex=66686172&is=66670ff2&hm=bad91be79b263d037a3a0c485fe9681e79312739388473ef3778496a66cfd978&=&format=webp&quality=lossless&width=620&height=437',
                metadata = {
                    {label = 'Reminder', value = 'This Option Can Change Your Visual Acuity'}
                },
            },
            {
                title = 'FPS Reset',
                description = 'Press To Reset Total Graphics',
                event = 'sdw_fpsBooster:total:reset',
                image = 'https://media.discordapp.net/attachments/839858302753308672/1249737243363508312/image.png?ex=66686401&is=66671281&hm=595dbcd4ce4e1d024cc8b3f6e7fb25cf314d8c858728b53737af79cd0aed4a75&=&format=webp&quality=lossless&width=673&height=437',
                metadata = {
                    {label = 'Reminder', value = 'This Option Will Set All Your Selected Settings To Default'}
                },
            }
        },
    })
    lib.showContext('sdw_fpsmenu:main')
end)
AddEventHandler('sdw_fpsmenu:booster', function()
    lib.registerContext({
        id = 'sdw_fpsmenu:booster',
        title = 'sdw-fpsbooster Menu',
        options = {
            {
                title = 'FPS Boost 50%',
                description = 'Press To Select Desire FPS Value',
                event = 'sdw_fpsBooster:low',
            },
            {
                title = 'FPS Boost 75%',
                description = 'Press To Select Desire FPS Value',
                event = 'sdw_fpsBooster:medium'
            },
            {
                title = 'FPS Boost 100%',
                description = 'Press To Select Desire FPS Value',
                arrow = true,
                event = 'sdw_fpsBooster:high'
            },
            {
                title = 'FPS Boost Reset',
                description = 'Press To Select FPS RESET',
                arrow = true,
                event = 'sdw_fpsBooster:reset'
            },
            {
                title = 'Return Back To Main Menu',
                menu = 'sdw_fpsmenu:main'
            }
        },
    })
    lib.showContext('sdw_fpsmenu:booster')
end)
AddEventHandler('sdw_fpsmenu:graphics', function()
    lib.registerContext({
        id = 'sdw_fpsmenu:graphics',
        title = 'sdw-fpsbooster Menu',
        options = {
            {
                title = 'FPS Graphics 1',
                description = 'Press To Select Desire  Graphics',
                event = 'sdw_fpsBooster:graphics:1'
            },
            {
                title = 'FPS Graphics 2',
                description = 'Press To Select Desire Graphics',
                event = 'sdw_fpsBooster:graphics:2'
            },
            {
                title = 'FPS Graphics 3',
                description = 'Press To Select Desire Graphics',
                event = 'sdw_fpsBooster:graphics:3'
            },
            {
                title = 'FPS Graphics Reset',
                description = 'Press To Select FPS RESET',
                event = 'sdw_fpsBooster:graphics:reset'
            },
            {
                title = 'Return Back To Main Menu',
                menu = 'sdw_fpsmenu:main'
            }
        },
    })
    lib.showContext('sdw_fpsmenu:graphics')
end)
AddEventHandler('sdw_fpsBooster:graphics:1', function()
    SetTimecycleModifier('yell_tunnel_nodirect')
end)
AddEventHandler('sdw_fpsBooster:graphics:2', function()
    SetTimecycleModifier('tunnel')
end)
AddEventHandler('sdw_fpsBooster:graphics:3', function()
    SetTimecycleModifier('MP_Powerplay_blend')
    SetExtraTimecycleModifier('reflection_correct_ambient')
end)
AddEventHandler('sdw_fpsBooster:graphics:reset', function()
    SetTimecycleModifier()
    ClearTimecycleModifier()
    ClearExtraTimecycleModifier()
end)

AddEventHandler('sdw_fpsBooster:low', function()
    RopeDrawShadowEnabled(false)
    CascadeShadowsClearShadowSampleType()
    CascadeShadowsSetAircraftMode(false)
    CascadeShadowsEnableEntityTracker(true)
    CascadeShadowsSetDynamicDepthMode(false)
    CascadeShadowsSetEntityTrackerScale(0.0)
    CascadeShadowsSetDynamicDepthValue(0.0)
    CascadeShadowsSetCascadeBoundsScale(0.0)
    SetFlashLightFadeDistance(0.0)
    SetLightsCutoffDistanceTweak(0.0)
    DistantCopCarSirens(false)
end)
AddEventHandler('sdw_fpsBooster:medium', function()
    RopeDrawShadowEnabled(false)
    CascadeShadowsClearShadowSampleType()
    CascadeShadowsSetAircraftMode(false)
    CascadeShadowsEnableEntityTracker(true)
    CascadeShadowsSetDynamicDepthMode(false)
    CascadeShadowsSetEntityTrackerScale(0.0)
    CascadeShadowsSetDynamicDepthValue(0.0)
    CascadeShadowsSetCascadeBoundsScale(0.0)
    SetFlashLightFadeDistance(5.0)
    SetLightsCutoffDistanceTweak(5.0)
    DistantCopCarSirens(false)
end)
AddEventHandler('sdw_fpsBooster:high', function()
    RopeDrawShadowEnabled(true)
    CascadeShadowsClearShadowSampleType()
    CascadeShadowsSetAircraftMode(false)
    CascadeShadowsEnableEntityTracker(true)
    CascadeShadowsSetDynamicDepthMode(false)
    CascadeShadowsSetEntityTrackerScale(5.0)
    CascadeShadowsSetDynamicDepthValue(3.0)
    CascadeShadowsSetCascadeBoundsScale(3.0)
    SetFlashLightFadeDistance(3.0)
    SetLightsCutoffDistanceTweak(3.0)
    DistantCopCarSirens(false)
    SetArtificialLightsState(false)
end)
AddEventHandler('sdw_fpsBooster:reset', function()
    RopeDrawShadowEnabled(true)
    CascadeShadowsSetAircraftMode(true)
    CascadeShadowsEnableEntityTracker(false)
    CascadeShadowsSetDynamicDepthMode(true)
    CascadeShadowsSetEntityTrackerScale(5.0)
    CascadeShadowsSetDynamicDepthValue(5.0)
    CascadeShadowsSetCascadeBoundsScale(5.0)
    SetFlashLightFadeDistance(10.0)
    SetLightsCutoffDistanceTweak(10.0)
    DistantCopCarSirens(true)
    SetArtificialLightsState(false)
end)
AddEventHandler('sdw_fpsBooster:total:reset', function()
    RopeDrawShadowEnabled(true)
    CascadeShadowsSetAircraftMode(true)
    CascadeShadowsEnableEntityTracker(false)
    CascadeShadowsSetDynamicDepthMode(true)
    CascadeShadowsSetEntityTrackerScale(5.0)
    CascadeShadowsSetDynamicDepthValue(5.0)
    CascadeShadowsSetCascadeBoundsScale(5.0)
    SetFlashLightFadeDistance(10.0)
    SetLightsCutoffDistanceTweak(10.0)
    DistantCopCarSirens(true)
    SetArtificialLightsState(false)
    SetTimecycleModifier()
    ClearTimecycleModifier()
    ClearExtraTimecycleModifier()
end)

