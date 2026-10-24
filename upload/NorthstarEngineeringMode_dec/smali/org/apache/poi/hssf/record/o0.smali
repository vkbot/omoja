.class public final synthetic Lorg/apache/poi/hssf/record/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/common/usermodel/GenericRecord;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/hssf/record/o0;->a:I

    iput-object p1, p0, Lorg/apache/poi/hssf/record/o0;->b:Lorg/apache/poi/common/usermodel/GenericRecord;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/o0;->a:I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/o0;->b:Lorg/apache/poi/common/usermodel/GenericRecord;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/apache/poi/hssf/record/IndexRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/IndexRecord;->getLastRowAdd1()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->a(Lorg/apache/poi/hssf/record/HeaderFooterRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lorg/apache/poi/hssf/record/GutsRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GutsRecord;->getRowLevelMax()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;->a(Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lorg/apache/poi/hssf/record/FtCfSubRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FtCfSubRecord;->getFlags()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->a(Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lorg/apache/poi/hssf/record/FormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormatRecord;->getFormatString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Lorg/apache/poi/hssf/record/FnGroupCountRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FnGroupCountRecord;->getCount()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Lorg/apache/poi/hssf/record/FileSharingRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FileSharingRecord;->getReadOnly()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/FeatHdrRecord;->b(Lorg/apache/poi/hssf/record/FeatHdrRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p0, Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->getIx()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p0, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->getStreamPos()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p0, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;->getRowHeight()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p0, Lorg/apache/poi/hssf/record/DateWindow1904Record;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DateWindow1904Record;->getWindowing()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p0, Lorg/apache/poi/hssf/record/DSFRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/DSFRecord;->a(Lorg/apache/poi/hssf/record/DSFRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p0, Lorg/apache/poi/hssf/record/DBCellRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/DBCellRecord;->a(Lorg/apache/poi/hssf/record/DBCellRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p0, Lorg/apache/poi/hssf/record/ContinueRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ContinueRecord;->getData()[B

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p0, Lorg/apache/poi/hssf/record/CodepageRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CodepageRecord;->getCodepage()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p0, Lorg/apache/poi/hssf/record/CellRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getRow()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p0, Lorg/apache/poi/hssf/record/CFHeader12Record;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/CFHeader12Record;->a(Lorg/apache/poi/hssf/record/CFHeader12Record;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p0, Lorg/apache/poi/hssf/record/BookBoolRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BookBoolRecord;->getSaveLinkValues()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p0, Lorg/apache/poi/hssf/record/BlankRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BlankRecord;->getRow()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p0, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;->getNumEntries()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p0, Lorg/apache/poi/hssf/record/ArrayRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/ArrayRecord;->a(Lorg/apache/poi/hssf/record/ArrayRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->b(Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->c(Lorg/apache/poi/hssf/record/PaletteRecord$PColor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p0, Lorg/apache/poi/hssf/record/MulRKRecord$RkRec;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/MulRKRecord$RkRec;->a(Lorg/apache/poi/hssf/record/MulRKRecord$RkRec;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getFirstSheetIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1c
    check-cast p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;->c(Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;)Ljava/lang/Object;

    move-result-object p0

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
