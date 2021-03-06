knu = require("knu")
-- Function to guard a given object from GC
guard = knu.runtime.guard

-- Enable auto-restart when any of the *.lua files under ~/.hammerspoon/ is modified
knu.runtime.autorestart(true)

function switchKarabinerElementsProfile(name)
  hs.execute(knu.utils.shelljoin(
      "/Library/Application Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli",
      "--select-profile",
      name
  ))
end

knu.usb.onChange(function (device)
    local name = device.productName
    if device.vendorName and name and (
        name:find("PS2") or  -- I still use PS/2 Kinesis Keyboard via USB adapter...
          (not device.vendorName:find("^Apple") and name:find("Keyboard"))
      ) then
      if device.eventType == "added" then
        switchKarabinerElementsProfile("External")
      else
        switchKarabinerElementsProfile("Default")
      end
    end
end)
