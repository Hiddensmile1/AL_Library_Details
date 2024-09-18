table 50112 LibraryMembers
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Member ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; Name; Text[100])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(3; MembershipStartDate; Date)
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(4; Email; Text[100])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(5; Phone_no; Integer)
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
    }

    keys
    {
        key(PK; "Member ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
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