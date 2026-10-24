.class public final Lorg/apache/poi/hssf/record/MulRKRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/MulRKRecord$RkRec;
    }
.end annotation


# static fields
.field public static final sid:S = 0xbds


# instance fields
.field private final field_1_row:I

.field private final field_2_first_col:S

.field private final field_3_rks:[Lorg/apache/poi/hssf/record/MulRKRecord$RkRec;

.field private final field_4_last_col:S


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/MulRKRecord;->field_1_row:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/MulRKRecord;->field_2_first_col:S

    invoke-static {p1}, Lorg/apache/poi/hssf/record/MulRKRecord$RkRec;->parseRKs(Lorg/apache/poi/hssf/record/RecordInputStream;)[Lorg/apache/poi/hssf/record/MulRKRecord$RkRec;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/MulRKRecord;->field_3_rks:[Lorg/apache/poi/hssf/record/MulRKRecord$RkRec;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/MulRKRecord;->field_4_last_col:S

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/MulRKRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/MulRKRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/MulRKRecord;->field_3_rks:[Lorg/apache/poi/hssf/record/MulRKRecord$RkRec;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulRKRecord;->copy()Lorg/apache/poi/hssf/record/MulRKRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/MulRKRecord;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulRKRecord;->copy()Lorg/apache/poi/hssf/record/MulRKRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulRKRecord;->copy()Lorg/apache/poi/hssf/record/MulRKRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 1

    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string v0, "Sorry, you can\'t serialize MulRK in this release"

    invoke-direct {p0, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFirstColumn()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/MulRKRecord;->field_2_first_col:S

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

    const-string/jumbo v0, "row"

    new-instance v1, Lorg/apache/poi/hssf/record/e2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/e2;-><init>(Lorg/apache/poi/hssf/record/MulRKRecord;I)V

    const-string v2, "firstColumn"

    new-instance v3, Lorg/apache/poi/hssf/record/u1;

    const/4 v4, 0x6

    invoke-direct {v3, p0, v4}, Lorg/apache/poi/hssf/record/u1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v4, "lastColumn"

    new-instance v5, Lorg/apache/poi/hssf/record/q1;

    const/4 v6, 0x5

    invoke-direct {v5, p0, v6}, Lorg/apache/poi/hssf/record/q1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string/jumbo v6, "rk"

    new-instance v7, Lorg/apache/poi/hssf/record/e2;

    const/4 v8, 0x1

    invoke-direct {v7, p0, v8}, Lorg/apache/poi/hssf/record/e2;-><init>(Lorg/apache/poi/hssf/record/MulRKRecord;I)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulRKRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->MUL_RK:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getLastColumn()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/MulRKRecord;->field_4_last_col:S

    return p0
.end method

.method public getNumColumns()I
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/MulRKRecord;->field_4_last_col:S

    iget-short p0, p0, Lorg/apache/poi/hssf/record/MulRKRecord;->field_2_first_col:S

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getRKNumberAt(I)D
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/MulRKRecord;->field_3_rks:[Lorg/apache/poi/hssf/record/MulRKRecord$RkRec;

    aget-object p0, p0, p1

    iget p0, p0, Lorg/apache/poi/hssf/record/MulRKRecord$RkRec;->rk:I

    invoke-static {p0}, Lorg/apache/poi/hssf/util/RKUtil;->decodeNumber(I)D

    move-result-wide p0

    return-wide p0
.end method

.method public getRow()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/MulRKRecord;->field_1_row:I

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0xbd

    return p0
.end method

.method public getXFAt(I)S
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/MulRKRecord;->field_3_rks:[Lorg/apache/poi/hssf/record/MulRKRecord$RkRec;

    aget-object p0, p0, p1

    iget-short p0, p0, Lorg/apache/poi/hssf/record/MulRKRecord$RkRec;->xf:S

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0

    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string p1, "Sorry, you can\'t serialize MulRK in this release"

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
