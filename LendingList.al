page 50105 LendingList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Lending;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Lending ID"; Rec."Lending ID")
                {
                    ApplicationArea = All;
                    DrillDownPageId = 50106;
                    TableRelation = Lending."Lending ID";
                }
                field("Lending Date"; Rec."Lending Date")
                {
                    ApplicationArea = All;
                }
                field("Return Date"; Rec."Return Date")
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
                field("Member ID"; Rec."Member ID")
                {
                    ApplicationArea = All;
                }
                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = All;
                }
                field("Fine Amount"; Rec."Fine Amount")
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