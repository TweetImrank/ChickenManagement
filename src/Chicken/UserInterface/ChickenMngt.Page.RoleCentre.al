page 50128 "Chicken Management Rolecenter"
{
    PageType = RoleCenter;
    ApplicationArea = All; //ApplicationArea will be inherited by the page parts

    layout
    {
        area(RoleCenter)
        {
            part(HeadLineOrderProcessor; "Headline RC Order Processor")
            {
            }
            // part(O365CustomerActivity; "O365 Customer Activity Page")
            // {
            // } note : O365 Customer Activity Page is not available in v24 BC
            part(O365Activities; "O365 Activities")
            {
            }
        }
    }
    actions
    {
        area(Sections)
        {
            group(MasterData)
            {
                Caption = 'Master Data';
                action(ChickenList)
                {
                    Caption = 'Chicken List';
                    RunObject = Page "Chicken List";
                }
                action(ChickenTypes)
                {
                    Caption = 'Chicken Types';
                    RunObject = Page "Chicken Types";
                }
            }
            group(Documents)
            {
                Caption = 'Documents';
                action(EggProduction)
                {
                    Caption = 'Egg Production';
                    RunObject = Page "Egg Production List";
                }
                action(EggTypes)
                {
                    Caption = 'Egg Types';
                    RunObject = Page "Egg Types";
                }
            }
        }
        area(Embedding)
        {
            action(eChickenList)
            {
                Caption = 'Chicken List';
                RunObject = Page "Chicken List";
            }
            action(eChickenTypes)
            {
                Caption = 'Chicken Types';
                RunObject = Page "Chicken Types";
            }
            action(eEggProduction)
            {
                Caption = 'Egg Production';
                RunObject = Page "Egg Production List";
            }
            action(eEggTypes)
            {
                Caption = 'Egg Types';
                RunObject = Page "Egg Types";
            }
        }
    }
}