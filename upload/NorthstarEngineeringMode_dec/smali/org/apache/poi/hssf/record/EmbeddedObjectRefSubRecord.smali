.class public final Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;
.super Lorg/apache/poi/hssf/record/SubRecord;
.source "SourceFile"


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final LOG:La5/d;

.field public static final sid:S = 0x9s


# instance fields
.field private field_1_unknown_int:I

.field private field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

.field private field_2_unknownFormulaData:[B

.field private field_3_unicode_flag:Z

.field private field_4_ole_classname:Ljava/lang/String;

.field private field_4_unknownByte:Ljava/lang/Byte;

.field private field_5_stream_id:Ljava/lang/Integer;

.field private field_6_unknown:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->LOG:La5/d;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    sget-object v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x2t
        0x6ct
        0x6at
        0x16t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/SubRecord;-><init>(Lorg/apache/poi/hssf/record/SubRecord;)V

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_1_unknown_int:I

    iput v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_1_unknown_int:I

    .line 4
    iget-object v0, p1, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->copy()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 5
    iget-object v0, p1, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_1
    iput-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    .line 6
    iget-boolean v0, p1, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_3_unicode_flag:Z

    iput-boolean v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_3_unicode_flag:Z

    .line 7
    iget-object v0, p1, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    .line 8
    iget-object v0, p1, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_unknownByte:Ljava/lang/Byte;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_unknownByte:Ljava/lang/Byte;

    .line 9
    iget-object v0, p1, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    .line 10
    iget-object p1, p1, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [B

    :goto_2
    iput-object v1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;I)V
    .locals 1

    const/4 v0, -0x1

    .line 11
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;II)V
    .locals 7

    .line 12
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    .line 13
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result p3

    add-int/lit8 v0, p2, -0x2

    sub-int/2addr v0, p3

    .line 14
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result p3

    .line 15
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_1_unknown_int:I

    add-int/lit8 p2, p2, -0x8

    .line 16
    invoke-static {p1, p3}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->readRawData(Lorg/apache/poi/util/LittleEndianInput;I)[B

    move-result-object v1

    sub-int/2addr p2, p3

    .line 17
    invoke-static {v1}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->readRefPtg([B)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iput-object v1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    :goto_0
    add-int/lit8 v1, v0, 0x3

    const/4 v2, 0x4

    const/4 v4, 0x0

    if-lt p2, v1, :cond_5

    .line 18
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_4

    .line 19
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v1

    if-lez v1, :cond_3

    .line 20
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v5

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    move v4, v6

    :cond_1
    iput-boolean v4, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_3_unicode_flag:Z

    if-eqz v4, :cond_2

    .line 21
    invoke-static {p1, v1}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    :goto_1
    move v4, v1

    goto :goto_2

    .line 22
    :cond_2
    invoke-static {p1, v1}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    add-int/2addr v1, v2

    goto :goto_1

    :cond_3
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    move v4, v5

    goto :goto_2

    .line 23
    :cond_4
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string p1, "Expected byte 0x03 here"

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    iput-object v3, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    :goto_2
    sub-int/2addr p2, v4

    add-int/2addr v4, p3

    .line 24
    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_6

    .line 25
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result p3

    add-int/lit8 p2, p2, -0x1

    iget-object v1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    if-nez v1, :cond_6

    int-to-byte p3, p3

    .line 26
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    iput-object p3, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_unknownByte:Ljava/lang/Byte;

    :cond_6
    sub-int p3, p2, v0

    if-lez p3, :cond_7

    sget-object v1, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->LOG:La5/d;

    .line 27
    invoke-interface {v1}, La5/d;->h()La5/b;

    move-result-object v1

    invoke-static {p3}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Discarding {} unexpected padding bytes"

    invoke-interface {v1, v4, v5}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {p1, p3}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->readRawData(Lorg/apache/poi/util/LittleEndianInput;I)[B

    sub-int/2addr p2, p3

    :cond_7
    if-lt v0, v2, :cond_8

    .line 29
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    add-int/lit8 p2, p2, -0x4

    goto :goto_3

    :cond_8
    iput-object v3, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    .line 30
    :goto_3
    invoke-static {p1, p2}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->readRawData(Lorg/apache/poi/util/LittleEndianInput;I)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->lambda$getGenericProperties$5()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->lambda$getGenericProperties$7()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->lambda$getGenericProperties$6()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getDataSize(I)I
    .locals 2

    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    add-int/lit8 v0, p1, 0x6

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    .line 1
    array-length p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method private getStreamIDOffset(I)I
    .locals 2

    add-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    if-eqz v1, :cond_1

    add-int/lit8 v0, p1, 0x9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 p1, p1, 0xa

    iget-boolean p0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_3_unicode_flag:Z

    if-eqz p0, :cond_0

    mul-int/lit8 v1, v1, 0x2

    add-int v0, v1, p1

    goto :goto_0

    :cond_0
    add-int v0, p1, v1

    :cond_1
    :goto_0
    rem-int/lit8 p0, v0, 0x2

    if-eqz p0, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method public static synthetic h(Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_1_unknown_int:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_3_unicode_flag:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$5()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_unknownByte:Ljava/lang/Byte;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$6()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$7()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    return-object p0
.end method

.method private static readRawData(Lorg/apache/poi/util/LittleEndianInput;I)[B
    .locals 2

    if-ltz p1, :cond_1

    if-nez p1, :cond_0

    sget-object p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->EMPTY_BYTE_ARRAY:[B

    return-object p0

    :cond_0
    int-to-long v0, p1

    invoke-static {}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getMaxRecordLength()I

    move-result p1

    invoke-static {v0, v1, p1}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Negative size ("

    const-string v1, ")"

    invoke-static {v0, p1, v1}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readRefPtg([B)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/apache/poi/util/LittleEndianInputStream;

    sget v1, Ln4/f;->Z:I

    new-instance v1, Ln4/f$a;

    invoke-direct {v1}, Ln4/f$a;-><init>()V

    invoke-virtual {v1, p0}, Ln4/f$a;->m([B)V

    invoke-virtual {v1}, Ln4/f$a;->k()Ln4/f;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readByte()B

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x24

    if-eq p0, v1, :cond_3

    const/16 v1, 0x25

    if-eq p0, v1, :cond_2

    const/16 v1, 0x3a

    if-eq p0, v1, :cond_1

    const/16 v1, 0x3b

    if-eq p0, v1, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :try_start_3
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    :try_start_5
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    return-object p0

    :cond_2
    :try_start_7
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    return-object p0

    :cond_3
    :try_start_9
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/ptg/RefPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    return-object p0

    :goto_0
    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_d
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    :goto_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected exception in readRefPtg"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->copy()Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;-><init>(Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/SubRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->copy()Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    .line 2
    array-length v0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v0

    .line 3
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->getStreamIDOffset(I)I

    move-result v0

    .line 4
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->getDataSize(I)I

    move-result p0

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "f2unknown"

    new-instance v2, Lorg/apache/poi/hssf/record/q0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/apache/poi/hssf/record/q0;-><init>(Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;I)V

    const-string v4, "f3unknown"

    new-instance v5, Lorg/apache/poi/hssf/record/r0;

    invoke-direct {v5, v0, v3}, Lorg/apache/poi/hssf/record/r0;-><init>(Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;I)V

    const-string v6, "formula"

    new-instance v7, Lorg/apache/poi/hssf/record/s0;

    invoke-direct {v7, v0, v3}, Lorg/apache/poi/hssf/record/s0;-><init>(Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;I)V

    const-string/jumbo v8, "unicodeFlag"

    new-instance v9, Lorg/apache/poi/hssf/record/q0;

    const/4 v3, 0x1

    invoke-direct {v9, v0, v3}, Lorg/apache/poi/hssf/record/q0;-><init>(Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;I)V

    const-string v10, "oleClassname"

    new-instance v11, Lorg/apache/poi/hssf/record/r0;

    invoke-direct {v11, v0, v3}, Lorg/apache/poi/hssf/record/r0;-><init>(Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;I)V

    const-string v12, "f4unknown"

    new-instance v13, Lorg/apache/poi/hssf/record/s0;

    invoke-direct {v13, v0, v3}, Lorg/apache/poi/hssf/record/s0;-><init>(Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;I)V

    const-string/jumbo v14, "streamId"

    new-instance v15, Lorg/apache/poi/hssf/record/q0;

    const/4 v3, 0x2

    invoke-direct {v15, v0, v3}, Lorg/apache/poi/hssf/record/q0;-><init>(Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;I)V

    const-string v16, "f7unknown"

    move-object/from16 v17, v15

    new-instance v15, Lorg/apache/poi/hssf/record/r0;

    invoke-direct {v15, v0, v3}, Lorg/apache/poi/hssf/record/r0;-><init>(Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;I)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    move-object v12, v14

    move-object/from16 v13, v17

    move-object/from16 v14, v16

    invoke-static/range {v0 .. v15}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->EMBEDDED_OBJECT_REF:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    return-object p0
.end method

.method public getOLEClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    return-object p0
.end method

.method public getObjectData()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method public getStreamId()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    return-object p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    array-length v0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->getStreamIDOffset(I)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->getDataSize(I)I

    move-result v2

    const/16 v3, 0x9

    invoke-interface {p1, v3}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_1_unknown_int:I

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, p1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->write(Lorg/apache/poi/util/LittleEndianOutput;)V

    :goto_1
    add-int/lit8 v2, v0, 0xc

    iget-object v3, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    if-eqz v3, :cond_4

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    add-int/lit8 v3, v0, 0xf

    if-lez v2, :cond_3

    iget-boolean v3, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_3_unicode_flag:Z

    invoke-interface {p1, v3}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    add-int/lit8 v0, v0, 0x10

    iget-boolean v3, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_3_unicode_flag:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    invoke-static {v3, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    invoke-static {v3, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    add-int/2addr v2, v0

    goto :goto_2

    :cond_3
    move v2, v3

    :cond_4
    :goto_2
    add-int/lit8 v0, v2, -0x6

    sub-int v0, v1, v0

    if-eqz v0, :cond_7

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_unknownByte:Ljava/lang/Byte;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Byte;->intValue()I

    move-result v0

    :goto_3
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Bad padding calculation ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_4
    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    :cond_8
    iget-object p0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    return-void
.end method

.method public setOleClassname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    return-void
.end method

.method public setStorageId(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    return-void
.end method

.method public setUnknownFormulaData([B)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    return-void
.end method
