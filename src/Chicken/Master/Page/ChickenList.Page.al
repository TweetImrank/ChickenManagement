page 50121 "Chicken List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Chicken;
    CardPageId = "Chicken Card";
    Editable = false;
    layout
    {
        area(Content)
        {
            repeater(General)
            {

                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field("Chicken Type Code"; Rec."Chicken Type Code")
                {
                    ToolTip = 'Specifies the value of the Chicken Type Code field.';
                }
                field("Number of Eggs Produced"; Rec."Number of Eggs Produced")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specified Number of Eggs Produced by Chicken';
                }
            }
        }
    }
}