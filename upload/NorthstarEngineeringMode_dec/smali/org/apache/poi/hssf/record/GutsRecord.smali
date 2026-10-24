.class public final Lorg/apache/poi/hssf/record/GutsRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x80s


# instance fields
.field private field_1_left_row_gutter:S

.field private field_2_top_col_gutter:S

.field private field_3_row_level_max:S

.field private field_4_col_level_max:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/GutsRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/GutsRecord;->field_1_left_row_gutter:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_1_left_row_gutter:S

    .line 4
    iget-short v0, p1, Lorg/apache/poi/hssf/record/GutsRecord;->field_2_top_col_gutter:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_2_top_col_gutter:S

    .line 5
    iget-short v0, p1, Lorg/apache/poi/hssf/record/GutsRecord;->field_3_row_level_max:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_3_row_level_max:S

    .line 6
    iget-short p1, p1, Lorg/apache/poi/hssf/record/GutsRecord;->field_4_col_level_max:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_4_col_level_max:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_1_left_row_gutter:S

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_2_top_col_gutter:S

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_3_row_level_max:S

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_4_col_level_max:S

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GutsRecord;->copy()Lorg/apache/poi/hssf/record/GutsRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/GutsRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/GutsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/GutsRecord;-><init>(Lorg/apache/poi/hssf/record/GutsRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GutsRecord;->copy()Lorg/apache/poi/hssf/record/GutsRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GutsRecord;->copy()Lorg/apache/poi/hssf/record/GutsRecord;

    move-result-object p0

    return-object p0
.end method

.method public getColLevelMax()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_4_col_level_max:S

    return p0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0x8

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

    const-string v0, "leftGutter"

    new-instance v1, Lorg/apache/poi/hssf/record/l1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/l1;-><init>(Lorg/apache/poi/hssf/record/GutsRecord;I)V

    const-string/jumbo v2, "topGutter"

    new-instance v3, Lorg/apache/poi/hssf/record/n0;

    const/16 v4, 0x15

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/hssf/record/n0;-><init>(ILjava/lang/Object;)V

    const-string/jumbo v4, "rowLevelMax"

    new-instance v5, Lorg/apache/poi/hssf/record/o0;

    const/16 v6, 0x1b

    invoke-direct {v5, p0, v6}, Lorg/apache/poi/hssf/record/o0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v6, "colLevelMax"

    new-instance v7, Lorg/apache/poi/hssf/record/l1;

    const/4 v8, 0x1

    invoke-direct {v7, p0, v8}, Lorg/apache/poi/hssf/record/l1;-><init>(Lorg/apache/poi/hssf/record/GutsRecord;I)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GutsRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->GUTS:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getLeftRowGutter()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_1_left_row_gutter:S

    return p0
.end method

.method public getRowLevelMax()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_3_row_level_max:S

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x80

    return p0
.end method

.method public getTopColGutter()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_2_top_col_gutter:S

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GutsRecord;->getLeftRowGutter()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GutsRecord;->getTopColGutter()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GutsRecord;->getRowLevelMax()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GutsRecord;->getColLevelMax()S

    move-result p0

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setColLevelMax(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_4_col_level_max:S

    return-void
.end method

.method public setLeftRowGutter(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_1_left_row_gutter:S

    return-void
.end method

.method public setRowLevelMax(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_3_row_level_max:S

    return-void
.end method

.method public setTopColGutter(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_2_top_col_gutter:S

    return-void
.end method
