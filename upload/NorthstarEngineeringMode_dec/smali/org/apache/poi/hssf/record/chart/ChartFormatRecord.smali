.class public final Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x1014s

.field private static final varyDisplayPattern:Lorg/apache/poi/util/BitField;


# instance fields
.field private field1_x_position:I

.field private field2_y_position:I

.field private field3_width:I

.field private field4_height:I

.field private field5_grbit:I

.field private field6_unknown:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->varyDisplayPattern:Lorg/apache/poi/util/BitField;

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

    .line 9
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field1_x_position:I

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field2_y_position:I

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field3_width:I

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field4_height:I

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field5_grbit:I

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field6_unknown:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field1_x_position:I

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field1_x_position:I

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field2_y_position:I

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field2_y_position:I

    .line 5
    iget v0, p1, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field3_width:I

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field3_width:I

    .line 6
    iget v0, p1, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field4_height:I

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field4_height:I

    .line 7
    iget v0, p1, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field5_grbit:I

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field5_grbit:I

    .line 8
    iget p1, p1, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field6_unknown:I

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field6_unknown:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field5_grbit:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field6_unknown:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->copy()Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->copy()Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->copy()Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;-><init>(Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0x14

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string/jumbo v0, "x"

    new-instance v1, Lorg/apache/poi/hssf/record/chart/z;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/z;-><init>(Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;I)V

    const-string/jumbo v3, "y"

    new-instance v4, Lorg/apache/poi/hssf/record/chart/a0;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/chart/a0;-><init>(Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;I)V

    const-string/jumbo v5, "width"

    new-instance v6, Lorg/apache/poi/hssf/record/chart/b0;

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/hssf/record/chart/b0;-><init>(Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;I)V

    const-string v7, "height"

    new-instance v8, Lorg/apache/poi/hssf/record/chart/z;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/hssf/record/chart/z;-><init>(Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;I)V

    const-string v9, "grbit"

    new-instance v10, Lorg/apache/poi/hssf/record/chart/a0;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/hssf/record/chart/a0;-><init>(Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;I)V

    const-string/jumbo v11, "varyDisplayPattern"

    new-instance v12, Lorg/apache/poi/hssf/record/chart/b0;

    invoke-direct {v12, p0, v2}, Lorg/apache/poi/hssf/record/chart/b0;-><init>(Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;I)V

    const-string/jumbo v13, "unknown"

    new-instance v14, Lorg/apache/poi/hssf/record/chart/z;

    const/4 v2, 0x2

    invoke-direct {v14, p0, v2}, Lorg/apache/poi/hssf/record/chart/z;-><init>(Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;I)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    invoke-static/range {v0 .. v13}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->CHART_FORMAT:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field4_height:I

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x1014

    return p0
.end method

.method public getVaryDisplayPattern()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->varyDisplayPattern:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field5_grbit:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field3_width:I

    return p0
.end method

.method public getXPosition()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field1_x_position:I

    return p0
.end method

.method public getYPosition()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field2_y_position:I

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->getXPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->getYPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->getWidth()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->getHeight()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field5_grbit:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field6_unknown:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field4_height:I

    return-void
.end method

.method public setVaryDisplayPattern(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->varyDisplayPattern:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field5_grbit:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field5_grbit:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field3_width:I

    return-void
.end method

.method public setXPosition(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field1_x_position:I

    return-void
.end method

.method public setYPosition(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field2_y_position:I

    return-void
.end method
