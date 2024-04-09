table 50126 "Egg Production Line"
{
    DataClassification = ToBeClassified;
    Caption = 'Egg Production Line';
    DrillDownPageId = "Egg Production Line List";

    fields
    {
        field(1; "Document No."; Code[20])
        {

        }
        field(2; "Line No."; Integer)
        {

        }
        field(3; "Chicken No."; Code[20])
        {

        }
        field(4; "Chicken Description"; Text[100])
        {

        }
        field(5; "Egg Production Date"; Date)
        {

        }
        field(6; "Egg Type Code"; Code[20])
        {

        }
        field(7; "Egg Type Description"; Text[100])
        {

        }
        field(8; "Quantity"; Decimal)
        {

        }
    }


    keys
    {
        key(Key1; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}