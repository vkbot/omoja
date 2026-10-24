.class public final Lorg/apache/commons/compress/archivers/zip/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final r:Lorg/apache/commons/compress/archivers/zip/s0;


# instance fields
.field public final c:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/s0;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/s0;-><init>(J)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/s0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 3
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/s0;->c:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/s0;->c([BI)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/s0;->c:Ljava/math/BigInteger;

    return-void
.end method

.method public static a(J)[B
    .locals 0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/s0;->b(Ljava/math/BigInteger;)[B

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/math/BigInteger;)[B
    .locals 6

    const/16 v0, 0x8

    new-array v1, v0, [B

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0xff

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    const/4 v5, 0x0

    aput-byte v4, v1, v5

    const-wide/32 v4, 0xff00

    and-long/2addr v4, v2

    shr-long/2addr v4, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    const/4 v4, 0x1

    aput-byte v0, v1, v4

    const-wide/32 v4, 0xff0000

    and-long/2addr v4, v2

    const/16 v0, 0x10

    shr-long/2addr v4, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    const/4 v4, 0x2

    aput-byte v0, v1, v4

    const-wide v4, 0xff000000L

    and-long/2addr v4, v2

    const/16 v0, 0x18

    shr-long/2addr v4, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    const/4 v4, 0x3

    aput-byte v0, v1, v4

    const-wide v4, 0xff00000000L

    and-long/2addr v4, v2

    const/16 v0, 0x20

    shr-long/2addr v4, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    const/4 v4, 0x4

    aput-byte v0, v1, v4

    const-wide v4, 0xff0000000000L

    and-long/2addr v4, v2

    const/16 v0, 0x28

    shr-long/2addr v4, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    const/4 v4, 0x5

    aput-byte v0, v1, v4

    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v4, v2

    const/16 v0, 0x30

    shr-long/2addr v4, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    const/4 v4, 0x6

    aput-byte v0, v1, v4

    const-wide/high16 v4, 0x7f00000000000000L    # 5.4861240687936887E303

    and-long/2addr v2, v4

    const/16 v0, 0x38

    shr-long/2addr v2, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x7

    aput-byte v0, v1, v2

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p0

    if-eqz p0, :cond_0

    aget-byte p0, v1, v2

    or-int/lit8 p0, p0, -0x80

    int-to-byte p0, p0

    aput-byte p0, v1, v2

    :cond_0
    return-object v1
.end method

.method public static c([BI)Ljava/math/BigInteger;
    .locals 7

    add-int/lit8 v0, p1, 0x7

    aget-byte v1, p0, v0

    int-to-long v1, v1

    const/16 v3, 0x38

    shl-long/2addr v1, v3

    const-wide/high16 v3, 0x7f00000000000000L    # 5.4861240687936887E303

    and-long/2addr v1, v3

    add-int/lit8 v3, p1, 0x6

    aget-byte v3, p0, v3

    int-to-long v3, v3

    const/16 v5, 0x30

    shl-long/2addr v3, v5

    const-wide/high16 v5, 0xff000000000000L

    and-long/2addr v3, v5

    add-long/2addr v1, v3

    add-int/lit8 v3, p1, 0x5

    aget-byte v3, p0, v3

    int-to-long v3, v3

    const/16 v5, 0x28

    shl-long/2addr v3, v5

    const-wide v5, 0xff0000000000L

    and-long/2addr v3, v5

    add-long/2addr v1, v3

    add-int/lit8 v3, p1, 0x4

    aget-byte v3, p0, v3

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    const-wide v5, 0xff00000000L

    and-long/2addr v3, v5

    add-long/2addr v1, v3

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    int-to-long v3, v3

    const/16 v5, 0x18

    shl-long/2addr v3, v5

    const-wide v5, 0xff000000L

    and-long/2addr v3, v5

    add-long/2addr v1, v3

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    int-to-long v3, v3

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    const-wide/32 v5, 0xff0000

    and-long/2addr v3, v5

    add-long/2addr v1, v3

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    int-to-long v3, v3

    const/16 v5, 0x8

    shl-long/2addr v3, v5

    const-wide/32 v5, 0xff00

    and-long/2addr v3, v5

    add-long/2addr v1, v3

    aget-byte p1, p0, p1

    int-to-long v3, p1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    aget-byte p0, p0, v0

    const/16 v0, -0x80

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/16 p0, 0x3f

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/s0;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/s0;

    iget-object p1, p1, Lorg/apache/commons/compress/archivers/zip/s0;->c:Ljava/math/BigInteger;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/s0;->c:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/s0;->c:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZipEightByteInteger value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/s0;->c:Ljava/math/BigInteger;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
