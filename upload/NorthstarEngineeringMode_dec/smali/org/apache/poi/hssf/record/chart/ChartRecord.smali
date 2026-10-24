.class public final Lorg/apache/poi/hssf/record/chart/ChartRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x1002s


# instance fields
.field private field_1_x:I

.field private field_2_y:I

.field private field_3_width:I

.field private field_4_height:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_1_x:I

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_2_y:I

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_3_width:I

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_4_height:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/chart/ChartRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_1_x:I

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_1_x:I

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_2_y:I

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_2_y:I

    .line 5
    iget v0, p1, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_3_width:I

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_3_width:I

    .line 6
    iget p1, p1, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_4_height:I

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_4_height:I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartRecord;->copy()Lorg/apache/poi/hssf/record/chart/ChartRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartRecord;->copy()Lorg/apache/poi/hssf/record/chart/ChartRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartRecord;->copy()Lorg/apache/poi/hssf/record/chart/ChartRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/chart/ChartRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ChartRecord;-><init>(Lorg/apache/poi/hssf/record/chart/ChartRecord;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0x10

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

    const-string/jumbo v0, "x"

    new-instance v1, Lorg/apache/poi/hssf/record/chart/c0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/c0;-><init>(Lorg/apache/poi/hssf/record/chart/ChartRecord;I)V

    const-string/jumbo v2, "y"

    new-instance v3, Lorg/apache/poi/hssf/record/chart/l0;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Lorg/apache/poi/hssf/record/chart/l0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string/jumbo v5, "width"

    new-instance v6, Lorg/apache/poi/hssf/record/chart/m0;

    invoke-direct {v6, p0, v4}, Lorg/apache/poi/hssf/record/chart/m0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v7, "height"

    new-instance v8, Lorg/apache/poi/hssf/record/chart/c0;

    const/4 v4, 0x1

    invoke-direct {v8, p0, v4}, Lorg/apache/poi/hssf/record/chart/c0;-><init>(Lorg/apache/poi/hssf/record/chart/ChartRecord;I)V

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->CHART:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_4_height:I

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x1002

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_3_width:I

    return p0
.end method

.method public getX()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_1_x:I

    return p0
.end method

.method public getY()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_2_y:I

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_1_x:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_2_y:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_3_width:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_4_height:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_4_height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_3_width:I

    return-void
.end method

.method public setX(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_1_x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_2_y:I

    return-void
.end method
