.class public final Lr4/f;
.super Lr4/b;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final r:[D


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p1}, Lr4/b;-><init>(II)V

    .line 2
    new-array p1, p1, [D

    iput-object p1, p0, Lr4/f;->r:[D

    return-void
.end method

.method public constructor <init>([D)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lr4/b;-><init>()V

    iput-object p1, p0, Lr4/f;->r:[D

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lr4/f;->r:[D

    array-length p0, p0

    return p0
.end method

.method public final c()I
    .locals 0

    iget-object p0, p0, Lr4/f;->r:[D

    array-length p0, p0

    return p0
.end method

.method public final d(II)D
    .locals 0

    invoke-static {p0, p1}, Lr4/h;->b(Lr4/k;I)V

    invoke-static {p0, p2}, Lr4/h;->a(Lr4/k;I)V

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lr4/f;->r:[D

    aget-wide p0, p0, p1

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method

.method public final e(IID)V
    .locals 0

    if-ne p1, p2, :cond_0

    invoke-static {p0, p1}, Lr4/h;->b(Lr4/k;I)V

    iget-object p0, p0, Lr4/f;->r:[D

    aput-wide p3, p0, p1

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    invoke-static {p0, p1, p3, p4}, Lz4/d;->b(DD)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance p0, Lp4/l;

    invoke-static {p3, p4}, Lz4/b;->a(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lp4/l;-><init>(Ljava/lang/Double;Ljava/lang/Number;)V

    throw p0
.end method

.method public final getData()[[D
    .locals 6

    iget-object p0, p0, Lr4/f;->r:[D

    array-length v0, p0

    filled-new-array {v0, v0}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    aget-wide v4, p0, v2

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final j(II)Lr4/k;
    .locals 0

    if-ne p1, p2, :cond_0

    new-instance p0, Lr4/f;

    invoke-direct {p0, p1}, Lr4/f;-><init>(I)V

    return-object p0

    :cond_0
    new-instance p0, Lp4/b;

    invoke-direct {p0, p1, p2}, Lp4/b;-><init>(II)V

    throw p0
.end method
