page 50106 LendingCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Lending;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Lending ID"; Rec."Lending ID")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
                field("Book ID"; Rec."Book ID")
                {
                    ApplicationArea = All;
                    TableRelation = LibraryBooks."Book ID";
                }
                field("Member ID"; Rec."Member ID")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
                field("Lending Date"; Rec."Lending Date")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;

                    // trigger OnValidate()

                    // begin
                    //     if Rec."Lending Date" <> Today then
                    //         Error('Invalid Lending Date, Must be today');
                    //     Rec."Due Date" := Rec."Lending Date" + 30;
                    // end;
                }
                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Return Date"; Rec."Return Date")
                {
                    ApplicationArea = All;

                    trigger OnValidate()

                    begin
                        if rec."Return Date" <> 0D then begin
                            if rec."Return Date" > rec."Due Date" then
                                rec."Fine Amount" := 30
                            else
                                rec."Fine Amount" := 0;
                        end;
                    end;
                }
                field("Fine Amount"; Rec."Fine Amount")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
            }
        }
    }

}