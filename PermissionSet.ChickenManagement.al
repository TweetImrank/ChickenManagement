permissionset 50120 ChickenManagement
{
    Assignable = true;
    Caption = 'ChickenManagement', MaxLength = 30;
    Permissions =
        table "Egg Production Line" = X,
        tabledata "Egg Production Line" = RMID,
        table "Egg Production Header" = X,
        tabledata "Egg Production Header" = RMID,
        table Chicken = X,
        tabledata Chicken = RMID,
        table ChickenType = X,
        tabledata ChickenType = RMID,
        table EggType = X,
        tabledata EggType = RMID,
        codeunit Install = X,
        page "Egg Production List" = X,
        page "Chicken Types" = X,
        page "Chicken List" = X,
        page "Chicken Card" = X,
        page "Egg Production Subpage" = X,
        page "Egg Production Lines" = X,
        page "Chicken Management Rolecenter" = X,
        page "Egg Production Document" = X,
        page "Egg Types" = X;
}
