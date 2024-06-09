/// <summary>
/// Table ChickenType (ID 50121).
/// </summary>
table 50121 ChickenType
{
    DataClassification = CustomerContent;
    Caption = 'Chicken Type';
    LookupPageId = "Chicken Types";
    DrillDownPageId = "Chicken Types";
    fields
    {
        field(1; Code; Code[20])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(Key1; Code)
        {
            Clustered = true;
        }
    }
}