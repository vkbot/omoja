.class public final synthetic Lorg/apache/poi/hssf/record/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/HSSFRecordTypes$RecordConstructor;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/hssf/record/n1;->c:I

    return-void
.end method


# virtual methods
.method public final apply(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/n1;->c:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lorg/apache/poi/hssf/record/ProtectRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/ProtectRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_0
    new-instance p0, Lorg/apache/poi/hssf/record/DVRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/DVRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/apache/poi/hssf/record/RefreshAllRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/RefreshAllRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/CFRuleRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lorg/apache/poi/hssf/record/ProtectionRev4Record;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/ProtectionRev4Record;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lorg/apache/poi/hssf/record/UserSViewBegin;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/UserSViewBegin;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lorg/apache/poi/hssf/record/TabIdRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/TabIdRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/LabelSSTRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_7
    new-instance p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_8
    new-instance p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/MergeCellsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_9
    new-instance p0, Lorg/apache/poi/hssf/record/InterfaceHdrRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/InterfaceHdrRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_a
    new-instance p0, Lorg/apache/poi/hssf/record/RefModeRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/RefModeRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_b
    new-instance p0, Lorg/apache/poi/hssf/record/pivottable/StreamIDRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/pivottable/StreamIDRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_c
    new-instance p0, Lorg/apache/poi/hssf/record/MulRKRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/MulRKRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_d
    new-instance p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_e
    new-instance p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_f
    new-instance p0, Lorg/apache/poi/hssf/record/FnGroupCountRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/FnGroupCountRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_10
    new-instance p0, Lorg/apache/poi/hssf/record/CountryRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/CountryRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_11
    new-instance p0, Lorg/apache/poi/hssf/record/VCenterRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/VCenterRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_12
    new-instance p0, Lorg/apache/poi/hssf/record/GridsetRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/GridsetRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_13
    new-instance p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_14
    new-instance p0, Lorg/apache/poi/hssf/record/UncalcedRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/UncalcedRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_15
    new-instance p0, Lorg/apache/poi/hssf/record/CalcCountRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/CalcCountRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_16
    new-instance p0, Lorg/apache/poi/hssf/record/CRNCountRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/CRNCountRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_17
    new-instance p0, Lorg/apache/poi/hssf/record/CodepageRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/CodepageRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_18
    new-instance p0, Lorg/apache/poi/hssf/record/WindowOneRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/WindowOneRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_19
    new-instance p0, Lorg/apache/poi/hssf/record/FontRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/FontRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_1a
    new-instance p0, Lorg/apache/poi/hssf/record/PrintHeadersRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/PrintHeadersRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_1b
    new-instance p0, Lorg/apache/poi/hssf/record/RightMarginRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/RightMarginRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_1c
    new-instance p0, Lorg/apache/poi/hssf/record/DateWindow1904Record;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/DateWindow1904Record;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
