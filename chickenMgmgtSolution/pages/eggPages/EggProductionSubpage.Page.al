page 50127 "Egg Production Subpage"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Egg Production Line";
    AutoSplitKey = true;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Chicken No."; Rec."Chicken No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Chicken No';
                }
                field("Chicken Description"; Rec."Chicken Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Chicken Description';
                }
                field("Egg Production Date"; Rec."Egg Production Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Egg Production Date';
                }
                field("Egg Type Code"; Rec."Egg Type Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Egg Type Code';
                }
                field("Quantity"; Rec.Quantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Quantity';
                }
            }
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