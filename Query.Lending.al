query 50106 PersonWhoPaidFine
{
    QueryType = Normal;

    elements
    {
        dataitem(Lending; Lending)
        {
            DataItemTableFilter = "Fine Amount" = filter(> 0);

            column(Lending_ID; "Lending ID")
            {

            }
            column(Member_ID; "Member ID")
            {

            }
            column(Fine_Amount; "Fine Amount")
            {
                Caption = 'Fine Amount';
            }
            column(Book_ID; "Book ID")
            {
                Caption = 'Book ID';
            }
            column(Lending_Date; "Lending Date")
            {
                Caption = 'Lending Date';
            }

        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}