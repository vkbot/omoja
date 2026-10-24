.class public final synthetic Lorg/apache/poi/ddf/b;
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

    iput p1, p0, Lorg/apache/poi/ddf/b;->a:I

    iput-object p2, p0, Lorg/apache/poi/ddf/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lorg/apache/poi/ddf/b;->a:I

    iget-object p0, p0, Lorg/apache/poi/ddf/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTCustSplitImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTCustSplitImpl;->sizeOfSecondPiePtArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBubbleSerImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBubbleSerImpl;->sizeOfTrendlineArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBarSerImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBarSerImpl;->sizeOfDPtArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBarChartImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBarChartImpl;->sizeOfSerLinesArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBar3DChartImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBar3DChartImpl;->sizeOfAxIdArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTAreaSerImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTAreaSerImpl;->sizeOfTrendlineArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTArea3DChartImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTArea3DChartImpl;->sizeOfAxIdArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Ly5/n;

    invoke-interface {p0}, Ly5/n;->d()Ly5/u;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p0, Lorg/apache/poi/poifs/crypt/Decryptor;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getVerifier()[B

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p0, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/FtrHeader;->getGrbitFrt()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p0, Lorg/apache/poi/hssf/record/common/FormatRun;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/FormatRun;->getCharacterPos()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p0, Lorg/apache/poi/hssf/record/common/FeatProtection;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/FeatProtection;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->_getRawErrorCheckValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getColorIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p0, Lorg/apache/poi/hssf/record/cf/Threshold;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/Threshold;->getFormula()Lorg/apache/poi/ss/formula/Formula;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->getFillForegroundColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->isIconOnly()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p0, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->getPosition()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->getThresholds()[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p0, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingCellDummyRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingCellDummyRecord;->getColumn()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p0, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/LastCellOfRowDummyRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/LastCellOfRowDummyRecord;->getRow()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p0, Lorg/apache/poi/ddf/EscherTextboxRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->isContainerRecord()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p0, Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRectY1()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p0, Lorg/apache/poi/ddf/EscherRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getInstance()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p0, Lorg/apache/poi/ddf/EscherProperty;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherProperty;->getPropertyNumber()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p0, Lorg/apache/poi/ddf/EscherComplexProperty;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p0, Lorg/apache/poi/ddf/EscherClientDataRecord;

    invoke-static {p0}, Lorg/apache/poi/ddf/EscherClientDataRecord;->a(Lorg/apache/poi/ddf/EscherClientDataRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p0, Lorg/apache/poi/ddf/EscherBitmapBlip;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getMarker()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_1c
    check-cast p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    invoke-static {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->b(Lorg/apache/poi/ddf/AbstractEscherOptRecord;)Ljava/lang/Object;

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
