.class public final Lorg/apache/poi/hssf/record/DimensionsRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final LOG:La5/d;

.field public static final sid:S = 0x200s


# instance fields
.field private field_1_first_row:I

.field private field_2_last_row:I

.field private field_3_first_col:S

.field private field_4_last_col:S

.field private field_5_zero:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/record/DimensionsRecord;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/DimensionsRecord;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/DimensionsRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_1_first_row:I

    iput v0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_1_first_row:I

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_2_last_row:I

    iput v0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_2_last_row:I

    .line 5
    iget-short v0, p1, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_3_first_col:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_3_first_col:S

    .line 6
    iget-short v0, p1, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_4_last_col:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_4_last_col:S

    .line 7
    iget-short p1, p1, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_5_zero:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_5_zero:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_1_first_row:I

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_2_last_row:I

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_3_first_col:S

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_4_last_col:S

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_5_zero:S

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->LOG:La5/d;

    .line 15
    invoke-interface {p0}, La5/d;->f()La5/b;

    move-result-object p0

    const-string v0, "DimensionsRecord has extra 2 bytes."

    invoke-interface {p0, v0}, La5/b;->f(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    :cond_0
    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/DimensionsRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_5_zero:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->copy()Lorg/apache/poi/hssf/record/DimensionsRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/DimensionsRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/DimensionsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;-><init>(Lorg/apache/poi/hssf/record/DimensionsRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->copy()Lorg/apache/poi/hssf/record/DimensionsRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->copy()Lorg/apache/poi/hssf/record/DimensionsRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0xe

    return p0
.end method

.method public getFirstCol()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_3_first_col:S

    return p0
.end method

.method public getFirstRow()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_1_first_row:I

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

    const-string v0, "firstRow"

    new-instance v1, Lorg/apache/poi/hssf/record/j0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/j0;-><init>(Lorg/apache/poi/hssf/record/DimensionsRecord;I)V

    const-string v3, "lastRow"

    new-instance v4, Lorg/apache/poi/hssf/record/k0;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/k0;-><init>(Lorg/apache/poi/hssf/record/DimensionsRecord;I)V

    const-string v5, "firstColumn"

    new-instance v6, Lorg/apache/poi/hssf/record/p0;

    const/16 v2, 0x13

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/hssf/record/p0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v7, "lastColumn"

    new-instance v8, Lorg/apache/poi/hssf/record/j0;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/hssf/record/j0;-><init>(Lorg/apache/poi/hssf/record/DimensionsRecord;I)V

    const-string/jumbo v9, "zero"

    new-instance v10, Lorg/apache/poi/hssf/record/k0;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/hssf/record/k0;-><init>(Lorg/apache/poi/hssf/record/DimensionsRecord;I)V

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
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->DIMENSIONS:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getLastCol()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_4_last_col:S

    return p0
.end method

.method public getLastRow()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_2_last_row:I

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x200

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getFirstRow()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getLastRow()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getFirstCol()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getLastCol()S

    move-result p0

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setFirstCol(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_3_first_col:S

    return-void
.end method

.method public setFirstRow(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_1_first_row:I

    return-void
.end method

.method public setLastCol(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_4_last_col:S

    return-void
.end method

.method public setLastRow(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_2_last_row:I

    return-void
.end method
