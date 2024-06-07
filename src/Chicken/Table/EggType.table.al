/// <summary>
/// Table EggType (ID 50123).
/// </summary>
table 50123 EggType
{
    DataClassification = CustomerContent;
    Caption = 'Egg Type';
    LookupPageId = "Egg Types";
    DrillDownPageId = "Egg Types";
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