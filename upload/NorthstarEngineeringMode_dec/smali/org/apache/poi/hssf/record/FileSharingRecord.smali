.class public final Lorg/apache/poi/hssf/record/FileSharingRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x5bs


# instance fields
.field private field_1_readonly:S

.field private field_2_password:S

.field private field_3_username_unicode_options:B

.field private field_3_username_value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/FileSharingRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_1_readonly:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_1_readonly:S

    .line 4
    iget-short v0, p1, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_2_password:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_2_password:S

    .line 5
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_unicode_options:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_unicode_options:B

    .line 6
    iget-object p1, p1, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_value:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_1_readonly:S

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_2_password:S

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    if-lez v0, :cond_0

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    iput-byte v1, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_unicode_options:B

    .line 12
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readCompressedUnicode(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_value:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_value:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FileSharingRecord;->copy()Lorg/apache/poi/hssf/record/FileSharingRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/FileSharingRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/FileSharingRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FileSharingRecord;-><init>(Lorg/apache/poi/hssf/record/FileSharingRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FileSharingRecord;->copy()Lorg/apache/poi/hssf/record/FileSharingRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FileSharingRecord;->copy()Lorg/apache/poi/hssf/record/FileSharingRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_value:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string/jumbo v0, "readOnly"

    new-instance v1, Lorg/apache/poi/hssf/record/o0;

    const/16 v2, 0x15

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/o0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string/jumbo v2, "password"

    new-instance v3, Lorg/apache/poi/hssf/record/p0;

    const/16 v4, 0x1a

    invoke-direct {v3, p0, v4}, Lorg/apache/poi/hssf/record/p0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string/jumbo v4, "username"

    new-instance v5, Lorg/apache/poi/hssf/record/n0;

    const/16 v6, 0x11

    invoke-direct {v5, v6, p0}, Lorg/apache/poi/hssf/record/n0;-><init>(ILjava/lang/Object;)V

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FileSharingRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->FILE_SHARING:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getPassword()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_2_password:S

    return p0
.end method

.method public getReadOnly()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_1_readonly:S

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x5b

    return p0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_value:Ljava/lang/String;

    return-object p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FileSharingRecord;->getReadOnly()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FileSharingRecord;->getPassword()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_unicode_options:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FileSharingRecord;->getUsername()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    :cond_0
    return-void
.end method

.method public setPassword(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_2_password:S

    return-void
.end method

.method public setReadOnly(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_1_readonly:S

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_value:Ljava/lang/String;

    return-void
.end method
