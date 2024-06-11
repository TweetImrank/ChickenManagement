page 50124 "Egg Production Subpage"
{
    PageType = ListPart;
    SourceTable = "Egg Production Line";
    AutoSplitKey = true;
    DelayedInsert = true;
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Chicken Code"; Rec."Chicken Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Enter a value of the Chicken Code from Chicken Types';
                }
                field("Chicken Description"; Rec."Chicken Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Chicken Description';
                }
                field("Egg Production Date"; Rec."Egg Production Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Enter a value of the Egg Production Date';
                }
                field("Egg Type Code"; Rec."Egg Type Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Enter a value of Egg Type Code';
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Enter number of Quatity of eggs produced';
                }
            }
        }
    }
}