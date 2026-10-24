.class public abstract Lorg/apache/poi/xssf/binary/XSSFBParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0xf4240

.field private static MAX_RECORD_LENGTH:I = 0xf4240


# instance fields
.field private final is:Lorg/apache/poi/util/LittleEndianInputStream;

.field private final records:Le3/a;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->is:Lorg/apache/poi/util/LittleEndianInputStream;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->records:Le3/a;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Le3/a;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->is:Lorg/apache/poi/util/LittleEndianInputStream;

    iput-object p2, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->records:Le3/a;

    return-void
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/xssf/binary/XSSFBParser;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method private readNext(B)V
    .locals 9

    shr-int/lit8 v0, p1, 0x7

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->is:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readByte()B

    move-result v0

    and-int/lit16 p1, p1, -0x81

    int-to-byte p1, p1

    and-int/lit16 v0, v0, -0x81

    int-to-byte v0, v0

    shl-int/lit8 v0, v0, 0x7

    add-int/2addr p1, v0

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    move v4, v0

    move v5, v4

    :goto_0
    const/4 v6, 0x4

    if-ge v4, v6, :cond_2

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->is:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-virtual {v5}, Lorg/apache/poi/util/LittleEndianInputStream;->readByte()B

    move-result v5

    shr-int/lit8 v6, v5, 0x7

    and-int/2addr v6, v1

    if-nez v6, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    and-int/lit16 v5, v5, -0x81

    int-to-byte v5, v5

    int-to-long v7, v5

    mul-int/lit8 v5, v4, 0x7

    shl-long/2addr v7, v5

    add-long/2addr v2, v7

    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->records:Le3/a;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Le3/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->is:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-static {p0, v2, v3}, Lorg/apache/poi/util/IOUtils;->skipFully(Ljava/io/InputStream;J)J

    move-result-wide p0

    cmp-long v0, p0, v2

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "End of file reached before expected.\tTried to skip "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", but only skipped "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    sget v0, Lorg/apache/poi/xssf/binary/XSSFBParser;->MAX_RECORD_LENGTH:I

    invoke-static {v2, v3, v0}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->is:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-virtual {v1, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([B)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/binary/XSSFBParser;->handleRecord(I[B)V

    :goto_3
    return-void
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public abstract handleRecord(I[B)V
.end method

.method public parse()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->is:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/binary/XSSFBParser;->readNext(B)V

    goto :goto_0
.end method
