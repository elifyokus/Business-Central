table 50122 Egg
{
    DataClassification = ToBeClassified;
    Caption = 'Egg Table';
    fields
    {
        field(1; Code; Code[20])
        {
            Caption = 'Egg Code';
        }
        field(20; Description; Text[100])
        {
            Caption = 'Egg Description';
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