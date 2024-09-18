page 50115 BookList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = LibraryBooks;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Book ID"; Rec."Book ID")
                {
                    ApplicationArea = All;
                    TableRelation = LibraryBooks."Book ID";
                    DrillDownPageId = 50110;
                }
                field(Title; Rec.Title)
                {
                    ApplicationArea = All;
                }
                field(Author; Rec.Author)
                {
                    ApplicationArea = All;
                }
                field(Genre; Rec.Genre)
                {
                    ApplicationArea = All;
                }
                field(ISBN; Rec.ISBN)
                {
                    ApplicationArea = All;
                }
                field(Availability; Rec.Availability)
                {
                    ApplicationArea = All;
                }
            }
        }
        //     area(Factboxes)
        //     {

        //     }
        // }

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
    }
}