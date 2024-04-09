page 50124 "Chicken List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Chicken;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'No.';
                    trigger OnDrillDown()
                    begin
                        Page.Run(Page::"Chicken Card", Rec);
                    end;

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Description';
                }
                field("Chicken Type Code"; Rec."Chicken Type Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Chicken Type Code';
                }
                field("Number of Egg Produced"; Rec."Number of Egg Produced")
                {
                    ApplicationArea = All;
                    ToolTip = 'Number Of Eggs Produced';
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

                trigger OnAction();
                begin

                end;
            }
        }
    }
}