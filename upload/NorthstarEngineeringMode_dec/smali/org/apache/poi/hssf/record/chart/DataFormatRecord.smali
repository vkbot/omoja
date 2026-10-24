.class public final Lorg/apache/poi/hssf/record/chart/DataFormatRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x1006s

.field private static final useExcel4Colors:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_pointNumber:S

.field private field_2_seriesIndex:S

.field private field_3_seriesNumber:S

.field private field_4_formatFlags:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->useExcel4Colors:Lorg/apache/poi/util/BitField;

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

    .line 7
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_1_pointNumber:S

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_2_seriesIndex:S

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_3_seriesNumber:S

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/chart/DataFormatRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_1_pointNumber:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_1_pointNumber:S

    .line 4
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_2_seriesIndex:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_2_seriesIndex:S

    .line 5
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_3_seriesNumber:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_3_seriesNumber:S

    .line 6
    iget-short p1, p1, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->copy()Lorg/apache/poi/hssf/record/chart/DataFormatRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->copy()Lorg/apache/poi/hssf/record/chart/DataFormatRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->copy()Lorg/apache/poi/hssf/record/chart/DataFormatRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/chart/DataFormatRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;-><init>(Lorg/apache/poi/hssf/record/chart/DataFormatRecord;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public getFormatFlags()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string/jumbo v0, "pointNumber"

    new-instance v1, Lorg/apache/poi/hssf/record/chart/p0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/p0;-><init>(Lorg/apache/poi/hssf/record/chart/DataFormatRecord;I)V

    const-string/jumbo v3, "seriesIndex"

    new-instance v4, Lorg/apache/poi/hssf/record/chart/q0;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/chart/q0;-><init>(Lorg/apache/poi/hssf/record/chart/DataFormatRecord;I)V

    const-string/jumbo v5, "seriesNumber"

    new-instance v6, Lorg/apache/poi/hssf/record/chart/l0;

    const/4 v2, 0x6

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/hssf/record/chart/l0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v7, "formatFlags"

    new-instance v8, Lorg/apache/poi/hssf/record/chart/p0;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/hssf/record/chart/p0;-><init>(Lorg/apache/poi/hssf/record/chart/DataFormatRecord;I)V

    const-string/jumbo v9, "useExcel4Colors"

    new-instance v10, Lorg/apache/poi/hssf/record/chart/q0;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/hssf/record/chart/q0;-><init>(Lorg/apache/poi/hssf/record/chart/DataFormatRecord;I)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    invoke-static/range {v0 .. v9}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->DATA_FORMAT:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getPointNumber()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_1_pointNumber:S

    return p0
.end method

.method public getSeriesIndex()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_2_seriesIndex:S

    return p0
.end method

.method public getSeriesNumber()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_3_seriesNumber:S

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x1006

    return p0
.end method

.method public isUseExcel4Colors()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->useExcel4Colors:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_1_pointNumber:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_2_seriesIndex:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_3_seriesNumber:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setFormatFlags(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    return-void
.end method

.method public setPointNumber(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_1_pointNumber:S

    return-void
.end method

.method public setSeriesIndex(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_2_seriesIndex:S

    return-void
.end method

.method public setSeriesNumber(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_3_seriesNumber:S

    return-void
.end method

.method public setUseExcel4Colors(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->useExcel4Colors:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    return-void
.end method
