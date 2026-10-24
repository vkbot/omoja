.class public final Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x1064s


# instance fields
.field private field_1_horizontalScale:I

.field private field_2_verticalScale:I


# direct methods
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
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_1_horizontalScale:I

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_2_verticalScale:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_1_horizontalScale:I

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_1_horizontalScale:I

    .line 4
    iget p1, p1, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_2_verticalScale:I

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_2_verticalScale:I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->copy()Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->copy()Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->copy()Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;-><init>(Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 3
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

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/chart/l0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    new-instance v1, Lorg/apache/poi/hssf/record/chart/m0;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/m0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string p0, "horizontalScale"

    const-string/jumbo v2, "verticalScale"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->PLOT_GROWTH:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getHorizontalScale()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_1_horizontalScale:I

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x1064

    return p0
.end method

.method public getVerticalScale()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_2_verticalScale:I

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_1_horizontalScale:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_2_verticalScale:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    return-void
.end method

.method public setHorizontalScale(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_1_horizontalScale:I

    return-void
.end method

.method public setVerticalScale(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_2_verticalScale:I

    return-void
.end method
