.class public final Lorg/apache/poi/hssf/record/SSTRecord;
.super Lorg/apache/poi/hssf/record/cont/ContinuableRecord;
.source "SourceFile"


# static fields
.field private static final EMPTY_STRING:Lorg/apache/poi/hssf/record/common/UnicodeString;

.field public static final sid:S = 0xfcs


# instance fields
.field private bucketAbsoluteOffsets:[I

.field private bucketRelativeOffsets:[I

.field private final deserializer:Lorg/apache/poi/hssf/record/SSTDeserializer;

.field private field_1_num_strings:I

.field private field_2_num_unique_strings:I

.field private final field_3_strings:Lorg/apache/poi/util/IntMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/util/IntMapper<",
            "Lorg/apache/poi/hssf/record/common/UnicodeString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/common/UnicodeString;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hssf/record/SSTRecord;->EMPTY_STRING:Lorg/apache/poi/hssf/record/common/UnicodeString;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_1_num_strings:I

    iput v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_2_num_unique_strings:I

    .line 2
    new-instance v0, Lorg/apache/poi/util/IntMapper;

    invoke-direct {v0}, Lorg/apache/poi/util/IntMapper;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    .line 3
    new-instance v1, Lorg/apache/poi/hssf/record/SSTDeserializer;

    invoke-direct {v1, v0}, Lorg/apache/poi/hssf/record/SSTDeserializer;-><init>(Lorg/apache/poi/util/IntMapper;)V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->deserializer:Lorg/apache/poi/hssf/record/SSTDeserializer;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>()V

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_1_num_strings:I

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_2_num_unique_strings:I

    .line 14
    new-instance v0, Lorg/apache/poi/util/IntMapper;

    invoke-direct {v0}, Lorg/apache/poi/util/IntMapper;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    .line 15
    new-instance v1, Lorg/apache/poi/hssf/record/SSTDeserializer;

    invoke-direct {v1, v0}, Lorg/apache/poi/hssf/record/SSTDeserializer;-><init>(Lorg/apache/poi/util/IntMapper;)V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->deserializer:Lorg/apache/poi/hssf/record/SSTDeserializer;

    iget v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_1_num_strings:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_2_num_unique_strings:I

    return-void

    :cond_0
    iget p0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_2_num_unique_strings:I

    .line 16
    invoke-virtual {v1, p0, p1}, Lorg/apache/poi/hssf/record/SSTDeserializer;->manufactureStrings(ILorg/apache/poi/hssf/record/RecordInputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/SSTRecord;)V
    .locals 2

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>(Lorg/apache/poi/hssf/record/cont/ContinuableRecord;)V

    .line 5
    iget v0, p1, Lorg/apache/poi/hssf/record/SSTRecord;->field_1_num_strings:I

    iput v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_1_num_strings:I

    .line 6
    iget v0, p1, Lorg/apache/poi/hssf/record/SSTRecord;->field_2_num_unique_strings:I

    iput v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_2_num_unique_strings:I

    .line 7
    iget-object v0, p1, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-virtual {v0}, Lorg/apache/poi/util/IntMapper;->copy()Lorg/apache/poi/util/IntMapper;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    .line 8
    new-instance v1, Lorg/apache/poi/hssf/record/SSTDeserializer;

    invoke-direct {v1, v0}, Lorg/apache/poi/hssf/record/SSTDeserializer;-><init>(Lorg/apache/poi/util/IntMapper;)V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->deserializer:Lorg/apache/poi/hssf/record/SSTDeserializer;

    .line 9
    iget-object v0, p1, Lorg/apache/poi/hssf/record/SSTRecord;->bucketAbsoluteOffsets:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->bucketAbsoluteOffsets:[I

    .line 10
    iget-object p1, p1, Lorg/apache/poi/hssf/record/SSTRecord;->bucketRelativeOffsets:[I

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [I

    :goto_1
    iput-object v1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->bucketRelativeOffsets:[I

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/SSTRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SSTRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/SSTRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SSTRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->bucketAbsoluteOffsets:[I

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->bucketRelativeOffsets:[I

    return-object p0
.end method


# virtual methods
.method public addString(Lorg/apache/poi/hssf/record/common/UnicodeString;)I
    .locals 2

    iget v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_1_num_strings:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_1_num_strings:I

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/poi/hssf/record/SSTRecord;->EMPTY_STRING:Lorg/apache/poi/hssf/record/common/UnicodeString;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-virtual {v0, p1}, Lorg/apache/poi/util/IntMapper;->getIndex(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-virtual {v0}, Lorg/apache/poi/util/IntMapper;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_2_num_unique_strings:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_2_num_unique_strings:I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-static {p0, p1}, Lorg/apache/poi/hssf/record/SSTDeserializer;->addToStringTable(Lorg/apache/poi/util/IntMapper;Lorg/apache/poi/hssf/record/common/UnicodeString;)V

    :goto_0
    return v0
.end method

.method public calcExtSSTRecordSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-virtual {p0}, Lorg/apache/poi/util/IntMapper;->size()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/hssf/record/ExtSSTRecord;->getRecordSizeForStrings(I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SSTRecord;->copy()Lorg/apache/poi/hssf/record/SSTRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SSTRecord;->copy()Lorg/apache/poi/hssf/record/SSTRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/SSTRecord;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/hssf/record/SSTRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/SSTRecord;-><init>(Lorg/apache/poi/hssf/record/SSTRecord;)V

    return-object v0
.end method

.method public countStrings()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-virtual {p0}, Lorg/apache/poi/util/IntMapper;->size()I

    move-result p0

    return p0
.end method

.method public createExtSSTRecord(I)Lorg/apache/poi/hssf/record/ExtSSTRecord;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->bucketAbsoluteOffsets:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->bucketRelativeOffsets:[I

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/poi/hssf/record/ExtSSTRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ExtSSTRecord;-><init>()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtSSTRecord;->setNumStringsPerBucket(S)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->bucketAbsoluteOffsets:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->bucketRelativeOffsets:[I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget v3, v1, v2

    add-int/2addr v3, p1

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p0}, Lorg/apache/poi/hssf/record/ExtSSTRecord;->setBucketOffsets([I[I)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SST record has not yet been serialized."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
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

    const-string v0, "numStrings"

    new-instance v1, Lorg/apache/poi/hssf/record/c3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/c3;-><init>(Lorg/apache/poi/hssf/record/SSTRecord;I)V

    const-string v3, "numUniqueStrings"

    new-instance v4, Lorg/apache/poi/hssf/record/d3;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/d3;-><init>(Lorg/apache/poi/hssf/record/SSTRecord;I)V

    const-string/jumbo v5, "strings"

    iget-object v2, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lorg/apache/poi/hssf/record/m2;

    const/16 v7, 0xf

    invoke-direct {v6, v7, v2}, Lorg/apache/poi/hssf/record/m2;-><init>(ILjava/lang/Object;)V

    const-string v7, "bucketAbsoluteOffsets"

    new-instance v8, Lorg/apache/poi/hssf/record/c3;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/hssf/record/c3;-><init>(Lorg/apache/poi/hssf/record/SSTRecord;I)V

    const-string v9, "bucketRelativeOffsets"

    new-instance v10, Lorg/apache/poi/hssf/record/d3;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/hssf/record/d3;-><init>(Lorg/apache/poi/hssf/record/SSTRecord;I)V

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
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SSTRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->SST:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getNumStrings()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_1_num_strings:I

    return p0
.end method

.method public getNumUniqueStrings()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_2_num_unique_strings:I

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0xfc

    return p0
.end method

.method public getString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/IntMapper;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hssf/record/common/UnicodeString;

    return-object p0
.end method

.method public getStrings()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/hssf/record/common/UnicodeString;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-virtual {p0}, Lorg/apache/poi/util/IntMapper;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 4

    new-instance v0, Lorg/apache/poi/hssf/record/SSTSerializer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SSTRecord;->getNumStrings()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SSTRecord;->getNumUniqueStrings()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/hssf/record/SSTSerializer;-><init>(Lorg/apache/poi/util/IntMapper;II)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/SSTSerializer;->serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/SSTSerializer;->getBucketAbsoluteOffsets()[I

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->bucketAbsoluteOffsets:[I

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/SSTSerializer;->getBucketRelativeOffsets()[I

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->bucketRelativeOffsets:[I

    return-void
.end method
