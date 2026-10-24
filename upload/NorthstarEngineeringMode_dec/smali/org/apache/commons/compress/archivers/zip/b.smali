.class public final Lorg/apache/commons/compress/archivers/zip/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/v0;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final c1:Lorg/apache/commons/compress/archivers/zip/d1;


# instance fields
.field public Z:Z

.field public b1:Ljava/util/zip/CRC32;

.field public c:I

.field public r:I

.field public x:I

.field public y:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/d1;

    const/16 v1, 0x756e

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/b;->c1:Lorg/apache/commons/compress/archivers/zip/d1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->y:Ljava/lang/String;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->b1:Ljava/util/zip/CRC32;

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/b;->d()[B

    move-result-object p0

    return-object p0
.end method

.method public final b()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/d1;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/b;->y:Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    add-int/lit8 p0, p0, 0xe

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    return-object v0
.end method

.method public final c()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 0

    sget-object p0, Lorg/apache/commons/compress/archivers/zip/b;->c1:Lorg/apache/commons/compress/archivers/zip/d1;

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/b;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->b1:Ljava/util/zip/CRC32;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final d()[B
    .locals 9

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/b;->b()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object v0

    iget v0, v0, Lorg/apache/commons/compress/archivers/zip/d1;->c:I

    add-int/lit8 v1, v0, -0x4

    new-array v2, v1, [B

    iget v3, p0, Lorg/apache/commons/compress/archivers/zip/b;->c:I

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/d1;->b(I)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/b;->y:Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v6, v3

    int-to-long v6, v6

    invoke-static {v6, v7}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v6, v4, v2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Lorg/apache/commons/compress/archivers/zip/b;->r:I

    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/d1;->b(I)[B

    move-result-object v6

    const/4 v8, 0x6

    invoke-static {v6, v4, v2, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Lorg/apache/commons/compress/archivers/zip/b;->x:I

    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/d1;->b(I)[B

    move-result-object v6

    const/16 v8, 0x8

    invoke-static {v6, v4, v2, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0xa

    array-length v6, v3

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/b;->b1:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->reset()V

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/b;->b1:Ljava/util/zip/CRC32;

    invoke-virtual {v3, v2}, Ljava/util/zip/CRC32;->update([B)V

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/b;->b1:Ljava/util/zip/CRC32;

    invoke-virtual {p0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    new-array p0, v0, [B

    invoke-static {v5, v6}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object v0

    invoke-static {v0, v4, p0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v4, p0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public final e(II[B)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/b;->f(II[B)V

    return-void
.end method

.method public final f(II[B)V
    .locals 9

    const/16 v0, 0xe

    if-lt p2, v0, :cond_4

    const/4 v1, 0x4

    invoke-static {p1, v1, p3}, Lh4/d;->a(II[B)J

    move-result-wide v2

    add-int/lit8 v4, p2, -0x4

    new-array v5, v4, [B

    add-int/2addr p1, v1

    const/4 v6, 0x0

    invoke-static {p3, p1, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/b;->b1:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/b;->b1:Ljava/util/zip/CRC32;

    invoke-virtual {p1, v5}, Ljava/util/zip/CRC32;->update([B)V

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/b;->b1:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    cmp-long p1, v2, v7

    if-nez p1, :cond_3

    const/4 p1, 0x2

    invoke-static {v6, p1, v5}, Lh4/d;->a(II[B)J

    move-result-wide v2

    long-to-int p3, v2

    invoke-static {p1, v1, v5}, Lh4/d;->a(II[B)J

    move-result-wide v1

    long-to-int v1, v1

    if-ltz v1, :cond_2

    sub-int/2addr p2, v0

    if-gt v1, p2, :cond_2

    const/4 p2, 0x6

    invoke-static {p2, p1, v5}, Lh4/d;->a(II[B)J

    move-result-wide v2

    long-to-int p2, v2

    iput p2, p0, Lorg/apache/commons/compress/archivers/zip/b;->r:I

    const/16 p2, 0x8

    invoke-static {p2, p1, v5}, Lh4/d;->a(II[B)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/b;->x:I

    if-nez v1, :cond_0

    const-string p1, ""

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/b;->y:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-array p1, v1, [B

    const/16 p2, 0xa

    invoke-static {v5, p2, p1, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p2, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/b;->y:Ljava/lang/String;

    :goto_0
    and-int/lit16 p1, p3, 0x4000

    if-eqz p1, :cond_1

    const/4 v6, 0x1

    :cond_1
    iput-boolean v6, p0, Lorg/apache/commons/compress/archivers/zip/b;->Z:Z

    iget p1, p0, Lorg/apache/commons/compress/archivers/zip/b;->c:I

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/b;->h(I)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/b;->c:I

    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/archivers/zip/b;->h(I)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/b;->c:I

    return-void

    :cond_2
    new-instance p0, Ljava/util/zip/ZipException;

    const-string p1, "Bad symbolic link name length "

    const-string p2, " in ASI extra field"

    invoke-static {p1, v1, p2}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/util/zip/ZipException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Bad CRC checksum, expected "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " instead of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/util/zip/ZipException;

    const-string p1, "The length is too short, only "

    const-string p3, " bytes, expected at least 14"

    invoke-static {p1, p2, p3}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/b;->b()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object p0

    return-object p0
.end method

.method public final h(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const p0, 0xa000

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->Z:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/b;->y:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_1

    const/16 p0, 0x4000

    goto :goto_0

    :cond_1
    const p0, 0x8000

    :goto_0
    and-int/lit16 p1, p1, 0xfff

    or-int/2addr p0, p1

    return p0
.end method
