page 50123 "Egg Types"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = EggType;

    layout
    {
        area(Content)
        {
            repeater(General)
            {

                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Code field.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                }
            }
        }
    }

    actions
    {
        area(Creation)
        {
            action(InsertDefaultEggTypes)
            {
                ApplicationArea = All;
                Caption = 'Insert Default Egg Types';
                ToolTip = 'Insert Default Egg Types';
                Promoted = true;
                PromotedCategory = New;
                Image = Insert;

                trigger OnAction()
                var
                    EggType: Record EggType;
                    EggTypeNoEmptyErr: Label 'There are already Egg Types in the table';
                begin
                    if not EggType.IsEmpty then
                        Error(EggTypeNoEmptyErr);

                    EggType.InsertEggType('STDBROWN', 'Standard Brown Eggs');
                    EggType.InsertEggType('STDWHITE', 'Standard White Eggs');
                    EggType.InsertEggType('FREERANGE', 'Free Range Eggs');
                end;
            }
        }
    }
}