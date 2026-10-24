.class public final Lg5/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg5/r;
.implements Lg5/y;


# static fields
.field public static final c1:[Ljava/lang/String;


# instance fields
.field public Z:Z

.field public transient b1:Z

.field public transient c:[Ljava/lang/String;

.field public transient r:[Ljava/lang/Object;

.field public transient x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lg5/z;->a:[Ljava/lang/String;

    sput-object v0, Lg5/t;->c1:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lg5/t;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lg5/t;->c1:[Ljava/lang/String;

    iput-object v0, p0, Lg5/t;->c:[Ljava/lang/String;

    iput-object v0, p0, Lg5/t;->r:[Ljava/lang/Object;

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    :cond_0
    sub-int/2addr p1, v0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    shl-int p1, v0, p1

    iput p1, p0, Lg5/t;->y:I

    return-void

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Initial capacity must be at least zero but was "

    .line 5
    invoke-static {v0, p1}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lg5/r;)V
    .locals 6

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lg5/t;->c1:[Ljava/lang/String;

    iput-object v0, p0, Lg5/t;->c:[Ljava/lang/String;

    iput-object v0, p0, Lg5/t;->r:[Ljava/lang/Object;

    .line 16
    instance-of v1, p1, Lg5/t;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 17
    check-cast p1, Lg5/t;

    .line 18
    array-length v0, v0

    iget v1, p1, Lg5/t;->x:I

    if-ge v0, v1, :cond_0

    .line 19
    iget v0, p1, Lg5/t;->y:I

    new-array v3, v0, [Ljava/lang/String;

    iput-object v3, p0, Lg5/t;->c:[Ljava/lang/String;

    .line 20
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lg5/t;->r:[Ljava/lang/Object;

    .line 21
    :cond_0
    iget-object v0, p1, Lg5/t;->c:[Ljava/lang/String;

    iget-object v3, p0, Lg5/t;->c:[Ljava/lang/String;

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    iget-object v0, p1, Lg5/t;->r:[Ljava/lang/Object;

    iget-object v1, p0, Lg5/t;->r:[Ljava/lang/Object;

    iget v3, p1, Lg5/t;->x:I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    iget v0, p1, Lg5/t;->x:I

    iput v0, p0, Lg5/t;->x:I

    .line 24
    iget p1, p1, Lg5/t;->y:I

    iput p1, p0, Lg5/t;->y:I

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 25
    invoke-interface {p1}, Lg5/r;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    shl-int v0, v1, v0

    iget-object v1, p0, Lg5/t;->c:[Ljava/lang/String;

    iget-object v3, p0, Lg5/t;->r:[Ljava/lang/Object;

    .line 27
    new-array v4, v0, [Ljava/lang/String;

    iput-object v4, p0, Lg5/t;->c:[Ljava/lang/String;

    .line 28
    new-array v5, v0, [Ljava/lang/Object;

    iput-object v5, p0, Lg5/t;->r:[Ljava/lang/Object;

    iget v5, p0, Lg5/t;->x:I

    .line 29
    invoke-static {v1, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lg5/t;->r:[Ljava/lang/Object;

    iget v4, p0, Lg5/t;->x:I

    .line 30
    invoke-static {v3, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lg5/t;->y:I

    .line 31
    invoke-interface {p1, p0}, Lg5/r;->z0(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final K0(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 9

    iget-boolean v0, p0, Lg5/t;->Z:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lg5/t;->b1:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lg5/t;->c:[Ljava/lang/String;

    sget-object v1, Lg5/t;->c1:[Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lg5/t;->y:I

    iput v0, p0, Lg5/t;->y:I

    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lg5/t;->c:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lg5/t;->r:[Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lg5/t;->c:[Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    iget v1, p0, Lg5/t;->x:I

    if-lez v1, :cond_4

    aget-object v0, v0, v2

    if-nez v0, :cond_4

    move v4, v2

    goto :goto_1

    :cond_2
    iget v1, p0, Lg5/t;->x:I

    if-lez v1, :cond_3

    aget-object v4, v0, v2

    if-nez v4, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    invoke-static {v0, v4, v1, p2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v4

    :cond_4
    :goto_1
    if-ltz v4, :cond_5

    iget-object v0, p0, Lg5/t;->c:[Ljava/lang/String;

    aput-object p2, v0, v4

    iget-object p0, p0, Lg5/t;->r:[Ljava/lang/Object;

    aput-object p1, p0, v4

    goto :goto_2

    :cond_5
    not-int v0, v4

    iget v1, p0, Lg5/t;->x:I

    iget v4, p0, Lg5/t;->y:I

    if-lt v1, v4, :cond_6

    mul-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lg5/t;->c:[Ljava/lang/String;

    iget-object v6, p0, Lg5/t;->r:[Ljava/lang/Object;

    new-array v7, v4, [Ljava/lang/String;

    iput-object v7, p0, Lg5/t;->c:[Ljava/lang/String;

    new-array v8, v4, [Ljava/lang/Object;

    iput-object v8, p0, Lg5/t;->r:[Ljava/lang/Object;

    invoke-static {v5, v2, v7, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lg5/t;->r:[Ljava/lang/Object;

    iget v5, p0, Lg5/t;->x:I

    invoke-static {v6, v2, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v4, p0, Lg5/t;->y:I

    :cond_6
    iget-object v1, p0, Lg5/t;->c:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iget v4, p0, Lg5/t;->x:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lg5/t;->r:[Ljava/lang/Object;

    iget v4, p0, Lg5/t;->x:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lg5/t;->c:[Ljava/lang/String;

    aput-object p2, v1, v0

    iget-object p2, p0, Lg5/t;->r:[Ljava/lang/Object;

    aput-object p1, p2, v0

    iget p1, p0, Lg5/t;->x:I

    add-int/2addr p1, v3

    iput p1, p0, Lg5/t;->x:I

    :goto_2
    return-void

    :cond_7
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Frozen collection cannot be modified"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lg5/t;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lg5/t;

    iget v1, p0, Lg5/t;->x:I

    iget v3, p1, Lg5/t;->x:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    move v1, v2

    :goto_0
    iget v3, p0, Lg5/t;->x:I

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lg5/t;->c:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p1, Lg5/t;->c:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lg5/t;->r:[Ljava/lang/Object;

    aget-object v3, v3, v1

    iget-object v4, p1, Lg5/t;->r:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 8

    iget v0, p0, Lg5/t;->x:I

    const/16 v1, 0x47b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lg5/t;->c:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    move v6, v4

    :goto_0
    if-ge v5, v0, :cond_1

    mul-int/lit8 v6, v6, 0x1f

    aget-object v7, v2, v5

    if-nez v7, :cond_0

    move v7, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :goto_1
    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lg5/t;->r:[Ljava/lang/Object;

    iget p0, p0, Lg5/t;->x:I

    move v2, v3

    :goto_2
    if-ge v2, p0, :cond_3

    mul-int/lit8 v4, v4, 0x1f

    aget-object v5, v0, v2

    if-nez v5, :cond_2

    move v5, v3

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_3
    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v4, v1

    return v4
.end method

.method public final j1()Ljava/util/HashMap;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    iget v1, p0, Lg5/t;->x:I

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lg5/t;->x:I

    if-ge v1, v2, :cond_5

    const/4 v3, 0x0

    if-ltz v1, :cond_1

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lg5/t;->r:[Ljava/lang/Object;

    aget-object v4, v4, v1

    goto :goto_2

    :cond_1
    :goto_1
    move-object v4, v3

    :goto_2
    if-ltz v1, :cond_3

    if-lt v1, v2, :cond_2

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lg5/t;->c:[Ljava/lang/String;

    aget-object v2, v2, v1

    goto :goto_4

    :cond_3
    :goto_3
    move-object v2, v3

    :goto_4
    if-nez v4, :cond_4

    goto :goto_5

    :cond_4
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lg5/t;->x:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lg5/t;->x:I

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lg5/t;->c:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg5/t;->r:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-ne v2, p0, :cond_1

    const-string v2, "(this map)"

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final z0(Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg5/t;->b1:Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget v2, p0, Lg5/t;->x:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lg5/t;->c:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, p0, Lg5/t;->r:[Ljava/lang/Object;

    aget-object v3, v3, v1

    move-object v4, p1

    check-cast v4, Lg5/y;

    invoke-interface {v4, v3, v2}, Lg5/y;->K0(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iput-boolean v0, p0, Lg5/t;->b1:Z

    return-void

    :goto_1
    iput-boolean v0, p0, Lg5/t;->b1:Z

    throw p1
.end method
