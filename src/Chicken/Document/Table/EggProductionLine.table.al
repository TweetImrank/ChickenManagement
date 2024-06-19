table 50124 "Egg Production Line"
{
    Caption = 'Egg Production Line';
    DrillDownPageId = "Egg Production Lines";
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
        field(3; "Chicken No."; Code[20])
        {
            Caption = 'Chicken No.';
            TableRelation = Chicken;
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                CalcFields("Chicken Description");
            end;
        }
        field(4; "Chicken Description"; Text[100])
        {
            Caption = 'Chicken Description';
            FieldClass = FlowField;
            CalcFormula = lookup(Chicken.Description where("No." = field("Chicken No.")));
            Editable = false;
        }
        field(10; "Egg Production Date"; Date)
        {
            Caption = 'Egg Production Date';
            DataClassification = CustomerContent;
        }
        field(11; "Egg Type Code"; Code[20])
        {
            Caption = 'Egg Type Code';
            TableRelation = EggType;
            DataClassification = CustomerContent;
        }
        field(12; "Egg Production Description"; Text[100])
        {
            Caption = 'Egg Production Description';
            FieldClass = FlowField;
            CalcFormula = lookup(EggType.Description where(Code = field("Egg Type Code")));
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