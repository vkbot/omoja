.class public Lorg/apache/poi/hssf/record/common/ExtRst;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/hssf/record/common/ExtRst;",
        ">;",
        "Lorg/apache/poi/common/usermodel/GenericRecord;"
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:La5/d;


# instance fields
.field private extraData:[B

.field private formattingFontIndex:S

.field private formattingOptions:S

.field private numberOfRuns:I

.field private phRuns:[Lorg/apache/poi/hssf/record/common/PhRun;

.field private phoneticText:Ljava/lang/String;

.field private reserved:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/record/common/ExtRst;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/ExtRst;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/ExtRst;->populateEmpty()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/common/ExtRst;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/ExtRst;-><init>()V

    .line 4
    iget-short v0, p1, Lorg/apache/poi/hssf/record/common/ExtRst;->reserved:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->reserved:S

    .line 5
    iget-short v0, p1, Lorg/apache/poi/hssf/record/common/ExtRst;->formattingFontIndex:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->formattingFontIndex:S

    .line 6
    iget-short v0, p1, Lorg/apache/poi/hssf/record/common/ExtRst;->formattingOptions:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->formattingOptions:S

    .line 7
    iget v0, p1, Lorg/apache/poi/hssf/record/common/ExtRst;->numberOfRuns:I

    iput v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->numberOfRuns:I

    .line 8
    iget-object v0, p1, Lorg/apache/poi/hssf/record/common/ExtRst;->phoneticText:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->phoneticText:Ljava/lang/String;

    .line 9
    iget-object p1, p1, Lorg/apache/poi/hssf/record/common/ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/PhRun;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/x0;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/x0;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lh5/e;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lh5/e;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hssf/record/common/PhRun;

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/PhRun;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;I)V
    .locals 5

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->reserved:S

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 12
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/ExtRst;->populateEmpty()V

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    sget-object v0, Lorg/apache/poi/hssf/record/common/ExtRst;->LOG:La5/d;

    .line 13
    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->reserved:S

    invoke-static {v1}, Lg5/b0;->b(S)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "ExtRst has wrong magic marker, expecting 1 but found {} - ignoring"

    invoke-interface {v0, v1, v3}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    add-int/lit8 v0, p2, -0x2

    if-ge v2, v0, :cond_1

    .line 14
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/ExtRst;->populateEmpty()V

    return-void

    .line 16
    :cond_2
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result p2

    .line 17
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->formattingFontIndex:S

    .line 18
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->formattingOptions:S

    .line 19
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->numberOfRuns:I

    .line 20
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    .line 21
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v1

    if-nez v0, :cond_3

    if-lez v1, :cond_3

    move v1, v2

    :cond_3
    if-ne v0, v1, :cond_7

    .line 22
    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->phoneticText:Ljava/lang/String;

    add-int/lit8 p2, p2, -0xa

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    .line 24
    div-int/lit8 v0, p2, 0x6

    .line 25
    new-array v1, v0, [Lorg/apache/poi/hssf/record/common/PhRun;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/PhRun;

    move v1, v2

    :goto_1
    iget-object v3, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/PhRun;

    .line 26
    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 27
    new-instance v4, Lorg/apache/poi/hssf/record/common/PhRun;

    invoke-direct {v4, p1}, Lorg/apache/poi/hssf/record/common/PhRun;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    mul-int/lit8 v0, v0, 0x6

    sub-int/2addr p2, v0

    if-gez p2, :cond_5

    sget-object v0, Lorg/apache/poi/hssf/record/common/ExtRst;->LOG:La5/d;

    .line 28
    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    neg-int p2, p2

    invoke-static {p2}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "ExtRst overran by {} bytes"

    invoke-interface {v0, p2, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move p2, v2

    :cond_5
    int-to-long v0, p2

    .line 29
    invoke-static {}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getMaxRecordLength()I

    move-result p2

    invoke-static {v0, v1, p2}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->extraData:[B

    :goto_2
    iget-object p2, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->extraData:[B

    .line 30
    array-length v0, p2

    if-ge v2, v0, :cond_6

    .line 31
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    aput-byte v0, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-void

    .line 32
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The two length fields of the Phonetic Text don\'t agree! "

    const-string p2, " vs "

    .line 33
    invoke-static {p1, v0, p2, v1}, Landroidx/activity/result/a;->c(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/common/ExtRst;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/ExtRst;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/common/ExtRst;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/ExtRst;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(I)[Lorg/apache/poi/hssf/record/common/PhRun;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hssf/record/common/ExtRst;->lambda$new$0(I)[Lorg/apache/poi/hssf/record/common/PhRun;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->reserved:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->extraData:[B

    return-object p0
.end method

.method private static synthetic lambda$new$0(I)[Lorg/apache/poi/hssf/record/common/PhRun;
    .locals 0

    new-array p0, p0, [Lorg/apache/poi/hssf/record/common/PhRun;

    return-object p0
.end method

.method private populateEmpty()V
    .locals 2

    const/4 v0, 0x1

    iput-short v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->reserved:S

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->phoneticText:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/apache/poi/hssf/record/common/PhRun;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/PhRun;

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->extraData:[B

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/hssf/record/common/ExtRst;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/common/ExtRst;->compareTo(Lorg/apache/poi/hssf/record/common/ExtRst;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/apache/poi/hssf/record/common/ExtRst;)I
    .locals 5

    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->reserved:S

    .line 2
    iget-short v1, p1, Lorg/apache/poi/hssf/record/common/ExtRst;->reserved:S

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->formattingFontIndex:S

    .line 3
    iget-short v1, p1, Lorg/apache/poi/hssf/record/common/ExtRst;->formattingFontIndex:S

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->formattingOptions:S

    .line 4
    iget-short v1, p1, Lorg/apache/poi/hssf/record/common/ExtRst;->formattingOptions:S

    sub-int/2addr v0, v1

    if-eqz v0, :cond_2

    return v0

    :cond_2
    iget v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->numberOfRuns:I

    .line 5
    iget v1, p1, Lorg/apache/poi/hssf/record/common/ExtRst;->numberOfRuns:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_3

    return v0

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->phoneticText:Ljava/lang/String;

    .line 6
    iget-object v1, p1, Lorg/apache/poi/hssf/record/common/ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/PhRun;

    .line 7
    array-length v0, v0

    iget-object v1, p1, Lorg/apache/poi/hssf/record/common/ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/PhRun;

    array-length v1, v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_5

    return v0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/PhRun;

    .line 8
    array-length v2, v1

    if-ge v0, v2, :cond_9

    .line 9
    aget-object v1, v1, v0

    iget v2, v1, Lorg/apache/poi/hssf/record/common/PhRun;->phoneticTextFirstCharacterOffset:I

    iget-object v3, p1, Lorg/apache/poi/hssf/record/common/ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/PhRun;

    aget-object v3, v3, v0

    iget v4, v3, Lorg/apache/poi/hssf/record/common/PhRun;->phoneticTextFirstCharacterOffset:I

    sub-int/2addr v2, v4

    if-eqz v2, :cond_6

    return v2

    .line 10
    :cond_6
    iget v2, v1, Lorg/apache/poi/hssf/record/common/PhRun;->realTextFirstCharacterOffset:I

    iget v4, v3, Lorg/apache/poi/hssf/record/common/PhRun;->realTextFirstCharacterOffset:I

    sub-int/2addr v2, v4

    if-eqz v2, :cond_7

    return v2

    .line 11
    :cond_7
    iget v1, v1, Lorg/apache/poi/hssf/record/common/PhRun;->realTextLength:I

    iget v2, v3, Lorg/apache/poi/hssf/record/common/PhRun;->realTextLength:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_8

    return v1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    iget-object p0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->extraData:[B

    .line 12
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    iget-object p1, p1, Lorg/apache/poi/hssf/record/common/ExtRst;->extraData:[B

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/common/ExtRst;
    .locals 1

    new-instance v0, Lorg/apache/poi/hssf/record/common/ExtRst;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/common/ExtRst;-><init>(Lorg/apache/poi/hssf/record/common/ExtRst;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/apache/poi/hssf/record/common/ExtRst;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/hssf/record/common/ExtRst;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/common/ExtRst;->compareTo(Lorg/apache/poi/hssf/record/common/ExtRst;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getDataSize()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/PhRun;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->extraData:[B

    array-length p0, p0

    add-int/2addr v1, p0

    return v1
.end method

.method public getFormattingFontIndex()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->formattingFontIndex:S

    return p0
.end method

.method public getFormattingOptions()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->formattingOptions:S

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string/jumbo v0, "reserved"

    new-instance v1, Lorg/apache/poi/hssf/record/common/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/common/a;-><init>(Lorg/apache/poi/hssf/record/common/ExtRst;I)V

    const-string v3, "formattingFontIndex"

    new-instance v4, Lorg/apache/poi/hssf/record/common/b;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/common/b;-><init>(Lorg/apache/poi/hssf/record/common/ExtRst;I)V

    const-string v5, "formattingOptions"

    new-instance v6, Lorg/apache/poi/hssf/record/common/c;

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/hssf/record/common/c;-><init>(Lorg/apache/poi/hssf/record/common/ExtRst;I)V

    const-string v7, "numberOfRuns"

    new-instance v8, Lorg/apache/poi/hssf/record/common/a;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/hssf/record/common/a;-><init>(Lorg/apache/poi/hssf/record/common/ExtRst;I)V

    const-string/jumbo v9, "phoneticText"

    new-instance v10, Lorg/apache/poi/hssf/record/common/b;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/hssf/record/common/b;-><init>(Lorg/apache/poi/hssf/record/common/ExtRst;I)V

    const-string/jumbo v11, "phRuns"

    new-instance v12, Lorg/apache/poi/hssf/record/common/c;

    invoke-direct {v12, p0, v2}, Lorg/apache/poi/hssf/record/common/c;-><init>(Lorg/apache/poi/hssf/record/common/ExtRst;I)V

    const-string v13, "extraData"

    new-instance v14, Lorg/apache/poi/hssf/record/common/a;

    const/4 v2, 0x2

    invoke-direct {v14, p0, v2}, Lorg/apache/poi/hssf/record/common/a;-><init>(Lorg/apache/poi/hssf/record/common/ExtRst;I)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    invoke-static/range {v0 .. v13}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getNumberOfRuns()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->numberOfRuns:I

    return p0
.end method

.method public getPhRuns()[Lorg/apache/poi/hssf/record/common/PhRun;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/PhRun;

    return-object p0
.end method

.method public getPhoneticText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->phoneticText:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 7

    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->reserved:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->formattingFontIndex:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->formattingOptions:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    iget v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->numberOfRuns:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->phoneticText:Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/PhRun;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/ExtRst;->getDataSize()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinueIfRequired(I)V

    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->reserved:S

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->formattingFontIndex:S

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->formattingOptions:S

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinueIfRequired(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->numberOfRuns:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinueIfRequired(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->phoneticText:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/PhRun;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lorg/apache/poi/hssf/record/common/PhRun;->serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/record/common/ExtRst;->extraData:[B

    invoke-virtual {p1, p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->write([B)V

    return-void
.end method
