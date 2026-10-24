.class public final synthetic Lorg/apache/poi/hssf/record/p0;
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

    iput p2, p0, Lorg/apache/poi/hssf/record/p0;->a:I

    iput-object p1, p0, Lorg/apache/poi/hssf/record/p0;->b:Lorg/apache/poi/common/usermodel/GenericRecord;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lorg/apache/poi/hssf/record/p0;->a:I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/p0;->b:Lorg/apache/poi/common/usermodel/GenericRecord;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->getFlags()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->getTypeCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lorg/apache/poi/hssf/record/FormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormatRecord;->getIndexCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lorg/apache/poi/hssf/record/FileSharingRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FileSharingRecord;->getPassword()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lorg/apache/poi/hssf/record/FilePassRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/FilePassRecord;->a(Lorg/apache/poi/hssf/record/FilePassRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->a(Lorg/apache/poi/hssf/record/ExternSheetRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->getBucketSSTOffset()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtSSTRecord;->getDataSize()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p0, Lorg/apache/poi/hssf/record/DrawingRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DrawingRecord;->getRecordData()[B

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p0, Lorg/apache/poi/hssf/record/DimensionsRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getFirstCol()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p0, Lorg/apache/poi/hssf/record/DeltaRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DeltaRecord;->getMaxChange()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p0, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->getColWidth()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p0, Lorg/apache/poi/hssf/record/DVALRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->getVerticalPos()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p0, Lorg/apache/poi/hssf/record/DSFRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DSFRecord;->isBiff5BookStreamPresent()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p0, Lorg/apache/poi/hssf/record/DBCellRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/DBCellRecord;->b(Lorg/apache/poi/hssf/record/DBCellRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p0, Lorg/apache/poi/hssf/record/CountryRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CountryRecord;->getDefaultCountry()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p0, Lorg/apache/poi/hssf/record/CellRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getColumn()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p0, Lorg/apache/poi/hssf/record/CalcCountRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CalcCountRecord;->getIterations()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p0, Lorg/apache/poi/hssf/record/CRNRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/CRNRecord;->a(Lorg/apache/poi/hssf/record/CRNRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p0, Lorg/apache/poi/hssf/record/CRNCountRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CRNCountRecord;->getNumberOfCRNs()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p0, Lorg/apache/poi/hssf/record/CFHeaderBase;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getNeedRecalculation()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p0, Lorg/apache/poi/hssf/record/CFHeader12Record;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeader12Record;->getFutureHeader()Lorg/apache/poi/hssf/record/common/FtrHeader;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p0, Lorg/apache/poi/hssf/record/BottomMarginRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BottomMarginRecord;->getMargin()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p0, Lorg/apache/poi/hssf/record/BlankRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BlankRecord;->getColumn()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p0, Lorg/apache/poi/hssf/record/ArrayRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/ArrayRecord;->c(Lorg/apache/poi/hssf/record/ArrayRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->a(Lorg/apache/poi/hssf/record/PaletteRecord$PColor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p0, Lorg/apache/poi/hssf/record/MulRKRecord$RkRec;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/MulRKRecord$RkRec;->b(Lorg/apache/poi/hssf/record/MulRKRecord$RkRec;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getLastSheetIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1c
    check-cast p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;->a(Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;)Ljava/lang/Object;

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
