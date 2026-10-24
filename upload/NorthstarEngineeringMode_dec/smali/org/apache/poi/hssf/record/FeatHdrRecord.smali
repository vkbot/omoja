.class public final Lorg/apache/poi/hssf/record/FeatHdrRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final SHAREDFEATURES_ISFFACTOID:I = 0x4

.field public static final SHAREDFEATURES_ISFFEC2:I = 0x3

.field public static final SHAREDFEATURES_ISFLIST:I = 0x5

.field public static final SHAREDFEATURES_ISFPROTECTION:I = 0x2

.field public static final sid:S = 0x867s


# instance fields
.field private cbHdrData:J

.field private final futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

.field private isf_sharedFeatureType:I

.field private reserved:B

.field private rgbHdrData:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    const/16 p0, 0x867

    .line 3
    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/record/common/FtrHeader;->setRecordType(S)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/FeatHdrRecord;)V
    .locals 2

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 5
    iget-object v0, p1, Lorg/apache/poi/hssf/record/FeatHdrRecord;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/FtrHeader;->copy()Lorg/apache/poi/hssf/record/common/FtrHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    .line 6
    iget v0, p1, Lorg/apache/poi/hssf/record/FeatHdrRecord;->isf_sharedFeatureType:I

    iput v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->isf_sharedFeatureType:I

    .line 7
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/FeatHdrRecord;->reserved:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->reserved:B

    .line 8
    iget-wide v0, p1, Lorg/apache/poi/hssf/record/FeatHdrRecord;->cbHdrData:J

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->cbHdrData:J

    .line 9
    iget-object p1, p1, Lorg/apache/poi/hssf/record/FeatHdrRecord;->rgbHdrData:[B

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->rgbHdrData:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 11
    new-instance v0, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->isf_sharedFeatureType:I

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->reserved:B

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->cbHdrData:J

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->rgbHdrData:[B

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/FeatHdrRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FeatHdrRecord;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/FeatHdrRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FeatHdrRecord;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hssf/record/FeatHdrRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FeatHdrRecord;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hssf/record/FeatHdrRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FeatHdrRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hssf/record/FeatHdrRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FeatHdrRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->isf_sharedFeatureType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->reserved:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->cbHdrData:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->rgbHdrData:[B

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FeatHdrRecord;->copy()Lorg/apache/poi/hssf/record/FeatHdrRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/FeatHdrRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/FeatHdrRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FeatHdrRecord;-><init>(Lorg/apache/poi/hssf/record/FeatHdrRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FeatHdrRecord;->copy()Lorg/apache/poi/hssf/record/FeatHdrRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FeatHdrRecord;->copy()Lorg/apache/poi/hssf/record/FeatHdrRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->rgbHdrData:[B

    array-length p0, p0

    add-int/lit8 p0, p0, 0x13

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

    const-string v0, "futureHeader"

    new-instance v1, Lorg/apache/poi/hssf/record/z0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/z0;-><init>(Lorg/apache/poi/hssf/record/FeatHdrRecord;I)V

    const-string v3, "isf_sharedFeatureType"

    new-instance v4, Lorg/apache/poi/hssf/record/a1;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/a1;-><init>(Lorg/apache/poi/hssf/record/FeatHdrRecord;I)V

    const-string/jumbo v5, "reserved"

    new-instance v6, Lorg/apache/poi/hssf/record/o0;

    const/16 v2, 0x14

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/hssf/record/o0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v7, "cbHdrData"

    new-instance v8, Lorg/apache/poi/hssf/record/z0;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/hssf/record/z0;-><init>(Lorg/apache/poi/hssf/record/FeatHdrRecord;I)V

    const-string/jumbo v9, "rgbHdrData"

    new-instance v10, Lorg/apache/poi/hssf/record/a1;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/hssf/record/a1;-><init>(Lorg/apache/poi/hssf/record/FeatHdrRecord;I)V

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
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FeatHdrRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->FEAT_HDR:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x867

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/common/FtrHeader;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->isf_sharedFeatureType:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->reserved:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->cbHdrData:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->rgbHdrData:[B

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    return-void
.end method
