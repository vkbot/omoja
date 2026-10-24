.class public final Lorg/apache/poi/hssf/record/CRNCountRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final DATA_SIZE:S = 0x4s

.field public static final sid:S = 0x59s


# instance fields
.field private field_1_number_crn_records:I

.field private field_2_sheet_table_index:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/CRNCountRecord;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 2
    iget v0, p1, Lorg/apache/poi/hssf/record/CRNCountRecord;->field_1_number_crn_records:I

    iput v0, p0, Lorg/apache/poi/hssf/record/CRNCountRecord;->field_1_number_crn_records:I

    .line 3
    iget p1, p1, Lorg/apache/poi/hssf/record/CRNCountRecord;->field_2_sheet_table_index:I

    iput p1, p0, Lorg/apache/poi/hssf/record/CRNCountRecord;->field_2_sheet_table_index:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CRNCountRecord;->field_1_number_crn_records:I

    if-gez v0, :cond_0

    neg-int v0, v0

    int-to-short v0, v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CRNCountRecord;->field_1_number_crn_records:I

    .line 6
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/CRNCountRecord;->field_2_sheet_table_index:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/CRNCountRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CRNCountRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/CRNCountRecord;->field_2_sheet_table_index:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CRNCountRecord;->copy()Lorg/apache/poi/hssf/record/CRNCountRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/CRNCountRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/CRNCountRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/CRNCountRecord;-><init>(Lorg/apache/poi/hssf/record/CRNCountRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CRNCountRecord;->copy()Lorg/apache/poi/hssf/record/CRNCountRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CRNCountRecord;->copy()Lorg/apache/poi/hssf/record/CRNCountRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 0

    const/4 p0, 0x4

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

    new-instance v0, Lorg/apache/poi/hssf/record/p0;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/p0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    new-instance v1, Lorg/apache/poi/hssf/record/n0;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/hssf/record/n0;-><init>(ILjava/lang/Object;)V

    const-string p0, "numberOfCRNs"

    const-string/jumbo v2, "sheetTableIndex"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CRNCountRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->CRN_COUNT:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getNumberOfCRNs()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/CRNCountRecord;->field_1_number_crn_records:I

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x59

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/CRNCountRecord;->field_1_number_crn_records:I

    int-to-short v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget p0, p0, Lorg/apache/poi/hssf/record/CRNCountRecord;->field_2_sheet_table_index:I

    int-to-short p0, p0

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method
