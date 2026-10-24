.class public final Lk5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[C

.field public final b:[I

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lk5/a;->a:[C

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lk5/a;->b:[I

    iput-boolean p2, p0, Lk5/a;->c:Z

    array-length p1, p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    iget-object v1, p0, Lk5/a;->b:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p2, p1, :cond_4

    iget-object v0, p0, Lk5/a;->a:[C

    aget-char v0, v0, p2

    sub-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lk5/a;->b:[I

    array-length v3, v2

    rem-int v3, v0, v3

    aget v4, v2, v3

    if-ge v1, v4, :cond_1

    aput v1, v2, v3

    :cond_1
    iget-boolean v2, p0, Lk5/a;->c:Z

    if-eqz v2, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    iget-object v2, p0, Lk5/a;->b:[I

    array-length v3, v2

    rem-int v3, v0, v3

    aget v4, v2, v3

    if-ge v1, v4, :cond_2

    aput v1, v2, v3

    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iget-object v2, p0, Lk5/a;->b:[I

    array-length v3, v2

    rem-int/2addr v0, v3

    aget v3, v2, v0

    if-ge v1, v3, :cond_3

    aput v1, v2, v0

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/String;)I
    .locals 8

    iget-boolean v0, p0, Lk5/a;->c:Z

    iget-object v1, p0, Lk5/a;->b:[I

    iget-object p0, p0, Lk5/a;->a:[C

    const/4 v2, -0x1

    if-eqz v0, :cond_6

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    add-int/2addr p1, v0

    :goto_0
    if-gt p1, p2, :cond_5

    add-int/lit8 v3, p1, 0x1

    move v4, v0

    :cond_1
    add-int/2addr p1, v2

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/2addr v4, v2

    aget-char v6, p0, v4

    if-eq v5, v6, :cond_2

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    if-eq v7, v6, :cond_2

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    if-eq v7, v6, :cond_2

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    if-gtz v4, :cond_1

    :goto_1
    array-length v4, v1

    rem-int/2addr v5, v4

    aget v4, v1, v5

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, p1

    if-ge v4, v3, :cond_4

    move p1, v3

    goto :goto_0

    :cond_4
    move p1, v4

    goto :goto_0

    :cond_5
    move p1, v2

    :goto_2
    return p1

    :cond_6
    array-length v0, p0

    if-nez v0, :cond_7

    return p1

    :cond_7
    add-int/2addr p1, v0

    :goto_3
    if-gt p1, p2, :cond_c

    add-int/lit8 v3, p1, 0x1

    move v4, v0

    :cond_8
    add-int/2addr p1, v2

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/2addr v4, v2

    aget-char v6, p0, v4

    if-eq v5, v6, :cond_9

    goto :goto_4

    :cond_9
    if-nez v4, :cond_a

    return p1

    :cond_a
    if-gtz v4, :cond_8

    :goto_4
    array-length v4, v1

    rem-int/2addr v5, v4

    aget v4, v1, v5

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, p1

    if-ge v4, v3, :cond_b

    move p1, v3

    goto :goto_3

    :cond_b
    move p1, v4

    goto :goto_3

    :cond_c
    return v2
.end method
