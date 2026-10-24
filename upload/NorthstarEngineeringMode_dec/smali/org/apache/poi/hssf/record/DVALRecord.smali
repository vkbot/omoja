.class public final Lorg/apache/poi/hssf/record/DVALRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x1b2s


# instance fields
.field private field_1_options:S

.field private field_2_horiz_pos:I

.field private field_3_vert_pos:I

.field private field_5_dv_no:I

.field private field_cbo_id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_cbo_id:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_5_dv_no:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/DVALRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/DVALRecord;->field_1_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_1_options:S

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/DVALRecord;->field_2_horiz_pos:I

    iput v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_2_horiz_pos:I

    .line 5
    iget v0, p1, Lorg/apache/poi/hssf/record/DVALRecord;->field_3_vert_pos:I

    iput v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_3_vert_pos:I

    .line 6
    iget v0, p1, Lorg/apache/poi/hssf/record/DVALRecord;->field_cbo_id:I

    iput v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_cbo_id:I

    .line 7
    iget p1, p1, Lorg/apache/poi/hssf/record/DVALRecord;->field_5_dv_no:I

    iput p1, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_5_dv_no:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_1_options:S

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_2_horiz_pos:I

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_3_vert_pos:I

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_cbo_id:I

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_5_dv_no:I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->copy()Lorg/apache/poi/hssf/record/DVALRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/DVALRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/DVALRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DVALRecord;-><init>(Lorg/apache/poi/hssf/record/DVALRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->copy()Lorg/apache/poi/hssf/record/DVALRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->copy()Lorg/apache/poi/hssf/record/DVALRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDVRecNo()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_5_dv_no:I

    return p0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0x12

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

    const-string/jumbo v0, "options"

    new-instance v1, Lorg/apache/poi/hssf/record/e0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/e0;-><init>(Lorg/apache/poi/hssf/record/DVALRecord;I)V

    const-string v3, "horizPos"

    new-instance v4, Lorg/apache/poi/hssf/record/f0;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/f0;-><init>(Lorg/apache/poi/hssf/record/DVALRecord;I)V

    const-string/jumbo v5, "vertPos"

    new-instance v6, Lorg/apache/poi/hssf/record/p0;

    const/16 v2, 0x10

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/hssf/record/p0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v7, "comboObjectID"

    new-instance v8, Lorg/apache/poi/hssf/record/e0;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/hssf/record/e0;-><init>(Lorg/apache/poi/hssf/record/DVALRecord;I)V

    const-string v9, "dvRecordsNumber"

    new-instance v10, Lorg/apache/poi/hssf/record/f0;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/hssf/record/f0;-><init>(Lorg/apache/poi/hssf/record/DVALRecord;I)V

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
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->DVAL:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getHorizontalPos()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_2_horiz_pos:I

    return p0
.end method

.method public getObjectID()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_cbo_id:I

    return p0
.end method

.method public getOptions()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_1_options:S

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x1b2

    return p0
.end method

.method public getVerticalPos()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_3_vert_pos:I

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->getOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->getHorizontalPos()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->getVerticalPos()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->getObjectID()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->getDVRecNo()I

    move-result p0

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    return-void
.end method

.method public setDVRecNo(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_5_dv_no:I

    return-void
.end method

.method public setHorizontalPos(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_2_horiz_pos:I

    return-void
.end method

.method public setObjectID(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_cbo_id:I

    return-void
.end method

.method public setOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_1_options:S

    return-void
.end method

.method public setVerticalPos(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_3_vert_pos:I

    return-void
.end method
