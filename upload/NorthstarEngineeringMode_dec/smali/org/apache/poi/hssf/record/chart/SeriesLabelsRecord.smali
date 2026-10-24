.class public final Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final labelAsPercentage:Lorg/apache/poi/util/BitField;

.field private static final showActual:Lorg/apache/poi/util/BitField;

.field private static final showBubbleSizes:Lorg/apache/poi/util/BitField;

.field private static final showLabel:Lorg/apache/poi/util/BitField;

.field private static final showPercent:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x100cs

.field private static final smoothedLine:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_formatFlags:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->showActual:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->showPercent:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->labelAsPercentage:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->smoothedLine:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->showLabel:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->showBubbleSizes:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-short p1, p1, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->copy()Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->copy()Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->copy()Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;-><init>(Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getFormatFlags()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/hssf/record/chart/m0;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/chart/m0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const/4 p0, 0x6

    new-array p0, p0, [Lorg/apache/poi/util/BitField;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->showActual:Lorg/apache/poi/util/BitField;

    aput-object v2, p0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->showPercent:Lorg/apache/poi/util/BitField;

    aput-object v2, p0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->labelAsPercentage:Lorg/apache/poi/util/BitField;

    aput-object v2, p0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->smoothedLine:Lorg/apache/poi/util/BitField;

    aput-object v2, p0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->showLabel:Lorg/apache/poi/util/BitField;

    aput-object v2, p0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->showBubbleSizes:Lorg/apache/poi/util/BitField;

    aput-object v2, p0, v1

    const-string v3, "SHOW_ACTUAL"

    const-string v4, "SHOW_PERCENT"

    const-string v5, "LABEL_AS_PERCENTAGE"

    const-string v6, "SMOOTHED_LINE"

    const-string v7, "SHOW_LABEL"

    const-string v8, "SHOW_BUBBLE_SIZES"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[Lorg/apache/poi/util/BitField;[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object p0

    const-string v0, "formatFlags"

    invoke-static {v0, p0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->SERIES_LABELS:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x100c

    return p0
.end method

.method public isLabelAsPercentage()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->labelAsPercentage:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isShowActual()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->showActual:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isShowBubbleSizes()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->showBubbleSizes:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isShowLabel()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->showLabel:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isShowPercent()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->showPercent:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isSmoothedLine()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->smoothedLine:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setFormatFlags(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    return-void
.end method

.method public setLabelAsPercentage(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->labelAsPercentage:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    return-void
.end method

.method public setShowActual(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->showActual:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    return-void
.end method

.method public setShowBubbleSizes(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->showBubbleSizes:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    return-void
.end method

.method public setShowLabel(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->showLabel:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    return-void
.end method

.method public setShowPercent(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->showPercent:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    return-void
.end method

.method public setSmoothedLine(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->smoothedLine:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    return-void
.end method
