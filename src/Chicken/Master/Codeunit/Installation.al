codeunit 50120 Install
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    begin
        InsertDefaultChickenTypes();
    end;

    local procedure InsertDefaultChickenTypes()
    var
        ChickenType: Record ChickenType;
    begin
        if not ChickenType.IsEmpty() then
            exit;

        InsertChickenType('ISABROWN', 'ISA Brown');
        InsertChickenType('HAMPRED', 'New Hampshire Red');
        InsertChickenType('LOHBROWN', 'Lohmann Brown');
    end;

    local procedure InsertChickenType(ChickenTypeCode: Code[20]; ChickenTypeDescription: Text[100])
    var
        ChickenType: Record ChickenType;
    begin
        Clear(ChickenType);
        ChickenType.Init();
        ChickenType.Code := ChickenTypeCode;
        ChickenType.Description := ChickenTypeDescription;
        ChickenType.Insert();
    end;
}