table 50121 "Chicken Type"
{
    DataClassification = ToBeClassified;
    Caption = 'Chicken Type Table';
    fields
    {
        field(1; Code; Code[20])
        {
            Caption = 'Chicken Type Code';
        }
        field(2; Description; Text[100])
        {
            Caption = 'Chicken Type Description';
        }
    }

    keys
    {
        key(Key1; Code)
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