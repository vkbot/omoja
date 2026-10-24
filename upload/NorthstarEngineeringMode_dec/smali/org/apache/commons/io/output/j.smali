.class public final Lorg/apache/commons/io/output/j;
.super Lorg/apache/commons/io/output/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/output/j$a;
    }
.end annotation


# static fields
.field public static final synthetic c:I


# virtual methods
.method public final reset()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/io/output/a;->resetImpl()V

    return-void
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/io/output/a;->count:I

    return p0
.end method

.method public final toByteArray()[B
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object p0

    return-object p0
.end method

.method public final toInputStream()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Landroidx/constraintlayout/core/state/b;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/a;->toInputStream(Lorg/apache/commons/io/output/a$a;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public final write(Ljava/io/InputStream;)I
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/a;->writeImpl(Ljava/io/InputStream;)I

    move-result p0

    return p0
.end method

.method public final write(I)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/a;->writeImpl(I)V

    return-void
.end method

.method public final write([BII)V
    .locals 2

    if-ltz p2, :cond_1

    .line 1
    array-length v0, p1

    if-gt p2, v0, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-ltz v0, :cond_1

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/output/a;->writeImpl([BII)V

    return-void

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "offset=%,d, length=%,d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/a;->writeToImpl(Ljava/io/OutputStream;)V

    return-void
.end method
