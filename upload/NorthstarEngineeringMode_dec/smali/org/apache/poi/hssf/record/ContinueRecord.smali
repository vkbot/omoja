.class public final Lorg/apache/poi/hssf/record/ContinueRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x3cs


# instance fields
.field private _data:[B


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/ContinueRecord;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 4
    iget-object p1, p1, Lorg/apache/poi/hssf/record/ContinueRecord;->_data:[B

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/ContinueRecord;->_data:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/ContinueRecord;->_data:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 2
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/apache/poi/hssf/record/ContinueRecord;->_data:[B

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ContinueRecord;->copy()Lorg/apache/poi/hssf/record/ContinueRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/ContinueRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/ContinueRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ContinueRecord;-><init>(Lorg/apache/poi/hssf/record/ContinueRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ContinueRecord;->copy()Lorg/apache/poi/hssf/record/ContinueRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ContinueRecord;->copy()Lorg/apache/poi/hssf/record/ContinueRecord;

    move-result-object p0

    return-object p0
.end method

.method public getData()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/ContinueRecord;->_data:[B

    return-object p0
.end method

.method public getDataSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/ContinueRecord;->_data:[B

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

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/o0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string p0, "data"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ContinueRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->CONTINUE:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x3c

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/ContinueRecord;->_data:[B

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    return-void
.end method
