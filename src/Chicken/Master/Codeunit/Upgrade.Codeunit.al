codeunit 50121 Upgrade
{
    Subtype = Upgrade;

    trigger OnUpgradePerCompany()
    var
        appmoduleinfo: ModuleInfo;

    begin
        if NavApp.GetCurrentModuleInfo(appmoduleinfo) then
            if appmoduleinfo.AppVersion = Version.Create(1, 0, 0, 1) then
                UpdateDefaultChickenTypes();
    end;

    local procedure UpdateDefaultChickenTypes()
    var
        ChickenType: Record ChickenType;
    begin
        UpdateChickenType('ISABROWN', '01', 'Chicken Type 01');
        UpdateChickenType('HAMPRED', '02', 'Chicken Type 02');
        UpdateChickenType('LOHBROWN', '03', 'Chicken Type 03');
    end;

    local procedure UpdateChickenType(OldChickenTypeCode: Code[20]; NewChickenTypeCode: Code[20]; NewhickenTypeDescription: Text[100])
    var
        ChickenType: Record ChickenType;
        ChickenTypeModify: Record ChickenType;
    begin
        Clear(ChickenType);
        ChickenType.SetRange(Code, OldChickenTypeCode);
        if ChickenType.FindFirst() then begin
            ChickenTypeModify.Copy(ChickenType);
            ChickenTypeModify.Description := NewhickenTypeDescription;
            ChickenTypeModify.Rename(NewChickenTypeCode);
        end;
    end;

}