# qb-walkingstyles

# Original Repo 
```https://github.com/ASSYNU/fivem-walking-styles```

# Edited by Nathan#8860

# Optional qb-spawn | It grabs the last saved walking style | MonkeyWhisper

Add this to **every** elseif type on 
```RegisterNUICallback('spawnplayer', function(data)```

```TriggerServerEvent('qb-walkstyles:server:walkstyles', 'get')```
Should look like so

![image](https://user-images.githubusercontent.com/82112471/146123426-ad7ba57c-fe5e-487f-a33f-ee0f844a8602.png)

# Dependancies
[qb-menu] - ```https://github.com/qbcore-framework/qb-menu```

# COMMAND
```/walking-style``` opens menu to change current walking style

# Information
Fivem walking styles which are constant. They are saved in JSON, so even after relogging and server restarts you will have same walking style and it does not burden the database unnecessarily!

Saves walking styles to a json file via QBCore Citizen ID
