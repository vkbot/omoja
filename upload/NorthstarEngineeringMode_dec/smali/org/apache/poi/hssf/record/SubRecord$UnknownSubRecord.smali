.class final Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;
.super Lorg/apache/poi/hssf/record/SubRecord;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/SubRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnknownSubRecord"
.end annotation


# instance fields
.field private final _data:[B

.field private final _sid:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;II)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    iput p3, p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->_sid:I

    int-to-long p2, p2

    invoke-static {}, Lorg/apache/poi/hssf/record/SubRecord;->access$000()I

    move-result v0

    invoke-static {p2, p3, v0}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    iput-object p2, p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->_data:[B

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->_sid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->_data:[B

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->copy()Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/SubRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->copy()Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->_data:[B

    array-length p0, p0

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

    new-instance v0, Lorg/apache/poi/hssf/record/n0;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/hssf/record/n0;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lorg/apache/poi/hssf/record/o0;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/o0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string/jumbo p0, "sid"

    const-string v2, "data"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->UNKNOWN:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    return-object p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->_sid:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->_data:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->_data:[B

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    return-void
.end method
