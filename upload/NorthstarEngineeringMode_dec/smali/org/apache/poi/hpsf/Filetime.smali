.class public Lorg/apache/poi/hpsf/Filetime;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final EPOCH_DIFF:Ljava/math/BigInteger;

.field private static final NANO_100:Ljava/math/BigInteger;


# instance fields
.field private fileTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, -0xa9730b66800L

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/Filetime;->EPOCH_DIFF:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/Filetime;->NANO_100:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lorg/apache/poi/hpsf/Filetime;->dateToFileTime(Ljava/util/Date;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hpsf/Filetime;->fileTime:J

    return-void
.end method

.method public static dateToFileTime(Ljava/util/Date;)J
    .locals 2

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/hpsf/Filetime;->EPOCH_DIFF:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/hpsf/Filetime;->NANO_100:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static filetimeToDate(J)Ljava/util/Date;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/poi/hpsf/Filetime;->twoComplement(J)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    :goto_0
    new-instance p1, Ljava/util/Date;

    sget-object v0, Lorg/apache/poi/hpsf/Filetime;->NANO_100:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/hpsf/Filetime;->EPOCH_DIFF:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p1
.end method

.method public static isUndefined(Ljava/util/Date;)Z
    .locals 4

    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/apache/poi/hpsf/Filetime;->dateToFileTime(Ljava/util/Date;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static twoComplement(J)Ljava/math/BigInteger;
    .locals 7

    const/16 v0, 0x9

    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    int-to-byte v1, v1

    aput-byte v1, v0, v2

    const/16 v1, 0x38

    shr-long v1, p0, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    const/16 v1, 0x30

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    const/16 v1, 0x28

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    const/16 v1, 0x20

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    const/16 v1, 0x18

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    const/16 v1, 0x10

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    const/16 v1, 0x8

    shr-long v5, p0, v1

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    const/4 v5, 0x7

    aput-byte v2, v0, v5

    and-long/2addr p0, v3

    long-to-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object p0
.end method


# virtual methods
.method public getJavaValue()Ljava/util/Date;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hpsf/Filetime;->fileTime:J

    invoke-static {v0, v1}, Lorg/apache/poi/hpsf/Filetime;->filetimeToDate(J)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hpsf/Filetime;->fileTime:J

    return-void
.end method

.method public toByteArray()[B
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/apache/poi/hpsf/Filetime;->fileTime:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/poi/util/LittleEndian;->putLong([BIJ)V

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Filetime;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    const/16 p0, 0x8

    return p0
.end method
