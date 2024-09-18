page 50110 LibraryBook
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = LibraryBooks;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Book ID"; Rec."Book ID")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter the Book ID';
                }
                field(Title; Rec.Title)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter Title of the book';
                }
                field(Author; Rec.Author)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter the name of the Author';
                }
                field(Genre; Rec.Genre)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter the Genre';
                }
                field(ISBN; Rec.ISBN)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter ISBN Number';
                    trigger OnValidate()
                    var
                        ISBNValidation: Codeunit LibraryISBNValidation;
                    begin
                        if not ISBNValidation.ValidateISBNNumber(Rec.ISBN) then
                            Error('Invalid ISBN Number');
                    end;

                }
                field(Availability; Rec.Availability)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Indicate Availability';
                }
            }
        }
    }

    // actions
    // {
    //     area(Processing)
    //     {
    //         action(ActionName)
    //         {
    //             ApplicationArea = All;

    //             trigger OnAction()
    //             begin

    //             end;
    //         }
    //     }
    // }

    // var
    //     myInt: Integer;
}