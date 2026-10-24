.class public final synthetic Lorg/apache/poi/hssf/record/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/hssf/record/n0;->a:I

    iput-object p2, p0, Lorg/apache/poi/hssf/record/n0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/n0;->a:I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/n0;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NoteRecord;->getFlags()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lorg/apache/poi/hssf/record/MulBlankRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulBlankRecord;->getFirstColumn()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lorg/apache/poi/hssf/record/MMSRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MMSRecord;->getDelMenuCount()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lorg/apache/poi/hssf/record/IterationRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/IterationRecord;->getIteration()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lorg/apache/poi/util/IntList;

    invoke-virtual {p0}, Lorg/apache/poi/util/IntList;->toArray()[I

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lorg/apache/poi/hssf/record/IndexRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/IndexRecord;->getFirstRow()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HeaderFooterBase;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Lorg/apache/poi/hssf/record/HCenterRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HCenterRecord;->getHCenter()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Lorg/apache/poi/hssf/record/GutsRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GutsRecord;->getTopColGutter()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p0, Lorg/apache/poi/hssf/record/GridsetRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GridsetRecord;->getGridset()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->a(Lorg/apache/poi/hssf/record/FtCblsSubRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p0, Lorg/apache/poi/hssf/record/FormatRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/FormatRecord;->a(Lorg/apache/poi/hssf/record/FormatRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p0, Lorg/apache/poi/hssf/record/FileSharingRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FileSharingRecord;->getUsername()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p0, Lorg/apache/poi/hssf/record/FilePassRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FilePassRecord;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->b(Lorg/apache/poi/hssf/record/ExternalNameRecord;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtSSTRecord;->getInfoSubRecords()[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;->b(Lorg/apache/poi/hssf/record/DrawingSelectionRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p0, Lorg/apache/poi/hssf/record/DrawingRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/DrawingRecord;->a(Lorg/apache/poi/hssf/record/DrawingRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p0, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;->getOptionFlags()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p0, Lorg/apache/poi/hssf/record/CountryRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CountryRecord;->getCurrentCountry()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p0, Lorg/apache/poi/hssf/record/CellRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getXFIndex()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p0, Lorg/apache/poi/hssf/record/CalcModeRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CalcModeRecord;->getCalcMode()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p0, Lorg/apache/poi/hssf/record/CRNRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/CRNRecord;->b(Lorg/apache/poi/hssf/record/CRNRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p0, Lorg/apache/poi/hssf/record/CRNCountRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/CRNCountRecord;->a(Lorg/apache/poi/hssf/record/CRNCountRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p0, Lorg/apache/poi/hssf/record/BlankRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BlankRecord;->getXFIndex()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p0, Lorg/apache/poi/hssf/record/BackupRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BackupRecord;->getBackup()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->a(Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->b(Lorg/apache/poi/hssf/record/PaletteRecord$PColor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getExtBookIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1c
    check-cast p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;->b(Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;)Ljava/lang/Object;

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
