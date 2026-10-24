.class public final Lorg/apache/poi/hssf/record/CRNRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x5as


# instance fields
.field private field_1_last_column_index:I

.field private field_2_first_column_index:I

.field private field_3_row_index:I

.field private field_4_constant_values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/CRNRecord;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 2
    iget v0, p1, Lorg/apache/poi/hssf/record/CRNRecord;->field_1_last_column_index:I

    iput v0, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_1_last_column_index:I

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/CRNRecord;->field_2_first_column_index:I

    iput v0, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_2_first_column_index:I

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/CRNRecord;->field_3_row_index:I

    iput v0, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_3_row_index:I

    .line 5
    iget-object p1, p1, Lorg/apache/poi/hssf/record/CRNRecord;->field_4_constant_values:[Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_4_constant_values:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_1_last_column_index:I

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_2_first_column_index:I

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_3_row_index:I

    iget v0, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_1_last_column_index:I

    iget v1, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_2_first_column_index:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 10
    invoke-static {p1, v0}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->parse(Lorg/apache/poi/util/LittleEndianInput;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_4_constant_values:[Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/CRNRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CRNRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/CRNRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CRNRecord;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hssf/record/CRNRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CRNRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hssf/record/CRNRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CRNRecord;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_3_row_index:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_2_first_column_index:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_1_last_column_index:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_4_constant_values:[Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CRNRecord;->copy()Lorg/apache/poi/hssf/record/CRNRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/CRNRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/CRNRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/CRNRecord;-><init>(Lorg/apache/poi/hssf/record/CRNRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CRNRecord;->copy()Lorg/apache/poi/hssf/record/CRNRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CRNRecord;->copy()Lorg/apache/poi/hssf/record/CRNRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_4_constant_values:[Ljava/lang/Object;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->getEncodedSize([Ljava/lang/Object;)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

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

    new-instance v1, Lorg/apache/poi/hssf/record/u;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/u;-><init>(Lorg/apache/poi/hssf/record/CRNRecord;I)V

    const-string v2, "firstColumn"

    new-instance v3, Lorg/apache/poi/hssf/record/p0;

    const/16 v4, 0xa

    invoke-direct {v3, p0, v4}, Lorg/apache/poi/hssf/record/p0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v4, "lastColumn"

    new-instance v5, Lorg/apache/poi/hssf/record/n0;

    const/4 v6, 0x7

    invoke-direct {v5, v6, p0}, Lorg/apache/poi/hssf/record/n0;-><init>(ILjava/lang/Object;)V

    const-string v6, "constantValues"

    new-instance v7, Lorg/apache/poi/hssf/record/u;

    const/4 v8, 0x1

    invoke-direct {v7, p0, v8}, Lorg/apache/poi/hssf/record/u;-><init>(Lorg/apache/poi/hssf/record/CRNRecord;I)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CRNRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->CRN:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getNumberOfCRNs()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_1_last_column_index:I

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x5a

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_1_last_column_index:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_2_first_column_index:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_3_row_index:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_4_constant_values:[Ljava/lang/Object;

    invoke-static {p1, p0}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->encode(Lorg/apache/poi/util/LittleEndianOutput;[Ljava/lang/Object;)V

    return-void
.end method
