page 50120 "Chicken Card"
{
    PageType = Card;
    SourceTable = Chicken;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field("Chicken Type Code"; Rec."Chicken Type Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Chicken Type Code field.';
                }
                field("Chicken Type Description"; Rec."Chicken Type Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the desrcription of the Chicken Type Code';
                }
                field("Last Modified Date"; Rec."Last Modified Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Modified Date field.';
                }
                field(Picture; Rec.Picture)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Picture field.';
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