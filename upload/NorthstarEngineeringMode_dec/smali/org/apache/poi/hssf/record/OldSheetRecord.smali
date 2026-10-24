.class public final Lorg/apache/poi/hssf/record/OldSheetRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# static fields
.field public static final sid:S = 0x85s


# instance fields
.field private codepage:Lorg/apache/poi/hssf/record/CodepageRecord;

.field private final field_1_position_of_BOF:I

.field private final field_2_visibility:I

.field private final field_3_type:I

.field private final field_5_sheetname:[B


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->field_1_position_of_BOF:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->field_2_visibility:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->field_3_type:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->mark(I)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    invoke-direct {p1, p0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    int-to-long v1, v0

    invoke-static {}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getMaxRecordLength()I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->field_5_sheetname:[B

    const/4 p0, 0x0

    invoke-virtual {p1, v1, p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->read([BII)I

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/OldSheetRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/OldSheetRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/OldSheetRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/OldSheetRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->field_2_visibility:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->field_3_type:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getGenericProperties()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "bof"

    new-instance v1, Lorg/apache/poi/hssf/record/r2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/r2;-><init>(Lorg/apache/poi/hssf/record/OldSheetRecord;I)V

    const-string/jumbo v2, "visibility"

    new-instance v3, Lorg/apache/poi/hssf/record/m2;

    const/4 v4, 0x4

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/hssf/record/m2;-><init>(ILjava/lang/Object;)V

    const-string/jumbo v4, "type"

    new-instance v5, Lorg/apache/poi/hssf/record/u1;

    const/16 v6, 0xc

    invoke-direct {v5, p0, v6}, Lorg/apache/poi/hssf/record/u1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string/jumbo v6, "sheetName"

    new-instance v7, Lorg/apache/poi/hssf/record/r2;

    const/4 v8, 0x1

    invoke-direct {v7, p0, v8}, Lorg/apache/poi/hssf/record/r2;-><init>(Lorg/apache/poi/hssf/record/OldSheetRecord;I)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldSheetRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->BOUND_SHEET:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getPositionOfBof()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->field_1_position_of_BOF:I

    return p0
.end method

.method public getSheetname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->field_5_sheetname:[B

    iget-object p0, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->codepage:Lorg/apache/poi/hssf/record/CodepageRecord;

    invoke-static {v0, p0}, Lorg/apache/poi/hssf/record/OldStringRecord;->getString([BLorg/apache/poi/hssf/record/CodepageRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x85

    return p0
.end method

.method public setCodePage(Lorg/apache/poi/hssf/record/CodepageRecord;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->codepage:Lorg/apache/poi/hssf/record/CodepageRecord;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
