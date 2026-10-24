.class public final Lorg/apache/commons/compress/archivers/zip/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field public final c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/d1;->c:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    invoke-static {p2, v0, p1}, Lh4/d;->a(II[B)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/d1;->c:I

    return-void
.end method

.method public static b(I)[B
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/apache/commons/compress/archivers/zip/d1;->c(II[B)V

    return-object v0
.end method

.method public static c(II[B)V
    .locals 2

    int-to-long v0, p0

    const/4 p0, 0x2

    invoke-static {v0, v1, p2, p1, p0}, Lh4/d;->b(J[BII)V

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [B

    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/d1;->c:I

    int-to-long v2, p0

    const/4 p0, 0x0

    invoke-static {v2, v3, v1, p0, v0}, Lh4/d;->b(J[BII)V

    return-object v1
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/d1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/d1;

    iget p1, p1, Lorg/apache/commons/compress/archivers/zip/d1;->c:I

    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/d1;->c:I

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/d1;->c:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZipShort value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/d1;->c:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
