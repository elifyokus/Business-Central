page 50130 "Egg Production Line List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Egg Production Line";
    Editable = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Chicken No."; Rec."Chicken No.")
                {

                }
                field("Chicken Description"; Rec."Chicken Description")
                {

                }
                field("Document No."; Rec."Document No.")
                {

                }
                field("Egg Production Date"; Rec."Egg Production Date")
                {

                }
                field("Egg Type Code"; Rec."Egg Type Code")
                {

                }
                field("Egg Type Description"; Rec."Egg Type Description")
                {

                }
                field(Quantity; Rec.Quantity)
                {

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