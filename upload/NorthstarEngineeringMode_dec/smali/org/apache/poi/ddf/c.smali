.class public final synthetic Lorg/apache/poi/ddf/c;
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

    iput p1, p0, Lorg/apache/poi/ddf/c;->a:I

    iput-object p2, p0, Lorg/apache/poi/ddf/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/c;->a:I

    iget-object p0, p0, Lorg/apache/poi/ddf/c;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBarChartImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBarChartImpl;->sizeOfSerArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTAreaSerImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTAreaSerImpl;->sizeOfDPtArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTAreaChartImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTAreaChartImpl;->sizeOfAxIdArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTArea3DChartImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTArea3DChartImpl;->sizeOfSerArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lm5/o0$e;

    iget-object v0, p0, Lm5/o0$e;->a:Lm5/o0$a;

    invoke-virtual {p0, v0}, Lm5/o0$e;->a(Lm5/o0$a;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_4
    check-cast p0, Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Ly5/u;

    invoke-interface {p0}, Ly5/u;->j()Ly5/v;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getEncryptedHmacKey()[B

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Lorg/apache/poi/poifs/crypt/Decryptor;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getIntegrityHmacKey()[B

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p0, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/FtrHeader;->getAssociatedRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p0, Lorg/apache/poi/hssf/record/common/FormatRun;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/FormatRun;->getFontIndex()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p0, Lorg/apache/poi/hssf/record/cf/Threshold;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/Threshold;->getValue()Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->getFillForegroundColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->isReversed()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->getHeader()Lorg/apache/poi/hssf/record/CFHeaderBase;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p0, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingRowDummyRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingRowDummyRecord;->getRowNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p0, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/LastCellOfRowDummyRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/LastCellOfRowDummyRecord;->getLastColumnNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p0, Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/ClassID;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p0, Lorg/apache/poi/ddf/UnknownEscherRecord;

    invoke-static {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->a(Lorg/apache/poi/ddf/UnknownEscherRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p0, Lorg/apache/poi/ddf/EscherTextboxRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->getData()[B

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p0, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpRecord;->getShapeType()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    invoke-static {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->a(Lorg/apache/poi/ddf/EscherSimpleProperty;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p0, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getDrawingGroupId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p0, Lorg/apache/poi/ddf/EscherDgRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->getNumShapes()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-static {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->b(Lorg/apache/poi/ddf/EscherContainerRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p0, Lorg/apache/poi/ddf/EscherClientDataRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientDataRecord;->getRemainingData()[B

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p0, Lorg/apache/poi/ddf/EscherBlipRecord;

    invoke-static {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->a(Lorg/apache/poi/ddf/EscherBlipRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p0, Lorg/apache/poi/ddf/EscherBitmapBlip;

    invoke-static {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->b(Lorg/apache/poi/ddf/EscherBitmapBlip;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p0, Lorg/apache/poi/ddf/EscherArrayProperty;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInMemory()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1c
    check-cast p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->isContainerRecord()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
