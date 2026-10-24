.class public final Ln4/f;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln4/f$a;
    }
.end annotation


# static fields
.field public static final synthetic Z:I


# instance fields
.field public final c:[B

.field public final r:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>([BII)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-string v0, "offset"

    invoke-static {p2, v0}, Ln4/f;->a(ILjava/lang/String;)V

    const-string v0, "length"

    invoke-static {p3, v0}, Ln4/f;->a(ILjava/lang/String;)V

    const-string v0, "data"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Ln4/f;->c:[B

    const-string v0, "defaultValue"

    invoke-static {p2, v0}, Ln4/f;->a(ILjava/lang/String;)V

    array-length v1, p1

    if-lez v1, :cond_0

    array-length v1, p1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v1, p3

    array-length p3, p1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Ln4/f;->r:I

    invoke-static {p2, v0}, Ln4/f;->a(ILjava/lang/String;)V

    array-length p3, p1

    if-lez p3, :cond_1

    array-length p3, p1

    goto :goto_1

    :cond_1
    move p3, p2

    :goto_1
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Ln4/f;->x:I

    invoke-static {p2, v0}, Ln4/f;->a(ILjava/lang/String;)V

    array-length p3, p1

    if-lez p3, :cond_2

    array-length p1, p1

    goto :goto_2

    :cond_2
    move p1, p2

    :goto_2
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Ln4/f;->y:I

    return-void
.end method

.method public static a(ILjava/lang/String;)V
    .locals 1

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, " cannot be negative"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final available()I
    .locals 1

    iget v0, p0, Ln4/f;->x:I

    iget p0, p0, Ln4/f;->r:I

    if-ge v0, p0, :cond_0

    sub-int/2addr p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final mark(I)V
    .locals 0

    iget p1, p0, Ln4/f;->x:I

    iput p1, p0, Ln4/f;->y:I

    return-void
.end method

.method public final markSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final read()I
    .locals 2

    iget v0, p0, Ln4/f;->x:I

    iget v1, p0, Ln4/f;->r:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ln4/f;->x:I

    iget-object p0, p0, Ln4/f;->c:[B

    .line 1
    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final read([B)I
    .locals 2

    const-string v0, "dest"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ln4/f;->read([BII)I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 2

    const-string v0, "dest"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    .line 5
    array-length v1, p1

    if-gt v0, v1, :cond_3

    iget v0, p0, Ln4/f;->x:I

    iget v1, p0, Ln4/f;->r:I

    if-lt v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    sub-int/2addr v1, v0

    if-ge p3, v1, :cond_1

    goto :goto_0

    :cond_1
    move p3, v1

    :goto_0
    if-gtz p3, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    iget-object v1, p0, Ln4/f;->c:[B

    .line 6
    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Ln4/f;->x:I

    add-int/2addr p1, p3

    iput p1, p0, Ln4/f;->x:I

    return p3

    .line 7
    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public final reset()V
    .locals 1

    iget v0, p0, Ln4/f;->y:I

    iput v0, p0, Ln4/f;->x:I

    return-void
.end method

.method public final skip(J)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Ln4/f;->x:I

    iget v1, p0, Ln4/f;->r:I

    sub-int/2addr v1, v0

    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    move-wide v1, p1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->addExact(II)I

    move-result p1

    iput p1, p0, Ln4/f;->x:I

    return-wide v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Skipping backward is not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
