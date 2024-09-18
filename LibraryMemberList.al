page 50108 LibraryMembersList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = LibraryMembers;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Member ID"; Rec."Member ID")
                {
                    ApplicationArea = All;
                    DrillDownPageId = 50107;
                    TableRelation = LibraryMembers."Member ID";
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(MembershipStartDate; Rec.MembershipStartDate)
                {
                    ApplicationArea = All;
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                }
                field(Phone_no; Rec.Phone_no)
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}