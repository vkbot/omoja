.class public final Lorg/apache/poi/hssf/record/OldStringRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# static fields
.field public static final biff2_sid:S = 0x7s

.field public static final biff345_sid:S = 0x207s


# instance fields
.field private codepage:Lorg/apache/poi/hssf/record/CodepageRecord;

.field private field_1_string_len:S

.field private field_2_bytes:[B

.field private sid:S


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->sid:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->field_1_string_len:S

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->field_1_string_len:S

    :goto_0
    iget-short v0, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->field_1_string_len:S

    int-to-long v0, v0

    invoke-static {}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getMaxRecordLength()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->field_2_bytes:[B

    const/4 v1, 0x0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->field_1_string_len:S

    invoke-virtual {p1, v0, v1, p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->read([BII)I

    return-void
.end method

.method public static getString([BLorg/apache/poi/hssf/record/CodepageRecord;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/CodepageRecord;->getCodepage()S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/16 p1, 0x4e4

    .line 3
    :goto_0
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/poi/util/CodePageUtil;->getStringFromCodePage([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported codepage requested: "

    .line 5
    invoke-static {v1, p1}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
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

    new-instance v0, Lorg/apache/poi/hssf/record/m2;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/hssf/record/m2;-><init>(ILjava/lang/Object;)V

    const-string/jumbo p0, "string"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldStringRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->STRING:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->sid:S

    return p0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->field_2_bytes:[B

    iget-object p0, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->codepage:Lorg/apache/poi/hssf/record/CodepageRecord;

    .line 1
    invoke-static {v0, p0}, Lorg/apache/poi/hssf/record/OldStringRecord;->getString([BLorg/apache/poi/hssf/record/CodepageRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isBiff2()Z
    .locals 1

    iget-short p0, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->sid:S

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setCodePage(Lorg/apache/poi/hssf/record/CodepageRecord;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->codepage:Lorg/apache/poi/hssf/record/CodepageRecord;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
