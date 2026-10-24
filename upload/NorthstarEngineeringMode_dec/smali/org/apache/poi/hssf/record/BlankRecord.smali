.class public final Lorg/apache/poi/hssf/record/BlankRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/CellValueRecordInterface;


# static fields
.field public static final sid:S = 0x201s


# instance fields
.field private field_1_row:I

.field private field_2_col:S

.field private field_3_xf:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/BlankRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/BlankRecord;->field_1_row:I

    iput v0, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_1_row:I

    .line 4
    iget-short v0, p1, Lorg/apache/poi/hssf/record/BlankRecord;->field_2_col:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_2_col:S

    .line 5
    iget-short p1, p1, Lorg/apache/poi/hssf/record/BlankRecord;->field_3_xf:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_3_xf:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_1_row:I

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_2_col:S

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_3_xf:S

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BlankRecord;->copy()Lorg/apache/poi/hssf/record/BlankRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/BlankRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/BlankRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/BlankRecord;-><init>(Lorg/apache/poi/hssf/record/BlankRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BlankRecord;->copy()Lorg/apache/poi/hssf/record/BlankRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BlankRecord;->copy()Lorg/apache/poi/hssf/record/BlankRecord;

    move-result-object p0

    return-object p0
.end method

.method public getColumn()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_2_col:S

    return p0
.end method

.method public getDataSize()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string/jumbo v0, "row"

    new-instance v1, Lorg/apache/poi/hssf/record/o0;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/o0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v2, "col"

    new-instance v3, Lorg/apache/poi/hssf/record/p0;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v4}, Lorg/apache/poi/hssf/record/p0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string/jumbo v5, "xfIndex"

    new-instance v6, Lorg/apache/poi/hssf/record/n0;

    invoke-direct {v6, v4, p0}, Lorg/apache/poi/hssf/record/n0;-><init>(ILjava/lang/Object;)V

    move-object v4, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BlankRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->BLANK:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getRow()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_1_row:I

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x201

    return p0
.end method

.method public getXFIndex()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_3_xf:S

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BlankRecord;->getRow()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BlankRecord;->getColumn()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BlankRecord;->getXFIndex()S

    move-result p0

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setColumn(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_2_col:S

    return-void
.end method

.method public setRow(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_1_row:I

    return-void
.end method

.method public setXFIndex(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_3_xf:S

    return-void
.end method
