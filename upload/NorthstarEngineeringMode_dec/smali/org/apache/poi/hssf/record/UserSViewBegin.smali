.class public final Lorg/apache/poi/hssf/record/UserSViewBegin;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x1aas


# instance fields
.field private _rawData:[B


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/UserSViewBegin;->_rawData:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/UserSViewBegin;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 2
    iget-object p1, p1, Lorg/apache/poi/hssf/record/UserSViewBegin;->_rawData:[B

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/UserSViewBegin;->_rawData:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/record/UserSViewBegin;->_rawData:[B

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/UserSViewBegin;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/UserSViewBegin;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/UserSViewBegin;->_rawData:[B

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/UserSViewBegin;->copy()Lorg/apache/poi/hssf/record/UserSViewBegin;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/UserSViewBegin;->copy()Lorg/apache/poi/hssf/record/UserSViewBegin;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/UserSViewBegin;->copy()Lorg/apache/poi/hssf/record/UserSViewBegin;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/UserSViewBegin;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/UserSViewBegin;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/UserSViewBegin;-><init>(Lorg/apache/poi/hssf/record/UserSViewBegin;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/UserSViewBegin;->_rawData:[B

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

    new-instance v0, Lorg/apache/poi/hssf/record/q1;

    const/16 v1, 0x19

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/q1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    new-instance v1, Lorg/apache/poi/hssf/record/m2;

    const/16 v2, 0x16

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/hssf/record/m2;-><init>(ILjava/lang/Object;)V

    const-string p0, "guid"

    const-string/jumbo v2, "rawData"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/UserSViewBegin;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->USER_SVIEW_BEGIN:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getGuid()[B
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hssf/record/UserSViewBegin;->_rawData:[B

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x1aa

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/UserSViewBegin;->_rawData:[B

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    return-void
.end method
