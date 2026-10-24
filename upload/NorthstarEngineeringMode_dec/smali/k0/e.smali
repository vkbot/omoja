.class public final Lk0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/String;

.field public b:[Ll0/b;

.field public c:I


# virtual methods
.method public final a(Ljava/lang/String;Ll0/b;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lk0/e;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lk0/e;->a:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lk0/e;->b:[Ll0/b;

    aput-object p2, p0, v1

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lk0/e;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ne v2, v1, :cond_3

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    new-array v2, v2, [Ll0/b;

    :goto_1
    iget v3, p0, Lk0/e;->c:I

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lk0/e;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    aput-object v3, v1, v0

    iget-object v3, p0, Lk0/e;->b:[Ll0/b;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lk0/e;->a:[Ljava/lang/String;

    iput-object v2, p0, Lk0/e;->b:[Ll0/b;

    :cond_3
    iget-object v0, p0, Lk0/e;->a:[Ljava/lang/String;

    iget v1, p0, Lk0/e;->c:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lk0/e;->b:[Ll0/b;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lk0/e;->c:I

    return-void
.end method
