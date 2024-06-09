table 50124 "Egg Production Line"
{
    Caption = 'Egg Production Line';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = CustomerContent;

        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = CustomerContent;
        }
        field(3; "Chicken Code"; Code[20])
        {
            Caption = 'Chicken Code';
            TableRelation = ChickenType;
            DataClassification = CustomerContent;
        }
        field(4; "Chicken Description"; Text[100])
        {
            Caption = 'Chicken Description';
            FieldClass = FlowField;
            CalcFormula = lookup(ChickenType.Description where(Code = field("Chicken Code")));
            Editable = false;
        }
        field(10; "Egg Production Date"; Date)
        {
            Caption = 'Egg Production Date';
            DataClassification = CustomerContent;
        }
        field(11; "Egg Production Code"; Code[20])
        {
            Caption = 'Egg Production Code';
            DataClassification = CustomerContent;
        }
        field(12; "Egg Production Description"; Text[100])
        {
            Caption = 'Egg Production Description';
            FieldClass = FlowField;
            CalcFormula = lookup(EggType.Description where(Code = field("Egg Production Code")));
            Editable = false;
        }
        field(15; "Quantity"; Decimal)
        {
            Caption = 'Quantity';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }
}