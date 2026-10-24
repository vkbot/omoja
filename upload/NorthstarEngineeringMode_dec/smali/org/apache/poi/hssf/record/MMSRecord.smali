.class public final Lorg/apache/poi/hssf/record/MMSRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0xc1s


# instance fields
.field private field_1_addMenuCount:B

.field private field_2_delMenuCount:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/MMSRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 3
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/MMSRecord;->field_1_addMenuCount:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/MMSRecord;->field_1_addMenuCount:B

    .line 4
    iget-byte p1, p1, Lorg/apache/poi/hssf/record/MMSRecord;->field_2_delMenuCount:B

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/MMSRecord;->field_2_delMenuCount:B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/MMSRecord;->field_1_addMenuCount:B

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result p1

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/MMSRecord;->field_2_delMenuCount:B

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MMSRecord;->copy()Lorg/apache/poi/hssf/record/MMSRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/MMSRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/MMSRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/MMSRecord;-><init>(Lorg/apache/poi/hssf/record/MMSRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MMSRecord;->copy()Lorg/apache/poi/hssf/record/MMSRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MMSRecord;->copy()Lorg/apache/poi/hssf/record/MMSRecord;

    move-result-object p0

    return-object p0
.end method

.method public getAddMenuCount()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/MMSRecord;->field_1_addMenuCount:B

    return p0
.end method

.method public getDataSize()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getDelMenuCount()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/MMSRecord;->field_2_delMenuCount:B

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

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/q1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    new-instance v1, Lorg/apache/poi/hssf/record/n0;

    const/16 v2, 0x1b

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/hssf/record/n0;-><init>(ILjava/lang/Object;)V

    const-string p0, "addMenuCount"

    const-string v2, "delMenuCount"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MMSRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->MMS:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0xc1

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MMSRecord;->getAddMenuCount()B

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MMSRecord;->getDelMenuCount()B

    move-result p0

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    return-void
.end method

.method public setAddMenuCount(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/MMSRecord;->field_1_addMenuCount:B

    return-void
.end method

.method public setDelMenuCount(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/MMSRecord;->field_2_delMenuCount:B

    return-void
.end method
