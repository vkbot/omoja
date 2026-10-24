.class public final Ly4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lr4/c;

.field public b:Lr4/d;

.field public c:Z

.field public d:Lr4/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ly4/a;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ly4/a;->d:Lr4/j;

    return-void
.end method


# virtual methods
.method public final a()[D
    .locals 15

    iget-object v0, p0, Ly4/a;->d:Lr4/j;

    iget-object v1, v0, Lr4/j;->a:[[D

    iget-object v2, v0, Lr4/j;->b:[D

    iget-object p0, p0, Ly4/a;->b:Lr4/d;

    array-length v3, v1

    const/4 v4, 0x0

    aget-object v5, v1, v4

    array-length v5, v5

    iget-object v6, p0, Lr4/d;->c:[D

    array-length v6, v6

    if-ne v6, v5, :cond_8

    array-length v6, v2

    move v7, v4

    :goto_0
    if-ge v7, v6, :cond_1

    aget-wide v8, v2, v7

    invoke-static {v8, v9}, Lz4/b;->a(D)D

    move-result-wide v8

    iget-wide v10, v0, Lr4/j;->c:D

    cmpg-double v8, v8, v10

    if-lez v8, :cond_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lr4/o;

    invoke-direct {p0}, Lr4/o;-><init>()V

    throw p0

    :cond_1
    new-array v0, v3, [D

    iget-object p0, p0, Lr4/d;->c:[D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    move v6, v4

    :goto_1
    sget-object v7, Lz4/b;->a:[[D

    if-gt v5, v3, :cond_2

    move v7, v5

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    if-ge v6, v7, :cond_5

    aget-object v7, v1, v6

    const-wide/16 v8, 0x0

    move v10, v6

    :goto_3
    if-ge v10, v5, :cond_3

    aget-wide v11, p0, v10

    aget-wide v13, v7, v10

    mul-double/2addr v11, v13

    add-double/2addr v8, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    aget-wide v10, v2, v6

    aget-wide v12, v7, v6

    mul-double/2addr v10, v12

    div-double/2addr v8, v10

    move v10, v6

    :goto_4
    if-ge v10, v5, :cond_4

    aget-wide v11, p0, v10

    aget-wide v13, v7, v10

    mul-double/2addr v13, v8

    add-double/2addr v13, v11

    aput-wide v13, p0, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    :goto_5
    if-ltz v3, :cond_7

    aget-wide v5, p0, v3

    aget-wide v7, v2, v3

    div-double/2addr v5, v7

    aput-wide v5, p0, v3

    aget-object v7, v1, v3

    aput-wide v5, v0, v3

    move v8, v4

    :goto_6
    if-ge v8, v3, :cond_6

    aget-wide v9, p0, v8

    aget-wide v11, v7, v8

    mul-double/2addr v11, v5

    sub-double/2addr v9, v11

    aput-wide v9, p0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    :cond_7
    new-instance p0, Lr4/d;

    invoke-direct {p0}, Lr4/m;-><init>()V

    iput-object v0, p0, Lr4/d;->c:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0

    :cond_8
    new-instance v0, Lp4/b;

    iget-object p0, p0, Lr4/d;->c:[D

    array-length p0, p0

    invoke-direct {v0, p0, v5}, Lp4/b;-><init>(II)V

    throw v0
.end method

.method public final b([D[[D)V
    .locals 8

    array-length v0, p2

    array-length v1, p1

    if-ne v0, v1, :cond_7

    array-length v0, p2

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    aget-object v0, p2, v1

    array-length v0, v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    array-length v3, p2

    if-gt v0, v3, :cond_5

    array-length v0, p1

    if-eqz v0, :cond_4

    new-instance v0, Lr4/d;

    invoke-direct {v0}, Lr4/m;-><init>()V

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, v0, Lr4/d;->c:[D

    iput-object v0, p0, Ly4/a;->b:Lr4/d;

    array-length p1, p2

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Ly4/a;->c:Z

    if-eqz p1, :cond_0

    new-instance p1, Lr4/c;

    invoke-direct {p1, p2, v2}, Lr4/c;-><init>([[DZ)V

    iput-object p1, p0, Ly4/a;->a:Lr4/c;

    goto :goto_1

    :cond_0
    aget-object p1, p2, v1

    array-length p1, p1

    array-length v0, p2

    add-int/lit8 v3, p1, 0x1

    filled-new-array {v0, v3}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v3, v1

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_2

    aget-object v4, p2, v3

    array-length v5, v4

    if-ne v5, p1, :cond_1

    aget-object v5, v0, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v5, v1

    invoke-static {v4, v1, v5, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lp4/b;

    aget-object p2, p2, v3

    array-length p2, p2

    invoke-direct {p0, p2, p1}, Lp4/b;-><init>(II)V

    throw p0

    :cond_2
    new-instance p1, Lr4/c;

    invoke-direct {p1, v0, v1}, Lr4/c;-><init>([[DZ)V

    iput-object p1, p0, Ly4/a;->a:Lr4/c;

    :goto_1
    new-instance p1, Lr4/j;

    iget-object p2, p0, Ly4/a;->a:Lr4/c;

    const-wide/16 v0, 0x0

    invoke-direct {p1, p2, v0, v1}, Lr4/j;-><init>(Lr4/c;D)V

    iput-object p1, p0, Ly4/a;->d:Lr4/j;

    return-void

    :cond_3
    new-instance p0, Lp4/i;

    invoke-direct {p0, v1}, Lp4/i;-><init>(I)V

    throw p0

    :cond_4
    new-instance p0, Lp4/i;

    invoke-direct {p0, v1}, Lp4/i;-><init>(I)V

    throw p0

    :cond_5
    new-instance p0, Lp4/d;

    sget-object p1, Lq4/c;->s1:Lq4/c;

    array-length v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aget-object p2, p2, v1

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lp4/d;-><init>(Lq4/c;[Ljava/lang/Object;)V

    throw p0

    :cond_6
    new-instance p0, Lp4/i;

    invoke-direct {p0, v1}, Lp4/i;-><init>(I)V

    throw p0

    :cond_7
    new-instance p0, Lp4/b;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {p0, p1, p2}, Lp4/b;-><init>(II)V

    throw p0
.end method
