--Owner https://discord.gg/RAEEP825KC


ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('fps:openfps') 
AddEventHandler('fps:openfps', function()
    OpenFPSMenu()
end)


function OpenFPSMenu() 

    local elements = {
		  {label = 'FPS ON',		value = 'fps'},	   
      {label = 'Pack Grafico',		value = 'fps3'},	       
      {label = 'Luces Mejoradas',		value = 'fps2'},               
		  {label = 'Desacrivar FPS ON',		value = 'fps1'},									          
        }
  
    ESX.UI.Menu.CloseAll()
  
    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'headbagging',
      {
        title    = 'Menu FPS',
        align    = 'top-left',
        elements = elements
        },
            function(data2, menu2)
              if data2.current.value == 'fps' then
                SetTimecycleModifier('yell_tunnel_nodirect')
             elseif data2.current.value == 'fps1' then
                SetTimecycleModifier()
                ClearTimecycleModifier()
                ClearExtraTimecycleModifier()
              elseif data2.current.value == 'fps2' then
                SetTimecycleModifier('tunnel') 
              elseif data2.current.value == 'fps3' then
                  SetTimecycleModifier('MP_Powerplay_blend')
                  SetExtraTimecycleModifier('reflection_correct_ambient')    
              end
            end,
      function(data2, menu2)
        menu2.close()
      end
    )
  
  end
