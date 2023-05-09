Scriptname hp_playerEquipBoastingScript extends ReferenceAlias  
{player boasting about what equipped}

Event OnObjectEquipped(Form baseObject, ObjectReference reference)
    string objectName = baseObject.GetName() ; this is an SKSE method
    string displayName = "non-persistent item"
    if reference != none
        displayName = reference.GetDisplayName() ; this is an SKSE method
    endif
    Debug.MessageBox("Player just equipped: " + displayName + " ( " + objectName + " )")
EndEvent
