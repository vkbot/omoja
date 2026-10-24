.class public final Lorg/apache/poi/hssf/record/OldLabelRecord;
.super Lorg/apache/poi/hssf/record/OldCellRecord;
.source "SourceFile"


# static fields
.field private static final LOG:La5/d;

.field public static final biff2_sid:S = 0x4s

.field public static final biff345_sid:S = 0x204s


# instance fields
.field private codepage:Lorg/apache/poi/hssf/record/CodepageRecord;

.field private field_4_string_len:S

.field private final field_5_bytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/record/OldLabelRecord;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/OldLabelRecord;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/OldCellRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;Z)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldCellRecord;->isBiff2()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/OldLabelRecord;->field_4_string_len:S

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/OldLabelRecord;->field_4_string_len:S

    :goto_1
    iget-short v0, p0, Lorg/apache/poi/hssf/record/OldLabelRecord;->field_4_string_len:S

    int-to-long v0, v0

    invoke-static {}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getMaxRecordLength()I

    move-result v3

    invoke-static {v0, v1, v3}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/OldLabelRecord;->field_5_bytes:[B

    iget-short p0, p0, Lorg/apache/poi/hssf/record/OldLabelRecord;->field_4_string_len:S

    invoke-virtual {p1, v0, v2, p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->read([BII)I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result p0

    if-lez p0, :cond_2

    sget-object p0, Lorg/apache/poi/hssf/record/OldLabelRecord;->LOG:La5/d;

    invoke-interface {p0}, La5/d;->f()La5/b;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    invoke-static {v0}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "LabelRecord data remains: {} : {}"

    invoke-interface {p0, v0, v1, p1}, La5/b;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/OldLabelRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/OldLabelRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/hssf/record/OldCellRecord;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
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

    const-string v0, "base"

    new-instance v1, Lorg/apache/poi/hssf/record/q1;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/q1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string/jumbo v2, "stringLength"

    new-instance v3, Lorg/apache/poi/hssf/record/m2;

    const/4 v4, 0x3

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/hssf/record/m2;-><init>(ILjava/lang/Object;)V

    const-string/jumbo v4, "value"

    new-instance v5, Lorg/apache/poi/hssf/record/u1;

    const/16 v6, 0xb

    invoke-direct {v5, p0, v6}, Lorg/apache/poi/hssf/record/u1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldLabelRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->LABEL:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getRecordSize()I
    .locals 1

    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string v0, "Old Label Records are supported READ ONLY"

    invoke-direct {p0, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getStringLength()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/OldLabelRecord;->field_4_string_len:S

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/OldLabelRecord;->field_5_bytes:[B

    iget-object p0, p0, Lorg/apache/poi/hssf/record/OldLabelRecord;->codepage:Lorg/apache/poi/hssf/record/CodepageRecord;

    invoke-static {v0, p0}, Lorg/apache/poi/hssf/record/OldStringRecord;->getString([BLorg/apache/poi/hssf/record/CodepageRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public serialize(I[B)I
    .locals 0

    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string p1, "Old Label Records are supported READ ONLY"

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCodePage(Lorg/apache/poi/hssf/record/CodepageRecord;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/OldLabelRecord;->codepage:Lorg/apache/poi/hssf/record/CodepageRecord;

    return-void
.end method
