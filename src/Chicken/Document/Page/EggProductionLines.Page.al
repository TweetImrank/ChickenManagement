page 50127 "Egg Production Lines"
{
    PageType = List;
    SourceTable = "Egg Production Line";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {

                field("Chicken No."; Rec."Chicken No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Enter a value of the Chicken No.';
                }
                field("Chicken Description"; Rec."Chicken Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Chicken Description';
                }
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Document No. field.';
                }
                field("Egg Production Date"; Rec."Egg Production Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Enter a value of the Egg Production Date';
                }
                field("Egg Production Description"; Rec."Egg Production Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Egg Production Description field.';
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Enter number of Quatity of eggs produced';
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}