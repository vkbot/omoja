.class public final Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final EMPTY_INTERPOLATED:B = 0x2t

.field public static final EMPTY_NOT_PLOTTED:B = 0x0t

.field public static final EMPTY_ZERO:B = 0x1t

.field private static final autoPlotArea:Lorg/apache/poi/util/BitField;

.field private static final chartTypeManuallyFormatted:Lorg/apache/poi/util/BitField;

.field private static final defaultPlotDimensions:Lorg/apache/poi/util/BitField;

.field private static final doNotSizeWithWindow:Lorg/apache/poi/util/BitField;

.field private static final plotVisibleOnly:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x1044s


# instance fields
.field private field_1_flags:I

.field private field_2_empty:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->chartTypeManuallyFormatted:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->plotVisibleOnly:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->doNotSizeWithWindow:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->defaultPlotDimensions:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->autoPlotArea:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_2_empty:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    .line 4
    iget p1, p1, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_2_empty:I

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_2_empty:I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->copy()Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->copy()Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->copy()Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;-><init>(Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getEmpty()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_2_empty:I

    return p0
.end method

.method public getFlags()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/hssf/record/chart/l0;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/chart/l0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/apache/poi/util/BitField;

    sget-object v2, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->chartTypeManuallyFormatted:Lorg/apache/poi/util/BitField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->plotVisibleOnly:Lorg/apache/poi/util/BitField;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->doNotSizeWithWindow:Lorg/apache/poi/util/BitField;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    sget-object v6, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->defaultPlotDimensions:Lorg/apache/poi/util/BitField;

    aput-object v6, v1, v2

    const/4 v2, 0x4

    sget-object v6, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->autoPlotArea:Lorg/apache/poi/util/BitField;

    aput-object v6, v1, v2

    const-string v2, "DEFAULT_PLOT_DIMENSIONS"

    const-string v6, "AUTO_PLOT_AREA"

    const-string v7, "CHART_TYPE_MANUALLY_FORMATTED"

    const-string v8, "PLOT_VISIBLE_ONLY"

    const-string v9, "DO_NOT_SIZE_WITH_WINDOW"

    filled-new-array {v7, v8, v9, v2, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[Lorg/apache/poi/util/BitField;[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/hssf/record/chart/m0;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/m0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    filled-new-array {v3, v4, v5}, [I

    move-result-object p0

    const-string v2, "EMPTY_ZERO"

    const-string v3, "EMPTY_INTERPOLATED"

    const-string v4, "EMPTY_NOT_PLOTTED"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lorg/apache/poi/util/GenericRecordUtil;->getEnumBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object p0

    const-string v1, "flags"

    const-string v2, "empty"

    invoke-static {v1, v0, v2, p0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->SHEET_PROPERTIES:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x1044

    return p0
.end method

.method public isAutoPlotArea()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->autoPlotArea:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isChartTypeManuallyFormatted()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->chartTypeManuallyFormatted:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isDefaultPlotDimensions()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->defaultPlotDimensions:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isDoNotSizeWithWindow()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->doNotSizeWithWindow:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isPlotVisibleOnly()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->plotVisibleOnly:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_2_empty:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setAutoPlotArea(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->autoPlotArea:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    return-void
.end method

.method public setChartTypeManuallyFormatted(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->chartTypeManuallyFormatted:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    return-void
.end method

.method public setDefaultPlotDimensions(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->defaultPlotDimensions:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    return-void
.end method

.method public setDoNotSizeWithWindow(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->doNotSizeWithWindow:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    return-void
.end method

.method public setEmpty(B)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_2_empty:I

    return-void
.end method

.method public setPlotVisibleOnly(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->plotVisibleOnly:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    return-void
.end method
