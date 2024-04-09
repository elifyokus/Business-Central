page 50123 "Chicken Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Chicken;

    layout
    {
        area(Content)
        {
            group(Chickens)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'No.';
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
                field(Picture; Rec.Picture)
                {
                    ToolTip = 'Picture';
                }
                field("Chicken Type Description"; Rec."Chicken Type Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Chicken Type Description';
                }
                field("Number of Egg Produced"; Rec."Number of Egg Produced")
                {
                    ApplicationArea = All;
                    ToolTip = 'Number Of Eggs Produced';
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

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}