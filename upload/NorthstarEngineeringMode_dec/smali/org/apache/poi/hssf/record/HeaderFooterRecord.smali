.class public final Lorg/apache/poi/hssf/record/HeaderFooterRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final BLANK_GUID:[B

.field public static final sid:S = 0x89cs


# instance fields
.field private _rawData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->BLANK_GUID:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/HeaderFooterRecord;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-object p1, p1, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->_rawData:[B

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->_rawData:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->_rawData:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->_rawData:[B

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/HeaderFooterRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->_rawData:[B

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->copy()Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/HeaderFooterRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/HeaderFooterRecord;-><init>(Lorg/apache/poi/hssf/record/HeaderFooterRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->copy()Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->copy()Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->_rawData:[B

    array-length p0, p0

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/hssf/record/o0;

    const/16 v1, 0x1c

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/o0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string/jumbo p0, "rawData"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->HEADER_FOOTER:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getGuid()[B
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->_rawData:[B

    const/16 v0, 0xc

    const/16 v1, 0x1c

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x89c

    return p0
.end method

.method public isCurrentSheet()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->getGuid()[B

    move-result-object p0

    sget-object v0, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->BLANK_GUID:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->_rawData:[B

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    return-void
.end method
