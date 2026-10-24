.class public final Lk5/i;
.super Lk5/l;
.source "SourceFile"


# virtual methods
.method public final g(Ljava/lang/String;)Z
    .locals 3

    sget-object p0, Lj5/p;->a:[B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    move p0, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p0, v1, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_2

    sget-object v2, Lj5/p;->a:[B

    aget-byte v1, v2, v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_1
    return v0
.end method
