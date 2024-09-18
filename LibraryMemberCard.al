page 50107 LibraryMembers
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = LibraryMembers;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Member ID"; Rec."Member ID")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter the Member ID';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter Name';
                }
                field(MembershipStartDate; Rec.MembershipStartDate)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter the MembershipStartDate';
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter Email Address';
                }
                field(Phone_no; Rec.Phone_no)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter Phone Number';
                }
            }
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

    var
        myInt: Integer;
}