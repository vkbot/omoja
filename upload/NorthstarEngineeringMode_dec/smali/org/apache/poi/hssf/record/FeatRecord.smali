.class public final Lorg/apache/poi/hssf/record/FeatRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final LOG:La5/d;

.field public static final sid:S = 0x868s

.field public static final v11_sid:S = 0x872s

.field public static final v12_sid:S = 0x878s


# instance fields
.field private cbFeatData:J

.field private cellRefs:[Lorg/apache/poi/ss/util/CellRangeAddress;

.field private final futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

.field private isf_sharedFeatureType:I

.field private reserved1:B

.field private reserved2:J

.field private reserved3:I

.field private sharedFeature:Lorg/apache/poi/hssf/record/common/SharedFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/record/FeatRecord;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/FeatRecord;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    const/16 p0, 0x868

    .line 3
    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/record/common/FtrHeader;->setRecordType(S)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/FeatRecord;)V
    .locals 4

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 5
    iget-object v0, p1, Lorg/apache/poi/hssf/record/FeatRecord;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/FtrHeader;->copy()Lorg/apache/poi/hssf/record/common/FtrHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    .line 6
    iget v0, p1, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    iput v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    .line 7
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/FeatRecord;->reserved1:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->reserved1:B

    .line 8
    iget-wide v0, p1, Lorg/apache/poi/hssf/record/FeatRecord;->reserved2:J

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->reserved2:J

    .line 9
    iget-wide v0, p1, Lorg/apache/poi/hssf/record/FeatRecord;->cbFeatData:J

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cbFeatData:J

    .line 10
    iget v0, p1, Lorg/apache/poi/hssf/record/FeatRecord;->reserved3:I

    iput v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->reserved3:I

    .line 11
    iget-object v0, p1, Lorg/apache/poi/hssf/record/FeatRecord;->cellRefs:[Lorg/apache/poi/ss/util/CellRangeAddress;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lorg/apache/poi/hssf/record/a;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lorg/apache/poi/hssf/record/a;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lorg/apache/poi/hssf/record/b1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/poi/hssf/record/b1;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/util/CellRangeAddress;

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cellRefs:[Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 13
    iget-object p1, p1, Lorg/apache/poi/hssf/record/FeatRecord;->sharedFeature:Lorg/apache/poi/hssf/record/common/SharedFeature;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/apache/poi/hssf/record/common/SharedFeature;->copy()Lorg/apache/poi/hssf/record/common/SharedFeature;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->sharedFeature:Lorg/apache/poi/hssf/record/common/SharedFeature;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3

    .line 14
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 15
    new-instance v0, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    .line 17
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->reserved1:B

    .line 18
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->reserved2:J

    .line 19
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 20
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cbFeatData:J

    .line 21
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->reserved3:I

    .line 22
    new-array v0, v0, [Lorg/apache/poi/ss/util/CellRangeAddress;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cellRefs:[Lorg/apache/poi/ss/util/CellRangeAddress;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cellRefs:[Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 23
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 24
    new-instance v2, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v2, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    sget-object p1, Lorg/apache/poi/hssf/record/FeatRecord;->LOG:La5/d;

    .line 25
    invoke-interface {p1}, La5/d;->h()La5/b;

    move-result-object p1

    iget p0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    invoke-static {p0}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "Unknown Shared Feature {} found!"

    invoke-interface {p1, p0, v0}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 26
    :cond_1
    new-instance v0, Lorg/apache/poi/hssf/record/common/FeatSmartTag;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/common/FeatSmartTag;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->sharedFeature:Lorg/apache/poi/hssf/record/common/SharedFeature;

    goto :goto_1

    .line 27
    :cond_2
    new-instance v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->sharedFeature:Lorg/apache/poi/hssf/record/common/SharedFeature;

    goto :goto_1

    .line 28
    :cond_3
    new-instance v0, Lorg/apache/poi/hssf/record/common/FeatProtection;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/common/FeatProtection;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->sharedFeature:Lorg/apache/poi/hssf/record/common/SharedFeature;

    :goto_1
    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/FeatRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FeatRecord;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/FeatRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FeatRecord;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hssf/record/FeatRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FeatRecord;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(I)[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hssf/record/FeatRecord;->lambda$new$0(I)[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hssf/record/FeatRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FeatRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->reserved1:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->reserved2:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->reserved3:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$0(I)[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 0

    new-array p0, p0, [Lorg/apache/poi/ss/util/CellRangeAddress;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FeatRecord;->copy()Lorg/apache/poi/hssf/record/FeatRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/FeatRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/FeatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FeatRecord;-><init>(Lorg/apache/poi/hssf/record/FeatRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FeatRecord;->copy()Lorg/apache/poi/hssf/record/FeatRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FeatRecord;->copy()Lorg/apache/poi/hssf/record/FeatRecord;

    move-result-object p0

    return-object p0
.end method

.method public getCbFeatData()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cbFeatData:J

    return-wide v0
.end method

.method public getCellRefs()[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cellRefs:[Lorg/apache/poi/ss/util/CellRangeAddress;

    return-object p0
.end method

.method public getDataSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cellRefs:[Lorg/apache/poi/ss/util/CellRangeAddress;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1b

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->sharedFeature:Lorg/apache/poi/hssf/record/common/SharedFeature;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/hssf/record/common/SharedFeature;->getDataSize()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "futureHeader"

    new-instance v2, Lorg/apache/poi/hssf/record/c1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/apache/poi/hssf/record/c1;-><init>(Lorg/apache/poi/hssf/record/FeatRecord;I)V

    const-string v4, "isf_sharedFeatureType"

    new-instance v5, Lorg/apache/poi/hssf/record/d1;

    invoke-direct {v5, v0, v3}, Lorg/apache/poi/hssf/record/d1;-><init>(Lorg/apache/poi/hssf/record/FeatRecord;I)V

    const-string/jumbo v6, "reserved1"

    new-instance v7, Lorg/apache/poi/hssf/record/e1;

    invoke-direct {v7, v0, v3}, Lorg/apache/poi/hssf/record/e1;-><init>(Lorg/apache/poi/hssf/record/FeatRecord;I)V

    const-string/jumbo v8, "reserved2"

    new-instance v9, Lorg/apache/poi/hssf/record/c1;

    const/4 v3, 0x1

    invoke-direct {v9, v0, v3}, Lorg/apache/poi/hssf/record/c1;-><init>(Lorg/apache/poi/hssf/record/FeatRecord;I)V

    const-string v10, "cbFeatData"

    new-instance v11, Lorg/apache/poi/hssf/record/d1;

    invoke-direct {v11, v0, v3}, Lorg/apache/poi/hssf/record/d1;-><init>(Lorg/apache/poi/hssf/record/FeatRecord;I)V

    const-string/jumbo v12, "reserved3"

    new-instance v13, Lorg/apache/poi/hssf/record/e1;

    invoke-direct {v13, v0, v3}, Lorg/apache/poi/hssf/record/e1;-><init>(Lorg/apache/poi/hssf/record/FeatRecord;I)V

    const-string v14, "cellRefs"

    new-instance v15, Lorg/apache/poi/hssf/record/c1;

    const/4 v3, 0x2

    invoke-direct {v15, v0, v3}, Lorg/apache/poi/hssf/record/c1;-><init>(Lorg/apache/poi/hssf/record/FeatRecord;I)V

    const-string/jumbo v16, "sharedFeature"

    move-object/from16 v17, v15

    new-instance v15, Lorg/apache/poi/hssf/record/d1;

    invoke-direct {v15, v0, v3}, Lorg/apache/poi/hssf/record/d1;-><init>(Lorg/apache/poi/hssf/record/FeatRecord;I)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    move-object v12, v14

    move-object/from16 v13, v17

    move-object/from16 v14, v16

    invoke-static/range {v0 .. v15}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FeatRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->FEAT:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getIsf_sharedFeatureType()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    return p0
.end method

.method public getSharedFeature()Lorg/apache/poi/hssf/record/common/SharedFeature;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->sharedFeature:Lorg/apache/poi/hssf/record/common/SharedFeature;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x868

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/common/FtrHeader;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->reserved1:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->reserved2:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cellRefs:[Lorg/apache/poi/ss/util/CellRangeAddress;

    array-length v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cbFeatData:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->reserved3:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cellRefs:[Lorg/apache/poi/ss/util/CellRangeAddress;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->sharedFeature:Lorg/apache/poi/hssf/record/common/SharedFeature;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lorg/apache/poi/hssf/record/common/SharedFeature;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    :cond_1
    return-void
.end method

.method public setCbFeatData(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cbFeatData:J

    return-void
.end method

.method public setCellRefs([Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cellRefs:[Lorg/apache/poi/ss/util/CellRangeAddress;

    return-void
.end method

.method public setSharedFeature(Lorg/apache/poi/hssf/record/common/SharedFeature;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->sharedFeature:Lorg/apache/poi/hssf/record/common/SharedFeature;

    instance-of v0, p1, Lorg/apache/poi/hssf/record/common/FeatProtection;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    iput v1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    :cond_1
    instance-of v0, p1, Lorg/apache/poi/hssf/record/common/FeatSmartTag;

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    :cond_2
    iget v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    if-ne v0, v1, :cond_3

    invoke-interface {p1}, Lorg/apache/poi/hssf/record/common/SharedFeature;->getDataSize()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cbFeatData:J

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cbFeatData:J

    :goto_0
    return-void
.end method
