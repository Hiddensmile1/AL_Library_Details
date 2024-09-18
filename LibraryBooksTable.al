table 50100 LibraryBooks
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Book ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;

        }
        field(2; Title; Text[50])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(3; Author; Text[500])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(4; Genre; Text[500])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(5; ISBN; Text[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(6; Availability; Boolean)
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
    }

    keys
    {
        key(PK; "Book ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Book ID", Title)
        {

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