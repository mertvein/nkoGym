# nkoGym
- Advanced GYM [QBCORE]
- New QBCore

## Video Showcase
- https://youtu.be/AvXlYqjRAhE
## Discord
- https://discord.gg/nko

## Features
- Script using full qb-target
- Easy editable Config file
- Easy editable language file
- Low Resmon
- Thanks to the script, your driving development and features such as stamina are strengthened

## Dependencies
- [qb-core](https://github.com/qbcore-framework/qb-core)
- [qb-target](https://github.com/qbcore-framework/qb-target)

### Installation
- Download the script and put it in the `[qb]` directory.
- Add the following code to your server.cfg/resouces.cfg
```
ensure gamz-skillsystem
ensure nkoLean
```
- Add the following lines to your qb-core/server/players.lua -> under Metadatas
```
	PlayerData.metadata["skill"]  = PlayerData.metadata["skill"]  ~= nil and PlayerData.metadata["skill"] or {
		["Kondisyon"] = {["Current"] = 15.0, ["Stat"] = "MP0_STAMINA", ["RemoveAmount"] = 0}, 
		["Güç"] = {["Current"] = 5.0, ["Stat"] = "MP0_STRENGTH", ["RemoveAmount"] = 0 }
	}
```
- Credit: <a href="https://github.com/gamziboi/gamz-skillsystem"> gamz-skillsystem </a>
