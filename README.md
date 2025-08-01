## Description
This addon handles the plan import function that allows importing plans from https://maps.plan-ops.fr. We will go over its functionality, and how it is utilized.

You can find the mod on the [Steam Workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=3488328833).

## How It Works
A player can use the "Import Plan" and "Delete Plan" diary actions, located under the "AET Actions" section in the briefing/diary, if permitted by the CBA settings. Admins can always use these actions as long as the plan importer is enabled. The player must copy the Arma 3 plan export from [PLANOPS](https://maps.plan-ops.fr) and paste it into the input box. Each side can have only one imported plan at a time; importing a new plan will automatically replace the previous one for that side. All import attempts are logged, recording the importer's name, ID64, import channel, and import text. If the import text does not match the expected pattern, the attempt will be denied. If the pattern matches but contains an unexpected data type during parsing, the attempt will be logged, and an admin will be notified. The below picture shows how the plan importing process looks like:

### 1. Plan Importer Diary Entry

![Plan Importing Process 1](https://github.com/user-attachments/assets/8c429d89-2273-4249-9a31-da45c74c8d0c)

### 2. Plan Importer Channel Selector

![Plan Importing Process 2](https://github.com/user-attachments/assets/b06fa13a-3b73-48c7-a547-9cb827713df1)

### 3. Plan Importer Plan Input

![Plan Importing Process 3](https://github.com/user-attachments/assets/ae809f8a-0670-4c8b-bff1-93ca63e41a00)

## Addon Options
In the below picture you can see the list of addon options that this addon provides:

![Addon Options](https://github.com/user-attachments/assets/cbdbdf13-a022-4988-a109-7db1178d71a4)

* **Enable PLANOPS Plan Importer:** Controls if the "Import Plan" and "Delete Plan" actions in the diary are enabled.
* **Import Channel:** Controls the channel that the plan will be imported into.
  * **Channel Selector:** Allows the player to choose a channel from all the listed channels.
  * **Global:** Sets the import channel to Global.
  * **Side:** Sets the import channel to Side.
  * **Command:** Sets the import channel to Command.
* **Conditions**
  * **Enable For Group Leaders:** Controls if group leaders are allowed to use the "Import Plan" and "Delete Plan" actions.
  * **Enable For The Following Rank And Above:** Controls if a specific rank and all ranks above it are allowed to use the "Import Plan" and "Delete Plan" actions.
    * **Disabled:** Disables rank based access to the plan importer actions.
    * **Private:** Sets the minimum rank to access the plan importer actions to Private.
    * **Corporal:** Sets the minimum rank to access the plan importer actions to Corporal.
    * **Sergeant:** Sets the minimum rank to access the plan importer actions to Sergeant.
    * **Lieutenant:** Sets the minimum rank to access the plan importer actions to Lieutenant.
    * **Captain:** Sets the minimum rank to access the plan importer actions to Captain.
    * **Major:** Sets the minimum rank to access the plan importer actions to Major.
    * **Colonel:** Sets the minimum rank to access the plan importer actions to Colonel.

## Additional
If you want to grant a specific unit access to the plan importer actions without relying on rank, group leader status, or admin privileges, you can assign it a flag using the following code:
```sqf
player setVariable ["AET_PI_core_alwaysAllowed", true, true];
```
The plan importer must still be enabled for this to take effect.
