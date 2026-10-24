.class public abstract Lg3/a;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;"
    }
.end annotation


# virtual methods
.method public final remove(I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    check-cast p0, Lg3/c;

    iget v0, p0, Lg3/c;->x:I

    if-ltz p1, :cond_6

    if-ge p1, v0, :cond_6

    invoke-virtual {p0}, Lg3/a;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lg3/c;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lg3/c;->c:I

    invoke-virtual {p0}, Lg3/a;->size()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lg3/c;->e(I)I

    move-result p1

    iget-object v0, p0, Lg3/c;->r:[Ljava/lang/Object;

    aget-object v3, v0, p1

    aput-object v2, v0, p1

    iget p1, p0, Lg3/c;->x:I

    sub-int/2addr p1, v1

    iput p1, p0, Lg3/c;->x:I

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "ArrayDeque is empty."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lg3/c;->f()Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_3

    :cond_2
    iget v0, p0, Lg3/c;->c:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lg3/c;->e(I)I

    move-result v0

    iget-object v3, p0, Lg3/c;->r:[Ljava/lang/Object;

    aget-object v4, v3, v0

    iget v5, p0, Lg3/c;->x:I

    shr-int/2addr v5, v1

    const/4 v6, 0x0

    if-ge p1, v5, :cond_4

    iget p1, p0, Lg3/c;->c:I

    if-lt v0, p1, :cond_3

    add-int/lit8 v5, p1, 0x1

    invoke-static {v3, v3, v5, p1, v0}, Lg3/d;->g0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_0

    :cond_3
    invoke-static {v3, v3, v1, v6, v0}, Lg3/d;->g0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object p1, p0, Lg3/c;->r:[Ljava/lang/Object;

    array-length v0, p1

    sub-int/2addr v0, v1

    aget-object v0, p1, v0

    aput-object v0, p1, v6

    iget v0, p0, Lg3/c;->c:I

    add-int/lit8 v3, v0, 0x1

    array-length v5, p1

    sub-int/2addr v5, v1

    invoke-static {p1, p1, v3, v0, v5}, Lg3/d;->g0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_0
    iget-object p1, p0, Lg3/c;->r:[Ljava/lang/Object;

    iget v0, p0, Lg3/c;->c:I

    aput-object v2, p1, v0

    invoke-virtual {p0, v0}, Lg3/c;->d(I)I

    move-result p1

    iput p1, p0, Lg3/c;->c:I

    goto :goto_2

    :cond_4
    iget p1, p0, Lg3/c;->c:I

    invoke-virtual {p0}, Lg3/a;->size()I

    move-result v3

    sub-int/2addr v3, v1

    add-int/2addr v3, p1

    invoke-virtual {p0, v3}, Lg3/c;->e(I)I

    move-result p1

    if-gt v0, p1, :cond_5

    iget-object v3, p0, Lg3/c;->r:[Ljava/lang/Object;

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, p1, 0x1

    invoke-static {v3, v3, v0, v5, v6}, Lg3/d;->g0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lg3/c;->r:[Ljava/lang/Object;

    add-int/lit8 v5, v0, 0x1

    array-length v7, v3

    invoke-static {v3, v3, v0, v5, v7}, Lg3/d;->g0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object v0, p0, Lg3/c;->r:[Ljava/lang/Object;

    array-length v3, v0

    sub-int/2addr v3, v1

    aget-object v5, v0, v6

    aput-object v5, v0, v3

    add-int/lit8 v3, p1, 0x1

    invoke-static {v0, v0, v6, v1, v3}, Lg3/d;->g0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_1
    iget-object v0, p0, Lg3/c;->r:[Ljava/lang/Object;

    aput-object v2, v0, p1

    :goto_2
    iget p1, p0, Lg3/c;->x:I

    sub-int/2addr p1, v1

    iput p1, p0, Lg3/c;->x:I

    move-object v3, v4

    :goto_3
    return-object v3

    :cond_6
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index: "

    const-string v2, ", size: "

    invoke-static {v1, p1, v2, v0}, Landroidx/activity/result/a;->c(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final size()I
    .locals 0

    check-cast p0, Lg3/c;

    iget p0, p0, Lg3/c;->x:I

    return p0
.end method
