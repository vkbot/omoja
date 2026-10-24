.class public final Lr4/c;
.super Lr4/b;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public r:[[D


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lr4/b;-><init>(II)V

    filled-new-array {p1, p2}, [I

    move-result-object p1

    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 2
    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    iput-object p1, p0, Lr4/c;->r:[[D

    return-void
.end method

.method public constructor <init>([[D)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lr4/b;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lr4/c;->s([[D)V

    return-void
.end method

.method public constructor <init>([[DZ)V
    .locals 3

    .line 5
    invoke-direct {p0}, Lr4/b;-><init>()V

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lr4/c;->s([[D)V

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    if-eqz p1, :cond_5

    .line 7
    array-length v0, p1

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 8
    aget-object v1, p1, v1

    array-length v1, v1

    if-eqz v1, :cond_3

    :goto_0
    if-ge p2, v0, :cond_2

    .line 9
    aget-object v2, p1, p2

    array-length v2, v2

    if-ne v2, v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p0, Lp4/b;

    aget-object p1, p1, p2

    array-length p1, p1

    invoke-direct {p0, p1, v1}, Lp4/b;-><init>(II)V

    throw p0

    :cond_2
    iput-object p1, p0, Lr4/c;->r:[[D

    :goto_1
    return-void

    .line 11
    :cond_3
    new-instance p0, Lp4/i;

    sget-object p1, Lq4/c;->r:Lq4/c;

    invoke-direct {p0, p1}, Lp4/i;-><init>(Lq4/c;)V

    throw p0

    .line 12
    :cond_4
    new-instance p0, Lp4/i;

    sget-object p1, Lq4/c;->x:Lq4/c;

    invoke-direct {p0, p1}, Lp4/i;-><init>(Lq4/c;)V

    throw p0

    .line 13
    :cond_5
    new-instance p0, Lp4/i;

    invoke-direct {p0, p2}, Lp4/i;-><init>(I)V

    throw p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object p0, p0, Lr4/c;->r:[[D

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    aget-object p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p0

    :cond_1
    :goto_0
    return v0
.end method

.method public final c()I
    .locals 0

    iget-object p0, p0, Lr4/c;->r:[[D

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    array-length p0, p0

    :goto_0
    return p0
.end method

.method public final d(II)D
    .locals 0

    invoke-static {p0, p1}, Lr4/h;->b(Lr4/k;I)V

    invoke-static {p0, p2}, Lr4/h;->a(Lr4/k;I)V

    iget-object p0, p0, Lr4/c;->r:[[D

    aget-object p0, p0, p1

    aget-wide p0, p0, p2

    return-wide p0
.end method

.method public final e(IID)V
    .locals 0

    invoke-static {p0, p1}, Lr4/h;->b(Lr4/k;I)V

    invoke-static {p0, p2}, Lr4/h;->a(Lr4/k;I)V

    iget-object p0, p0, Lr4/c;->r:[[D

    aget-object p0, p0, p1

    aput-wide p3, p0, p2

    return-void
.end method

.method public final getData()[[D
    .locals 7

    invoke-virtual {p0}, Lr4/c;->c()I

    move-result v0

    invoke-virtual {p0}, Lr4/c;->a()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lr4/c;->r:[[D

    aget-object v4, v4, v3

    aget-object v5, v1, v3

    array-length v6, v4

    invoke-static {v4, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final j(II)Lr4/k;
    .locals 0

    new-instance p0, Lr4/c;

    invoke-direct {p0, p1, p2}, Lr4/c;-><init>(II)V

    return-object p0
.end method

.method public final q(Lr4/a;III)V
    .locals 5

    invoke-static {p0, p2, p3, p4}, Lr4/h;->c(Lr4/k;III)V

    invoke-virtual {p0}, Lr4/c;->c()I

    invoke-virtual {p0}, Lr4/c;->a()I

    invoke-virtual {p1, p3}, Lr4/a;->l(I)V

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p2, :cond_1

    iget-object v1, p0, Lr4/c;->r:[[D

    aget-object v1, v1, v0

    move v2, p3

    :goto_1
    if-gt v2, p4, :cond_0

    aget-wide v3, v1, v2

    invoke-virtual {p1, v0, v2, v3, v4}, Lr4/a;->m(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final r(Lr4/b$a;)V
    .locals 8

    invoke-virtual {p0}, Lr4/c;->c()I

    move-result v0

    invoke-virtual {p0}, Lr4/c;->a()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Lr4/c;->r:[[D

    aget-object v4, v4, v3

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_0

    aget-wide v6, v4, v5

    invoke-virtual {p1, v3, v5, v6, v7}, Lr4/b$a;->l(IID)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final s([[D)V
    .locals 7

    iget-object v0, p0, Lr4/c;->r:[[D

    sget-object v1, Lq4/c;->r:Lq4/c;

    sget-object v2, Lq4/c;->x:Lq4/c;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    array-length v0, p1

    if-eqz v0, :cond_2

    aget-object v0, p1, v4

    array-length v0, v0

    if-eqz v0, :cond_1

    array-length v1, p1

    filled-new-array {v1, v0}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lr4/c;->r:[[D

    move v1, v4

    :goto_0
    iget-object v2, p0, Lr4/c;->r:[[D

    array-length v3, v2

    if-ge v1, v3, :cond_8

    aget-object v3, p1, v1

    array-length v5, v3

    if-ne v5, v0, :cond_0

    aget-object v2, v2, v1

    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lp4/b;

    aget-object p1, p1, v1

    array-length p1, p1

    invoke-direct {p0, p1, v0}, Lp4/b;-><init>(II)V

    throw p0

    :cond_1
    new-instance p0, Lp4/i;

    invoke-direct {p0, v1}, Lp4/i;-><init>(Lq4/c;)V

    throw p0

    :cond_2
    new-instance p0, Lp4/i;

    invoke-direct {p0, v2}, Lp4/i;-><init>(Lq4/c;)V

    throw p0

    :cond_3
    new-instance p0, Lp4/i;

    invoke-direct {p0, v3}, Lp4/i;-><init>(I)V

    throw p0

    :cond_4
    if-eqz p1, :cond_b

    array-length v0, p1

    if-eqz v0, :cond_a

    aget-object v2, p1, v4

    array-length v2, v2

    if-eqz v2, :cond_9

    :goto_1
    if-ge v3, v0, :cond_6

    aget-object v1, p1, v3

    array-length v1, v1

    if-ne v1, v2, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    new-instance p0, Lp4/b;

    aget-object p1, p1, v3

    array-length p1, p1

    invoke-direct {p0, v2, p1}, Lp4/b;-><init>(II)V

    throw p0

    :cond_6
    invoke-static {p0, v4}, Lr4/h;->b(Lr4/k;I)V

    invoke-static {p0, v4}, Lr4/h;->a(Lr4/k;I)V

    add-int/lit8 v1, v0, -0x1

    invoke-static {p0, v1}, Lr4/h;->b(Lr4/k;I)V

    add-int/lit8 v1, v2, -0x1

    invoke-static {p0, v1}, Lr4/h;->a(Lr4/k;I)V

    move v1, v4

    :goto_2
    if-ge v1, v0, :cond_8

    move v3, v4

    :goto_3
    if-ge v3, v2, :cond_7

    aget-object v5, p1, v1

    aget-wide v5, v5, v3

    invoke-virtual {p0, v1, v3, v5, v6}, Lr4/c;->e(IID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    return-void

    :cond_9
    new-instance p0, Lp4/i;

    invoke-direct {p0, v1}, Lp4/i;-><init>(Lq4/c;)V

    throw p0

    :cond_a
    new-instance p0, Lp4/i;

    invoke-direct {p0, v2}, Lp4/i;-><init>(Lq4/c;)V

    throw p0

    :cond_b
    new-instance p0, Lp4/i;

    invoke-direct {p0, v3}, Lp4/i;-><init>(I)V

    throw p0
.end method
