.class public final Lorg/apache/poi/hssf/record/IndexRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x20bs


# instance fields
.field private field_2_first_row:I

.field private field_3_last_row_add1:I

.field private field_4_zero:I

.field private field_5_dbcells:Lorg/apache/poi/util/IntList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/IndexRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/IndexRecord;->field_2_first_row:I

    iput v0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_2_first_row:I

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/IndexRecord;->field_3_last_row_add1:I

    iput v0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_3_last_row_add1:I

    .line 5
    iget v0, p1, Lorg/apache/poi/hssf/record/IndexRecord;->field_4_zero:I

    iput v0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_4_zero:I

    .line 6
    iget-object p1, p1, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/util/IntList;

    invoke-direct {v0, p1}, Lorg/apache/poi/util/IntList;-><init>(Lorg/apache/poi/util/IntList;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4

    .line 7
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_2_first_row:I

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_3_last_row_add1:I

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_4_zero:I

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 13
    new-instance v1, Lorg/apache/poi/util/IntList;

    invoke-direct {v1, v0}, Lorg/apache/poi/util/IntList;-><init>(I)V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/util/IntList;->add(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 15
    :cond_1
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string p1, "Expected zero for field 1 but got "

    .line 16
    invoke-static {p1, v0}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lorg/apache/poi/hssf/record/IndexRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getRecordSizeForBlockCount(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, 0x14

    return p0
.end method

.method private static synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addDbcell(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/util/IntList;

    invoke-direct {v0}, Lorg/apache/poi/util/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/IntList;->add(I)Z

    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/IndexRecord;->copy()Lorg/apache/poi/hssf/record/IndexRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/IndexRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/IndexRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/IndexRecord;-><init>(Lorg/apache/poi/hssf/record/IndexRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/IndexRecord;->copy()Lorg/apache/poi/hssf/record/IndexRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/IndexRecord;->copy()Lorg/apache/poi/hssf/record/IndexRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/IndexRecord;->getNumDbcells()I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, 0x10

    return p0
.end method

.method public getDbcellAt(I)I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/IntList;->get(I)I

    move-result p0

    return p0
.end method

.method public getFirstRow()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_2_first_row:I

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

    const-string v0, "firstRow"

    new-instance v1, Lorg/apache/poi/hssf/record/n0;

    const/16 v2, 0x18

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/hssf/record/n0;-><init>(ILjava/lang/Object;)V

    const-string v2, "lastRowAdd1"

    new-instance v3, Lorg/apache/poi/hssf/record/o0;

    const/16 v4, 0x1d

    invoke-direct {v3, p0, v4}, Lorg/apache/poi/hssf/record/o0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v4, "dbcell_"

    iget-object p0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    if-nez p0, :cond_0

    new-instance p0, Lorg/apache/commons/compress/archivers/zip/g;

    const/16 v5, 0x10

    invoke-direct {p0, v5}, Lorg/apache/commons/compress/archivers/zip/g;-><init>(I)V

    move-object v5, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/apache/poi/hssf/record/n0;

    const/16 v6, 0x19

    invoke-direct {v5, v6, p0}, Lorg/apache/poi/hssf/record/n0;-><init>(ILjava/lang/Object;)V

    :goto_0
    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/IndexRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->INDEX:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getLastRowAdd1()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_3_last_row_add1:I

    return p0
.end method

.method public getNumDbcells()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/util/IntList;->size()I

    move-result p0

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x20b

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/IndexRecord;->getFirstRow()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/IndexRecord;->getLastRowAdd1()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v1, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_4_zero:I

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/IndexRecord;->getNumDbcells()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/IndexRecord;->getDbcellAt(I)I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDbcell(II)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/util/IntList;->set(II)I

    return-void
.end method

.method public setFirstRow(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_2_first_row:I

    return-void
.end method

.method public setLastRowAdd1(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_3_last_row_add1:I

    return-void
.end method
