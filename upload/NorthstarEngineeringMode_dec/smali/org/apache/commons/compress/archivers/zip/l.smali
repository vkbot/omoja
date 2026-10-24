.class public final Lorg/apache/commons/compress/archivers/zip/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public Z:I

.field public b1:I

.field public c:Z

.field public r:Z

.field public x:Z

.field public y:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b([BI)Lorg/apache/commons/compress/archivers/zip/l;
    .locals 4

    const/4 v0, 0x2

    invoke-static {p1, v0, p0}, Lh4/d;->a(II[B)J

    move-result-wide p0

    long-to-int p0, p0

    new-instance p1, Lorg/apache/commons/compress/archivers/zip/l;

    invoke-direct {p1}, Lorg/apache/commons/compress/archivers/zip/l;-><init>()V

    and-int/lit8 v1, p0, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p1, Lorg/apache/commons/compress/archivers/zip/l;->r:Z

    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p1, Lorg/apache/commons/compress/archivers/zip/l;->c:Z

    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p1, Lorg/apache/commons/compress/archivers/zip/l;->y:Z

    if-eqz v1, :cond_3

    iput-boolean v3, p1, Lorg/apache/commons/compress/archivers/zip/l;->x:Z

    :cond_3
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    iput-boolean v2, p1, Lorg/apache/commons/compress/archivers/zip/l;->x:Z

    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_5

    const/16 v1, 0x2000

    goto :goto_3

    :cond_5
    const/16 v1, 0x1000

    :goto_3
    iput v1, p1, Lorg/apache/commons/compress/archivers/zip/l;->Z:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_6

    const/4 v0, 0x3

    :cond_6
    iput v0, p1, Lorg/apache/commons/compress/archivers/zip/l;->b1:I

    return-object p1
.end method


# virtual methods
.method public final a([BI)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/l;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/l;->c:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x800

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    or-int/2addr v0, v2

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/l;->x:Z

    or-int/2addr v0, v2

    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/l;->y:Z

    if-eqz p0, :cond_2

    const/16 v1, 0x40

    :cond_2
    or-int p0, v0, v1

    invoke-static {p0, p2, p1}, Lorg/apache/commons/compress/archivers/zip/d1;->c(II[B)V

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "GeneralPurposeBit is not Cloneable?"

    invoke-direct {v0, v1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/l;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/l;

    iget-boolean v0, p1, Lorg/apache/commons/compress/archivers/zip/l;->x:Z

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/l;->x:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p1, Lorg/apache/commons/compress/archivers/zip/l;->y:Z

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/l;->y:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p1, Lorg/apache/commons/compress/archivers/zip/l;->c:Z

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/l;->c:Z

    if-ne v0, v2, :cond_1

    iget-boolean p1, p1, Lorg/apache/commons/compress/archivers/zip/l;->r:Z

    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/l;->r:Z

    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/l;->x:Z

    mul-int/lit8 v0, v0, 0x11

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/l;->y:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xd

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/l;->c:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x7

    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/l;->r:Z

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method
