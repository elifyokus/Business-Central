table 50120 Chicken
{
    DataClassification = ToBeClassified;
    Caption = 'Chicken Table';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'Chicken No.';
        }
        field(20; "Description"; Text[100])
        {
            Caption = 'Chicken Description';
        }

        field(25; "Chicken Type Description"; Text[100])
        {
            FieldClass = FlowField;
            Editable = False;
            CalcFormula = lookup("Chicken Type".Description WHERE("Code" = FIELD("Chicken Type Code")));
            Caption = 'Chicken Type Description';
        }

        field(30; "Chicken Type Code"; Code[20])
        {
            Caption = 'Chicken Type Code';
            TableRelation = "Chicken Type";
            trigger OnValidate()
            begin
                CalcFields("Chicken Type Description");
            end;

        }

        field(40; "Last Date Modified"; Date)
        {
            Caption = 'Chicken Last Date Modified';
        }
        field(50; "Picture"; MediaSet)
        {
            Caption = 'Chicken Picture';
        }
        field(60; "Number of Egg Produced"; Decimal)
        {
            //DataClassification = ToBeClassified;
            Caption = 'Number Of Eggs Produced';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum("Egg Production Line".Quantity where("Chicken No." = field("No."), "Egg Production Date" = field("Date Filter"), "Egg Type Code" = field("Egg Type Filter")));

        }
        field(65; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(70; "Egg Type Filter"; Code[20])
        {
            Caption = 'Egg Type Filter';
            FieldClass = FlowFilter;
            TableRelation = "Egg Production Line";
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Description, "Chicken Type Code")
        {
            Caption = 'Dropdown Chicken';
        }
        fieldgroup(Brick; Description, Picture)
        {
            Caption = 'Brick Chicken';
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin
        CalcFields("Number of Egg Produced");
    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}