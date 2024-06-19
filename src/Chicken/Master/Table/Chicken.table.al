/// <summary>
/// Table Chickent (ID 50120).
/// </summary>
table 50120 Chicken
{
    DataClassification = CustomerContent;
    Caption = 'Chicken';
    LookupPageId = "Chicken List";
    DrillDownPageId = "Chicken List";
    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(3; "Chicken Type Code"; Code[20])
        {
            Caption = 'Chicken Type Code';
            TableRelation = ChickenType;
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                Rec.CalcFields("Chicken Type Description");
            end;
        }
        field(4; "Last Modified Date"; Date)
        {
            Caption = 'Last Modified Date';
            DataClassification = CustomerContent;
        }
        field(5; Picture; MediaSet)
        {
            Caption = 'Picture';
            DataClassification = CustomerContent;
        }
        field(6; "Chicken Type Description"; Text[100])
        {
            Caption = 'Chicken Type Description';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(ChickenType.Description where(Code = field("Chicken Type Code")));
        }
        field(10; "Number of Eggs Produced"; Decimal)
        {
            Caption = 'Number of Eggs Produced';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = sum("Egg Production Line".Quantity where("Chicken No." = field("No."),
                                                                    "Egg Production Date" = field("Date Filter"),
                                                                    "Egg Type Code" = field("Egg Type Filter")));
        }
        field(15; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(16; "Egg Type Filter"; Code[20])
        {
            Caption = 'Egg Type Filter';
            FieldClass = FlowFilter;
            TableRelation = EggType.Code;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(Dropdown; Description, "Chicken Type Code")
        {
        }
        fieldgroup(Brick; Description, Picture)
        {
        }
    }
}