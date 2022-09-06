table 90022 PartyLine
{
    DataClassification = CustomerContent;
    Caption = 'PartyLine';

    fields
    {
        field(1; "Document No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Document No.';
        }
        field(2; "Line No."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Line No.';
        }
        field(3; "Party No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Party No.';
        }
        field(4; Type; Option)
        {
            OptionMembers =" ",Item,"G/L Account";
            //OptionCaption = ' ,Item,"G/L Account"';
            DataClassification = CustomerContent;
        }
        field(5; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
            TableRelation = IF (Type = CONST(Item)) Item ELSE
            IF (Type = CONST("G/L Account")) "G/L Account" ELSE
            "Standard Text";
            trigger OnValidate()
            begin
                IF xRec."No." <> Rec."No." THEN BEGIN
                    IF Partyitem.GET("No.") THEN BEGIN
                        Description := Partyitem.Description;
                        "Unit of measure Code" := Partyitem."Base Unit of Measure";
                        "Unit Price" := Partyitem."Unit Price";
                    End;
                    IF PartStd.GET("No.") THEN BEGIN
                        Description := PartStd.Description;
                        // //"Unit of measure Code" := Partyitem."Base Unit of Measure";
                        // "Unit Price" := Partyitem."Unit Price";
                    end;
                End;
                IF xRec."No." <> Rec."No." THEN BEGIN
                    IF "PartyG/lAC".GET("No.") THEN BEGIN
                        Description := "PartyG/lAC".Name;
                        // "Unit of measure Code" := Partyitem."Base Unit of Measure";
                        // "Unit Price" := Partyitem."Unit Price";
                    END;
                end;
            END;
        }
        field(6; "Description"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
        field(7; "Unit of measure Code"; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Unit of measure Code';
        }
        field(8; "Quantity"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Quantity';
            trigger OnValidate()
            begin
                "Line Discount Amount" := ("Unit Price" * Quantity) * ("Line Discount %" / 100);
                Amount := (Quantity * "Unit Price") - "Line Discount Amount";
            end;
        }
        field(9; "Unit Price"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Unit Price';
            trigger OnValidate()
            begin
                "Line Discount Amount" := ("Unit Price" * Quantity) * ("Line Discount %" / 100);
                Amount := (Quantity * "Unit Price") - "Line Discount Amount";
            end;
        }
        field(10; "Line Discount %"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Line Discount %';
            trigger OnValidate()
            begin
                "Line Discount Amount" := ("Unit Price" * Quantity) * ("Line Discount %" / 100);
                Amount := (Quantity * "Unit Price") - "Line Discount Amount";
            end;
        }
        field(11; "Line Discount Amount"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Line Discount Amount';
        }
        field(12; "Amount"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Amount';
        }
    }

    keys
    {
        key(PK; "Document No.", "Party No.", "Line No.")
        {
            Clustered = true;
        }
    }

    var
        PartyItem: Record Item;
        "PartyG/lAC": Record "G/L Account";
        PartStd: Record "Standard Text";
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