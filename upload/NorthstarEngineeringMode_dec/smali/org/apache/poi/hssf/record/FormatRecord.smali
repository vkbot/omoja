.class public final Lorg/apache/poi/hssf/record/FormatRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final LOG:La5/d;

.field public static final sid:S = 0x41es


# instance fields
.field private final field_1_index_code:I

.field private final field_3_hasMultibyte:Z

.field private final field_4_formatstring:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/record/FormatRecord;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/FormatRecord;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    iput p1, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_1_index_code:I

    iput-object p2, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_4_formatstring:Ljava/lang/String;

    .line 6
    invoke-static {p2}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_3_hasMultibyte:Z

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/hssf/record/FormatRecord;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 2
    iget v0, p1, Lorg/apache/poi/hssf/record/FormatRecord;->field_1_index_code:I

    iput v0, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_1_index_code:I

    .line 3
    iget-boolean v0, p1, Lorg/apache/poi/hssf/record/FormatRecord;->field_3_hasMultibyte:Z

    iput-boolean v0, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_3_hasMultibyte:Z

    .line 4
    iget-object p1, p1, Lorg/apache/poi/hssf/record/FormatRecord;->field_4_formatstring:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_4_formatstring:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4

    .line 7
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_1_index_code:I

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_3_hasMultibyte:Z

    if-eqz v1, :cond_1

    .line 11
    invoke-static {p1, v0, v3}, Lorg/apache/poi/hssf/record/FormatRecord;->readStringCommon(Lorg/apache/poi/hssf/record/RecordInputStream;IZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_4_formatstring:Ljava/lang/String;

    goto :goto_1

    .line 12
    :cond_1
    invoke-static {p1, v0, v2}, Lorg/apache/poi/hssf/record/FormatRecord;->readStringCommon(Lorg/apache/poi/hssf/record/RecordInputStream;IZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_4_formatstring:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/FormatRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormatRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_3_hasMultibyte:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static readStringCommon(Lorg/apache/poi/hssf/record/RecordInputStream;IZ)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_6

    const/high16 v0, 0x100000

    if-gt p1, v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    div-int/lit8 v0, v0, 0x2

    :goto_0
    if-ne p1, v0, :cond_1

    new-array p1, p1, [C

    goto :goto_1

    :cond_1
    new-array p1, v0, [C

    :goto_1
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v1

    :goto_3
    int-to-char v1, v1

    goto :goto_4

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    goto :goto_3

    :goto_4
    aput-char v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    array-length p2, p1

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p2

    array-length p1, p1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    int-to-char v0, v0

    aput-char v0, p2, p1

    move-object p1, p2

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result p2

    if-lez p2, :cond_5

    sget-object p2, Lorg/apache/poi/hssf/record/FormatRecord;->LOG:La5/d;

    invoke-interface {p2}, La5/d;->f()La5/b;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v0

    invoke-static {v0}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FormatRecord has {} unexplained bytes. Silently skipping"

    invoke-interface {p2, v0, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result p2

    if-lez p2, :cond_5

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    goto :goto_5

    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad requested string length ("

    const-string v0, ")"

    invoke-static {p2, p1, v0}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormatRecord;->copy()Lorg/apache/poi/hssf/record/FormatRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/FormatRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/FormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FormatRecord;-><init>(Lorg/apache/poi/hssf/record/FormatRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormatRecord;->copy()Lorg/apache/poi/hssf/record/FormatRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormatRecord;->copy()Lorg/apache/poi/hssf/record/FormatRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormatRecord;->getFormatString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-boolean p0, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_3_hasMultibyte:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    mul-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public getFormatString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_4_formatstring:Ljava/lang/String;

    return-object p0
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

    const-string v0, "indexCode"

    new-instance v1, Lorg/apache/poi/hssf/record/p0;

    const/16 v2, 0x1b

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/p0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string/jumbo v2, "unicode"

    new-instance v3, Lorg/apache/poi/hssf/record/n0;

    const/16 v4, 0x12

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/hssf/record/n0;-><init>(ILjava/lang/Object;)V

    const-string v4, "formatString"

    new-instance v5, Lorg/apache/poi/hssf/record/o0;

    const/16 v6, 0x17

    invoke-direct {v5, p0, v6}, Lorg/apache/poi/hssf/record/o0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormatRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->FORMAT:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getIndexCode()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_1_index_code:I

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x41e

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormatRecord;->getFormatString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormatRecord;->getIndexCode()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-boolean v1, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_3_hasMultibyte:Z

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-boolean p0, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_3_hasMultibyte:Z

    if-eqz p0, :cond_0

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    :goto_0
    return-void
.end method
