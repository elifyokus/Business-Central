page 50128 "Egg Production Document"
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "Egg Production Header";



    layout
    {
        area(Content)
        {
            group(GroupName)
            {

                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'No.';
                }
                field("Document Date"; Rec."Document Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Document Date';
                }
            }
            part(Lines; "Egg Production Subpage")
            {
                ApplicationArea = All;
                SubPageLink = "Document No." = field("No.");
                //SubPageLink = "Table ID" = const(50127), "Document Type" = field("Document Type"), "Document No." = field("No.");
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