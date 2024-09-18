table 50114 Lending
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Lending ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; "Book ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
            TableRelation = LibraryBooks."Book ID";
        }
        field(3; "Member ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(4; "Lending Date"; Date)
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(5; "Return Date"; Date)
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(6; Status; Option)
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
            OptionMembers = Issued,Returned,Overdue;
        }
        field(7; "Due Date"; Date)
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(8; "Fine Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
    }

    keys
    {
        key(PK; "Lending ID")
        {
            Clustered = true;
        }
        key(LibraryBook; "Book ID")
        {
            Clustered = false;
        }
    }

}