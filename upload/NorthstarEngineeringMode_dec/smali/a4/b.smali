.class public final La4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La4/b$b;,
        La4/b$g;,
        La4/b$d;,
        La4/b$k;,
        La4/b$e;,
        La4/b$l;,
        La4/b$j;,
        La4/b$c;,
        La4/b$a;,
        La4/b$h;,
        La4/b$f;,
        La4/b$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "TK;>;V::",
        "Ljava/lang/Comparable<",
        "TV;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Map;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public transient Z:La4/b$h;

.field public transient b1:La4/b$a;

.field public final transient c:[La4/b$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "La4/b$g<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public transient c1:La4/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La4/b<",
            "TK;TV;>.b;"
        }
    .end annotation
.end field

.field public transient r:I

.field public transient x:I

.field public transient y:La4/b$f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, La4/b;->r:I

    iput v0, p0, La4/b;->x:I

    const/4 v0, 0x0

    iput-object v0, p0, La4/b;->c1:La4/b$b;

    const/4 v0, 0x2

    new-array v0, v0, [La4/b$g;

    iput-object v0, p0, La4/b;->c:[La4/b$g;

    return-void
.end method

.method public static a(Ljava/lang/Object;I)V
    .locals 1

    if-eqz p0, :cond_1

    instance-of p0, p0, Ljava/lang/Comparable;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-static {p1}, La4/a;->q(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " must be Comparable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, La4/a;->q(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " cannot be null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j(La4/b$g;I)La4/b$g;
    .locals 0

    invoke-static {p0, p1}, La4/b;->p(La4/b$g;I)La4/b$g;

    move-result-object p0

    invoke-static {p0, p1}, La4/b;->p(La4/b$g;I)La4/b$g;

    move-result-object p0

    return-object p0
.end method

.method public static m(La4/b$g;I)La4/b$g;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    iget-object p0, p0, La4/b$g;->x:[La4/b$g;

    aget-object v0, p0, p1

    :goto_0
    return-object v0

    :cond_1
    throw v0
.end method

.method public static p(La4/b$g;I)La4/b$g;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    iget-object p0, p0, La4/b$g;->Z:[La4/b$g;

    aget-object v0, p0, p1

    :goto_0
    return-object v0

    :cond_1
    throw v0
.end method

.method public static q(La4/b$g;I)La4/b$g;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    iget-object p0, p0, La4/b$g;->y:[La4/b$g;

    aget-object v0, p0, p1

    :goto_0
    return-object v0

    :cond_1
    throw v0
.end method

.method public static r(La4/b$g;I)La4/b$g;
    .locals 3

    if-eqz p0, :cond_2

    :goto_0
    iget-object v0, p0, La4/b$g;->y:[La4/b$g;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    add-int/lit8 v2, p1, -0x1

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    throw v1

    :cond_1
    throw v1

    :cond_2
    return-object p0
.end method

.method public static t(La4/b$g;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La4/b$g<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    sub-int/2addr p1, v0

    iget-object p0, p0, La4/b$g;->b1:[Z

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static u(La4/b$g;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La4/b$g<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iget-object p0, p0, La4/b$g;->b1:[Z

    aget-boolean p0, p0, p1

    xor-int/2addr p0, v0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static w(La4/b$g;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La4/b$g<",
            "**>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iget-object p0, p0, La4/b$g;->b1:[Z

    aput-boolean v0, p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static x(La4/b$g;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La4/b$g<",
            "**>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    iget-object p0, p0, La4/b$g;->b1:[Z

    aput-boolean v0, p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static y(La4/b$g;I)La4/b$g;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_9

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, La4/b$g;->y:[La4/b$g;

    aget-object v2, v2, v1

    if-eqz v2, :cond_4

    if-eqz p1, :cond_3

    if-eqz v2, :cond_2

    :goto_0
    invoke-static {v2, p1}, La4/b$g;->a(La4/b$g;I)La4/b$g;

    move-result-object p0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    iget-object p0, v2, La4/b$g;->x:[La4/b$g;

    aget-object v2, p0, v1

    goto :goto_0

    :cond_1
    throw v0

    :cond_2
    move-object v0, v2

    goto :goto_2

    :cond_3
    throw v0

    :cond_4
    if-eqz p1, :cond_8

    iget-object v2, p0, La4/b$g;->Z:[La4/b$g;

    aget-object v2, v2, v1

    :goto_1
    move-object v4, v2

    move-object v2, p0

    move-object p0, v4

    if-eqz p0, :cond_7

    if-eqz p1, :cond_6

    iget-object v3, p0, La4/b$g;->y:[La4/b$g;

    aget-object v3, v3, v1

    if-ne v2, v3, :cond_7

    if-eqz p1, :cond_5

    iget-object v2, p0, La4/b$g;->Z:[La4/b$g;

    aget-object v2, v2, v1

    goto :goto_1

    :cond_5
    throw v0

    :cond_6
    throw v0

    :cond_7
    move-object v0, p0

    :goto_2
    return-object v0

    :cond_8
    throw v0

    :cond_9
    throw v0
.end method


# virtual methods
.method public final A(La4/b$g;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La4/b$g<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p1, La4/b$g;->x:[La4/b$g;

    const/4 v1, 0x0

    if-eqz p2, :cond_13

    add-int/lit8 v2, p2, -0x1

    aget-object v3, v0, v2

    iget-object v4, v3, La4/b$g;->y:[La4/b$g;

    if-eqz p2, :cond_12

    aget-object v5, v4, v2

    if-eqz p2, :cond_11

    aput-object v5, v0, v2

    if-eqz p2, :cond_10

    aget-object v0, v4, v2

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-static {v0, p1, p2}, La4/b$g;->c(La4/b$g;La4/b$g;I)V

    goto :goto_0

    :cond_0
    throw v1

    :cond_1
    :goto_0
    if-eqz p2, :cond_f

    iget-object v0, p1, La4/b$g;->Z:[La4/b$g;

    aget-object v5, v0, v2

    if-eqz p2, :cond_e

    iget-object v6, v3, La4/b$g;->Z:[La4/b$g;

    aput-object v5, v6, v2

    if-eqz p2, :cond_d

    aget-object v5, v0, v2

    if-nez v5, :cond_3

    iget-object p0, p0, La4/b;->c:[La4/b$g;

    if-eqz p2, :cond_2

    aput-object v3, p0, v2

    goto :goto_1

    :cond_2
    throw v1

    :cond_3
    if-eqz p2, :cond_c

    iget-object p0, v5, La4/b$g;->y:[La4/b$g;

    if-eqz p2, :cond_b

    aget-object v6, p0, v2

    if-ne v6, p1, :cond_6

    if-eqz p2, :cond_5

    if-eqz p2, :cond_4

    aput-object v3, p0, v2

    goto :goto_1

    :cond_4
    throw v1

    :cond_5
    throw v1

    :cond_6
    if-eqz p2, :cond_a

    iget-object p0, v5, La4/b$g;->x:[La4/b$g;

    if-eqz p2, :cond_9

    aput-object v3, p0, v2

    :goto_1
    if-eqz p2, :cond_8

    aput-object p1, v4, v2

    if-eqz p2, :cond_7

    aput-object v3, v0, v2

    return-void

    :cond_7
    throw v1

    :cond_8
    throw v1

    :cond_9
    throw v1

    :cond_a
    throw v1

    :cond_b
    throw v1

    :cond_c
    throw v1

    :cond_d
    throw v1

    :cond_e
    throw v1

    :cond_f
    throw v1

    :cond_10
    throw v1

    :cond_11
    throw v1

    :cond_12
    throw v1

    :cond_13
    throw v1
.end method

.method public final b(Ljava/lang/Object;I)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    iget v3, p0, La4/b;->r:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    if-lez v3, :cond_4

    :try_start_0
    invoke-virtual {p0, p2}, La4/b;->n(I)Lz3/c;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0}, Lz3/c;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_3

    :catch_0
    return v2

    :cond_4
    return v0
.end method

.method public final c(I)I
    .locals 2

    iget v0, p0, La4/b;->r:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, La4/b;->n(I)Lz3/c;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Lz3/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/2addr p1, v0

    add-int/2addr v1, p1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final clear()V
    .locals 3

    iget v0, p0, La4/b;->x:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, La4/b;->x:I

    const/4 v0, 0x0

    iput v0, p0, La4/b;->r:I

    iget-object p0, p0, La4/b;->c:[La4/b$g;

    const/4 v2, 0x0

    aput-object v2, p0, v0

    aput-object v2, p0, v1

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, La4/b;->a(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, v0}, La4/b;->v(Ljava/lang/Object;I)La4/b$g;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x2

    invoke-static {p1, v0}, La4/b;->a(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, v0}, La4/b;->v(Ljava/lang/Object;I)La4/b$g;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, v0}, La4/b;->a(Ljava/lang/Object;I)V

    const/4 v1, 0x2

    invoke-static {p2, v1}, La4/b;->a(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, v0}, La4/b;->v(Ljava/lang/Object;I)La4/b$g;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, La4/b;->e(La4/b$g;)V

    :goto_0
    invoke-virtual {p0, p2}, La4/b;->h(Ljava/lang/Object;)Ljava/lang/Comparable;

    iget-object v1, p0, La4/b;->c:[La4/b$g;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-nez v3, :cond_1

    new-instance v3, La4/b$g;

    invoke-direct {v3, p1, p2}, La4/b$g;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    aput-object v3, v1, v2

    aput-object v3, v1, v0

    iget p1, p0, La4/b;->x:I

    add-int/2addr p1, v0

    iput p1, p0, La4/b;->x:I

    iget p1, p0, La4/b;->r:I

    add-int/2addr p1, v0

    iput p1, p0, La4/b;->r:I

    goto :goto_3

    :cond_1
    :goto_1
    iget-object v1, v3, La4/b$g;->c:Ljava/lang/Comparable;

    invoke-interface {p1, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_5

    if-gez v1, :cond_3

    iget-object v1, v3, La4/b$g;->x:[La4/b$g;

    aget-object v4, v1, v2

    if-eqz v4, :cond_2

    :goto_2
    move-object v3, v4

    goto :goto_1

    :cond_2
    new-instance v4, La4/b$g;

    invoke-direct {v4, p1, p2}, La4/b$g;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p0, v4}, La4/b;->s(La4/b$g;)V

    aput-object v4, v1, v2

    iget-object p1, v4, La4/b$g;->Z:[La4/b$g;

    aput-object v3, p1, v2

    invoke-virtual {p0, v4, v0}, La4/b;->g(La4/b$g;I)V

    iget p1, p0, La4/b;->x:I

    add-int/2addr p1, v0

    iput p1, p0, La4/b;->x:I

    iget p1, p0, La4/b;->r:I

    add-int/2addr p1, v0

    iput p1, p0, La4/b;->r:I

    goto :goto_3

    :cond_3
    iget-object v1, v3, La4/b$g;->y:[La4/b$g;

    aget-object v4, v1, v2

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance v4, La4/b$g;

    invoke-direct {v4, p1, p2}, La4/b$g;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p0, v4}, La4/b;->s(La4/b$g;)V

    aput-object v4, v1, v2

    iget-object p1, v4, La4/b$g;->Z:[La4/b$g;

    aput-object v3, p1, v2

    invoke-virtual {p0, v4, v0}, La4/b;->g(La4/b$g;I)V

    iget p1, p0, La4/b;->x:I

    add-int/2addr p1, v0

    iput p1, p0, La4/b;->x:I

    iget p1, p0, La4/b;->r:I

    add-int/2addr p1, v0

    iput p1, p0, La4/b;->r:I

    :goto_3
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot store a duplicate key (\""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\") in this Map"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(La4/b$g;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La4/b$g<",
            "TK;TV;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    invoke-static {v2}, Lb0/c;->b(I)[I

    move-result-object v2

    array-length v3, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1f

    aget v7, v2, v5

    iget-object v8, v1, La4/b$g;->x:[La4/b$g;

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v9

    aget-object v8, v8, v9

    iget-object v9, v0, La4/b;->c:[La4/b$g;

    iget-object v10, v1, La4/b$g;->x:[La4/b$g;

    iget-object v11, v1, La4/b$g;->y:[La4/b$g;

    iget-object v12, v1, La4/b$g;->Z:[La4/b$g;

    if-eqz v8, :cond_11

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v8

    aget-object v8, v11, v8

    if-eqz v8, :cond_11

    invoke-static {v1, v7}, La4/b;->y(La4/b$g;I)La4/b$g;

    move-result-object v8

    iget-object v13, v8, La4/b$g;->Z:[La4/b$g;

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v14

    aget-object v13, v13, v14

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v14

    iget-object v15, v8, La4/b$g;->x:[La4/b$g;

    aget-object v14, v15, v14

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v16

    iget-object v4, v8, La4/b$g;->y:[La4/b$g;

    aget-object v16, v4, v16

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v17

    aget-object v6, v12, v17

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v17

    aget-object v17, v10, v17

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v19

    aget-object v19, v11, v19

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v20

    move-object/from16 v21, v2

    iget-object v2, v8, La4/b$g;->Z:[La4/b$g;

    aget-object v20, v2, v20

    if-eqz v20, :cond_0

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v20

    move/from16 v22, v3

    aget-object v3, v2, v20

    invoke-static {v3, v7}, La4/b$g;->a(La4/b$g;I)La4/b$g;

    move-result-object v3

    if-ne v8, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move/from16 v22, v3

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v20

    aget-object v20, v12, v20

    if-eqz v20, :cond_2

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v20

    move/from16 v23, v5

    aget-object v5, v12, v20

    invoke-static {v5, v7}, La4/b$g;->a(La4/b$g;I)La4/b$g;

    move-result-object v5

    if-ne v1, v5, :cond_3

    const/16 v18, 0x1

    goto :goto_2

    :cond_2
    move/from16 v23, v5

    :cond_3
    const/16 v18, 0x0

    :goto_2
    if-ne v8, v6, :cond_5

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v5

    aput-object v1, v2, v5

    if-eqz v18, :cond_4

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aput-object v8, v10, v2

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aput-object v16, v11, v2

    goto :goto_4

    :cond_4
    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aput-object v8, v11, v2

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aput-object v14, v10, v2

    goto :goto_4

    :cond_5
    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v5

    aput-object v6, v2, v5

    if-eqz v6, :cond_7

    if-eqz v18, :cond_6

    iget-object v2, v6, La4/b$g;->x:[La4/b$g;

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v5

    aput-object v8, v2, v5

    goto :goto_3

    :cond_6
    iget-object v2, v6, La4/b$g;->y:[La4/b$g;

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v5

    aput-object v8, v2, v5

    :cond_7
    :goto_3
    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aput-object v14, v10, v2

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aput-object v16, v11, v2

    :goto_4
    if-ne v1, v13, :cond_9

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aput-object v8, v12, v2

    if-eqz v3, :cond_8

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aput-object v1, v15, v2

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aput-object v19, v4, v2

    goto :goto_6

    :cond_8
    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aput-object v1, v4, v2

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aput-object v17, v15, v2

    goto :goto_6

    :cond_9
    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aput-object v13, v12, v2

    if-eqz v13, :cond_b

    if-eqz v3, :cond_a

    iget-object v2, v13, La4/b$g;->x:[La4/b$g;

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v3

    aput-object v1, v2, v3

    goto :goto_5

    :cond_a
    iget-object v2, v13, La4/b$g;->y:[La4/b$g;

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v3

    aput-object v1, v2, v3

    :cond_b
    :goto_5
    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aput-object v17, v15, v2

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aput-object v19, v4, v2

    :goto_6
    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aget-object v2, v15, v2

    if-eqz v2, :cond_c

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aget-object v2, v15, v2

    invoke-static {v2, v8, v7}, La4/b$g;->c(La4/b$g;La4/b$g;I)V

    :cond_c
    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aget-object v2, v4, v2

    if-eqz v2, :cond_d

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aget-object v2, v4, v2

    invoke-static {v2, v8, v7}, La4/b$g;->c(La4/b$g;La4/b$g;I)V

    :cond_d
    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aget-object v2, v10, v2

    if-eqz v2, :cond_e

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aget-object v2, v10, v2

    invoke-static {v2, v1, v7}, La4/b$g;->c(La4/b$g;La4/b$g;I)V

    :cond_e
    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aget-object v2, v11, v2

    if-eqz v2, :cond_f

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aget-object v2, v11, v2

    invoke-static {v2, v1, v7}, La4/b$g;->c(La4/b$g;La4/b$g;I)V

    :cond_f
    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    iget-object v3, v8, La4/b$g;->b1:[Z

    aget-boolean v4, v3, v2

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v5

    iget-object v6, v1, La4/b$g;->b1:[Z

    aget-boolean v5, v6, v5

    xor-int/2addr v4, v5

    aput-boolean v4, v3, v2

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aget-boolean v4, v6, v2

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v5

    aget-boolean v5, v3, v5

    xor-int/2addr v4, v5

    aput-boolean v4, v6, v2

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aget-boolean v4, v3, v2

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v5

    aget-boolean v5, v6, v5

    xor-int/2addr v4, v5

    aput-boolean v4, v3, v2

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aget-object v2, v9, v2

    if-ne v2, v8, :cond_10

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aput-object v1, v9, v2

    goto :goto_7

    :cond_10
    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aget-object v2, v9, v2

    if-ne v2, v1, :cond_12

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aput-object v8, v9, v2

    goto :goto_7

    :cond_11
    move-object/from16 v21, v2

    move/from16 v22, v3

    move/from16 v23, v5

    :cond_12
    :goto_7
    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aget-object v2, v10, v2

    if-eqz v2, :cond_13

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aget-object v2, v10, v2

    goto :goto_8

    :cond_13
    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aget-object v2, v11, v2

    :goto_8
    const/4 v3, 0x0

    if-eqz v2, :cond_18

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v4

    aget-object v4, v12, v4

    iget-object v5, v2, La4/b$g;->Z:[La4/b$g;

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v6

    aput-object v4, v5, v6

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v4

    aget-object v4, v12, v4

    if-nez v4, :cond_14

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v4

    aput-object v2, v9, v4

    goto :goto_9

    :cond_14
    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v4

    aget-object v4, v12, v4

    invoke-static {v4, v7}, La4/b$g;->a(La4/b$g;I)La4/b$g;

    move-result-object v4

    if-ne v1, v4, :cond_16

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v4

    aget-object v4, v12, v4

    iget-object v4, v4, La4/b$g;->x:[La4/b$g;

    if-eqz v7, :cond_15

    add-int/lit8 v5, v7, -0x1

    aput-object v2, v4, v5

    goto :goto_9

    :cond_15
    throw v3

    :cond_16
    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v4

    aget-object v4, v12, v4

    iget-object v4, v4, La4/b$g;->y:[La4/b$g;

    if-eqz v7, :cond_17

    add-int/lit8 v5, v7, -0x1

    aput-object v2, v4, v5

    :goto_9
    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v4

    aput-object v3, v10, v4

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v4

    aput-object v3, v11, v4

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v4

    aput-object v3, v12, v4

    invoke-static {v1, v7}, La4/b;->t(La4/b$g;I)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v0, v2, v7}, La4/b;->f(La4/b$g;I)V

    goto :goto_b

    :cond_17
    throw v3

    :cond_18
    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aget-object v2, v12, v2

    if-nez v2, :cond_19

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aput-object v3, v9, v2

    goto :goto_b

    :cond_19
    invoke-static {v1, v7}, La4/b;->t(La4/b$g;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v0, v1, v7}, La4/b;->f(La4/b$g;I)V

    :cond_1a
    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aget-object v2, v12, v2

    if-eqz v2, :cond_1e

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aget-object v2, v12, v2

    invoke-static {v2, v7}, La4/b$g;->a(La4/b$g;I)La4/b$g;

    move-result-object v2

    if-ne v1, v2, :cond_1c

    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aget-object v2, v12, v2

    iget-object v2, v2, La4/b$g;->x:[La4/b$g;

    if-eqz v7, :cond_1b

    add-int/lit8 v4, v7, -0x1

    aput-object v3, v2, v4

    goto :goto_a

    :cond_1b
    throw v3

    :cond_1c
    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aget-object v2, v12, v2

    iget-object v2, v2, La4/b$g;->y:[La4/b$g;

    if-eqz v7, :cond_1d

    add-int/lit8 v4, v7, -0x1

    aput-object v3, v2, v4

    :goto_a
    invoke-static {v7}, Lb0/c;->a(I)I

    move-result v2

    aput-object v3, v12, v2

    goto :goto_b

    :cond_1d
    throw v3

    :cond_1e
    :goto_b
    add-int/lit8 v5, v23, 0x1

    move-object/from16 v2, v21

    move/from16 v3, v22

    goto/16 :goto_0

    :cond_1f
    iget v1, v0, La4/b;->x:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, La4/b;->x:I

    iget v1, v0, La4/b;->r:I

    sub-int/2addr v1, v2

    iput v1, v0, La4/b;->r:I

    return-void
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, La4/b;->b1:La4/b$a;

    if-nez v0, :cond_0

    new-instance v0, La4/b$a;

    invoke-direct {v0, p0}, La4/b$a;-><init>(La4/b;)V

    iput-object v0, p0, La4/b;->b1:La4/b$a;

    :cond_0
    iget-object p0, p0, La4/b;->b1:La4/b$a;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, La4/b;->b(Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public final f(La4/b$g;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La4/b$g<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_14

    add-int/lit8 v1, p2, -0x1

    iget-object v2, p0, La4/b;->c:[La4/b$g;

    aget-object v3, v2, v1

    if-eq p1, v3, :cond_13

    invoke-static {p1, p2}, La4/b;->t(La4/b$g;I)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-static {p1, p2}, La4/b$g;->b(La4/b$g;I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    invoke-static {p1, p2}, La4/b;->p(La4/b$g;I)La4/b$g;

    move-result-object v3

    invoke-static {v3, p2}, La4/b;->q(La4/b$g;I)La4/b$g;

    move-result-object v3

    invoke-static {v3, p2}, La4/b;->u(La4/b$g;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v3, p2}, La4/b;->w(La4/b$g;I)V

    invoke-static {p1, p2}, La4/b;->p(La4/b$g;I)La4/b$g;

    move-result-object v3

    invoke-static {v3, p2}, La4/b;->x(La4/b$g;I)V

    invoke-static {p1, p2}, La4/b;->p(La4/b$g;I)La4/b$g;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, La4/b;->z(La4/b$g;I)V

    invoke-static {p1, p2}, La4/b;->p(La4/b$g;I)La4/b$g;

    move-result-object v3

    invoke-static {v3, p2}, La4/b;->q(La4/b$g;I)La4/b$g;

    move-result-object v3

    :cond_0
    invoke-static {v3, p2}, La4/b;->m(La4/b$g;I)La4/b$g;

    move-result-object v5

    invoke-static {v5, p2}, La4/b;->t(La4/b$g;I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v3, p2}, La4/b;->q(La4/b$g;I)La4/b$g;

    move-result-object v5

    invoke-static {v5, p2}, La4/b;->t(La4/b$g;I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v3, p2}, La4/b;->x(La4/b$g;I)V

    invoke-static {p1, p2}, La4/b;->p(La4/b$g;I)La4/b$g;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {v3, p2}, La4/b;->q(La4/b$g;I)La4/b$g;

    move-result-object v5

    invoke-static {v5, p2}, La4/b;->t(La4/b$g;I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v3, p2}, La4/b;->m(La4/b$g;I)La4/b$g;

    move-result-object v5

    invoke-static {v5, p2}, La4/b;->w(La4/b$g;I)V

    invoke-static {v3, p2}, La4/b;->x(La4/b$g;I)V

    invoke-virtual {p0, v3, p2}, La4/b;->A(La4/b$g;I)V

    invoke-static {p1, p2}, La4/b;->p(La4/b$g;I)La4/b$g;

    move-result-object v3

    invoke-static {v3, p2}, La4/b;->q(La4/b$g;I)La4/b$g;

    move-result-object v3

    :cond_2
    invoke-static {p1, p2}, La4/b;->p(La4/b$g;I)La4/b$g;

    move-result-object v5

    if-eqz v3, :cond_7

    iget-object v6, v3, La4/b$g;->b1:[Z

    if-nez v5, :cond_4

    if-eqz p2, :cond_3

    aput-boolean v4, v6, v1

    goto :goto_1

    :cond_3
    throw v0

    :cond_4
    if-eqz p2, :cond_6

    if-eqz p2, :cond_5

    iget-object v4, v5, La4/b$g;->b1:[Z

    aget-boolean v4, v4, v1

    aput-boolean v4, v6, v1

    goto :goto_1

    :cond_5
    throw v0

    :cond_6
    throw v0

    :cond_7
    :goto_1
    invoke-static {p1, p2}, La4/b;->p(La4/b$g;I)La4/b$g;

    move-result-object v4

    invoke-static {v4, p2}, La4/b;->w(La4/b$g;I)V

    invoke-static {v3, p2}, La4/b;->q(La4/b$g;I)La4/b$g;

    move-result-object v3

    invoke-static {v3, p2}, La4/b;->w(La4/b$g;I)V

    invoke-static {p1, p2}, La4/b;->p(La4/b$g;I)La4/b$g;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, La4/b;->z(La4/b$g;I)V

    if-eqz p2, :cond_8

    aget-object p1, v2, v1

    goto/16 :goto_0

    :cond_8
    throw v0

    :cond_9
    invoke-static {p1, p2}, La4/b;->p(La4/b$g;I)La4/b$g;

    move-result-object v3

    invoke-static {v3, p2}, La4/b;->m(La4/b$g;I)La4/b$g;

    move-result-object v3

    invoke-static {v3, p2}, La4/b;->u(La4/b$g;I)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {v3, p2}, La4/b;->w(La4/b$g;I)V

    invoke-static {p1, p2}, La4/b;->p(La4/b$g;I)La4/b$g;

    move-result-object v3

    invoke-static {v3, p2}, La4/b;->x(La4/b$g;I)V

    invoke-static {p1, p2}, La4/b;->p(La4/b$g;I)La4/b$g;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, La4/b;->A(La4/b$g;I)V

    invoke-static {p1, p2}, La4/b;->p(La4/b$g;I)La4/b$g;

    move-result-object v3

    invoke-static {v3, p2}, La4/b;->m(La4/b$g;I)La4/b$g;

    move-result-object v3

    :cond_a
    invoke-static {v3, p2}, La4/b;->q(La4/b$g;I)La4/b$g;

    move-result-object v5

    invoke-static {v5, p2}, La4/b;->t(La4/b$g;I)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {v3, p2}, La4/b;->m(La4/b$g;I)La4/b$g;

    move-result-object v5

    invoke-static {v5, p2}, La4/b;->t(La4/b$g;I)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {v3, p2}, La4/b;->x(La4/b$g;I)V

    invoke-static {p1, p2}, La4/b;->p(La4/b$g;I)La4/b$g;

    move-result-object p1

    goto/16 :goto_0

    :cond_b
    invoke-static {v3, p2}, La4/b;->m(La4/b$g;I)La4/b$g;

    move-result-object v5

    invoke-static {v5, p2}, La4/b;->t(La4/b$g;I)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {v3, p2}, La4/b;->q(La4/b$g;I)La4/b$g;

    move-result-object v5

    invoke-static {v5, p2}, La4/b;->w(La4/b$g;I)V

    invoke-static {v3, p2}, La4/b;->x(La4/b$g;I)V

    invoke-virtual {p0, v3, p2}, La4/b;->z(La4/b$g;I)V

    invoke-static {p1, p2}, La4/b;->p(La4/b$g;I)La4/b$g;

    move-result-object v3

    invoke-static {v3, p2}, La4/b;->m(La4/b$g;I)La4/b$g;

    move-result-object v3

    :cond_c
    invoke-static {p1, p2}, La4/b;->p(La4/b$g;I)La4/b$g;

    move-result-object v5

    if-eqz v3, :cond_11

    iget-object v6, v3, La4/b$g;->b1:[Z

    if-nez v5, :cond_e

    if-eqz p2, :cond_d

    aput-boolean v4, v6, v1

    goto :goto_2

    :cond_d
    throw v0

    :cond_e
    if-eqz p2, :cond_10

    if-eqz p2, :cond_f

    iget-object v4, v5, La4/b$g;->b1:[Z

    aget-boolean v4, v4, v1

    aput-boolean v4, v6, v1

    goto :goto_2

    :cond_f
    throw v0

    :cond_10
    throw v0

    :cond_11
    :goto_2
    invoke-static {p1, p2}, La4/b;->p(La4/b$g;I)La4/b$g;

    move-result-object v4

    invoke-static {v4, p2}, La4/b;->w(La4/b$g;I)V

    invoke-static {v3, p2}, La4/b;->m(La4/b$g;I)La4/b$g;

    move-result-object v3

    invoke-static {v3, p2}, La4/b;->w(La4/b$g;I)V

    invoke-static {p1, p2}, La4/b;->p(La4/b$g;I)La4/b$g;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, La4/b;->A(La4/b$g;I)V

    if-eqz p2, :cond_12

    aget-object p1, v2, v1

    goto/16 :goto_0

    :cond_12
    throw v0

    :cond_13
    invoke-static {p1, p2}, La4/b;->w(La4/b$g;I)V

    return-void

    :cond_14
    throw v0
.end method

.method public final g(La4/b$g;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La4/b$g<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2}, La4/b;->x(La4/b$g;I)V

    :cond_0
    :goto_0
    iget-object v0, p0, La4/b;->c:[La4/b$g;

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    if-eqz p2, :cond_a

    add-int/lit8 v2, p2, -0x1

    aget-object v3, v0, v2

    if-eq p1, v3, :cond_b

    if-eqz p2, :cond_9

    iget-object v3, p1, La4/b$g;->Z:[La4/b$g;

    aget-object v4, v3, v2

    invoke-static {v4, p2}, La4/b;->u(La4/b$g;I)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {p1, p2}, La4/b$g;->b(La4/b$g;I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1, p2}, La4/b;->j(La4/b$g;I)La4/b$g;

    move-result-object v0

    invoke-static {v0, p2}, La4/b;->q(La4/b$g;I)La4/b$g;

    move-result-object v0

    invoke-static {v0, p2}, La4/b;->u(La4/b$g;I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1, p2}, La4/b;->p(La4/b$g;I)La4/b$g;

    move-result-object v1

    invoke-static {v1, p2}, La4/b;->w(La4/b$g;I)V

    invoke-static {v0, p2}, La4/b;->w(La4/b$g;I)V

    invoke-static {p1, p2}, La4/b;->j(La4/b$g;I)La4/b$g;

    move-result-object v0

    invoke-static {v0, p2}, La4/b;->x(La4/b$g;I)V

    invoke-static {p1, p2}, La4/b;->j(La4/b$g;I)La4/b$g;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_5

    aget-object v0, v3, v2

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    iget-object v0, v0, La4/b$g;->y:[La4/b$g;

    if-eqz p2, :cond_2

    aget-object v0, v0, v2

    if-ne v0, p1, :cond_4

    invoke-static {p1, p2}, La4/b;->p(La4/b$g;I)La4/b$g;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, La4/b;->z(La4/b$g;I)V

    goto :goto_1

    :cond_2
    throw v1

    :cond_3
    throw v1

    :cond_4
    :goto_1
    invoke-static {p1, p2}, La4/b;->p(La4/b$g;I)La4/b$g;

    move-result-object v0

    invoke-static {v0, p2}, La4/b;->w(La4/b$g;I)V

    invoke-static {p1, p2}, La4/b;->j(La4/b$g;I)La4/b$g;

    move-result-object v0

    invoke-static {v0, p2}, La4/b;->x(La4/b$g;I)V

    invoke-static {p1, p2}, La4/b;->j(La4/b$g;I)La4/b$g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, La4/b;->j(La4/b$g;I)La4/b$g;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, La4/b;->A(La4/b$g;I)V

    goto :goto_0

    :cond_5
    throw v1

    :cond_6
    invoke-static {p1, p2}, La4/b;->j(La4/b$g;I)La4/b$g;

    move-result-object v0

    invoke-static {v0, p2}, La4/b;->m(La4/b$g;I)La4/b$g;

    move-result-object v0

    invoke-static {v0, p2}, La4/b;->u(La4/b$g;I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p1, p2}, La4/b;->p(La4/b$g;I)La4/b$g;

    move-result-object v1

    invoke-static {v1, p2}, La4/b;->w(La4/b$g;I)V

    invoke-static {v0, p2}, La4/b;->w(La4/b$g;I)V

    invoke-static {p1, p2}, La4/b;->j(La4/b$g;I)La4/b$g;

    move-result-object v0

    invoke-static {v0, p2}, La4/b;->x(La4/b$g;I)V

    invoke-static {p1, p2}, La4/b;->j(La4/b$g;I)La4/b$g;

    move-result-object p1

    goto/16 :goto_0

    :cond_7
    invoke-static {p1, p2}, La4/b$g;->b(La4/b$g;I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1, p2}, La4/b;->p(La4/b$g;I)La4/b$g;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, La4/b;->A(La4/b$g;I)V

    :cond_8
    invoke-static {p1, p2}, La4/b;->p(La4/b$g;I)La4/b$g;

    move-result-object v0

    invoke-static {v0, p2}, La4/b;->w(La4/b$g;I)V

    invoke-static {p1, p2}, La4/b;->j(La4/b$g;I)La4/b$g;

    move-result-object v0

    invoke-static {v0, p2}, La4/b;->x(La4/b$g;I)V

    invoke-static {p1, p2}, La4/b;->j(La4/b$g;I)La4/b$g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, La4/b;->j(La4/b$g;I)La4/b$g;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, La4/b;->z(La4/b$g;I)V

    goto/16 :goto_0

    :cond_9
    throw v1

    :cond_a
    throw v1

    :cond_b
    if-eqz p2, :cond_c

    add-int/lit8 p0, p2, -0x1

    aget-object p0, v0, p0

    invoke-static {p0, p2}, La4/b;->w(La4/b$g;I)V

    return-void

    :cond_c
    throw v1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, La4/b;->a(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, v0}, La4/b;->v(Ljava/lang/Object;I)La4/b$g;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, La4/b$g;->r:Ljava/lang/Comparable;

    :goto_0
    return-object p0
.end method

.method public final h(Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, La4/b;->v(Ljava/lang/Object;I)La4/b$g;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, La4/b;->e(La4/b$g;)V

    iget-object p0, p1, La4/b$g;->c:Ljava/lang/Comparable;

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, La4/b;->c(I)I

    move-result p0

    return p0
.end method

.method public final i(I)Ljava/lang/String;
    .locals 4

    iget v0, p0, La4/b;->r:I

    if-nez v0, :cond_0

    const-string/jumbo p0, "{}"

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x20

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, La4/b;->n(I)Lz3/c;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lz3/c;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "(this Map)"

    if-ne v0, p0, :cond_2

    move-object v0, v3

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v2, p0, :cond_3

    move-object v2, v3

    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget p0, p0, La4/b;->r:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p1, v0}, La4/b;->a(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, v0}, La4/b;->v(Ljava/lang/Object;I)La4/b$g;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, La4/b$g;->c:Ljava/lang/Comparable;

    :goto_0
    return-object p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, La4/b;->y:La4/b$f;

    if-nez v0, :cond_0

    new-instance v0, La4/b$f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, La4/b$f;-><init>(La4/b;I)V

    iput-object v0, p0, La4/b;->y:La4/b$f;

    :cond_0
    iget-object p0, p0, La4/b;->y:La4/b$f;

    return-object p0
.end method

.method public final n(I)Lz3/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lz3/c<",
            "**>;"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    new-instance p1, La4/b$e;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, La4/b$j;-><init>(La4/b;I)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    new-instance p1, La4/b$l;

    invoke-direct {p1, p0, v0}, La4/b$j;-><init>(La4/b;I)V

    return-object p1

    :cond_2
    const/4 p0, 0x0

    throw p0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    const/4 v0, 0x1

    invoke-static {p1, v0}, La4/b;->a(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, v0}, La4/b;->v(Ljava/lang/Object;I)La4/b$g;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, La4/b$g;->r:Ljava/lang/Comparable;

    :goto_0
    invoke-virtual {p0, p1, p2}, La4/b;->d(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    const/4 v2, 0x1

    invoke-static {v1, v2}, La4/b;->a(Ljava/lang/Object;I)V

    invoke-virtual {p0, v1, v2}, La4/b;->v(Ljava/lang/Object;I)La4/b$g;

    invoke-virtual {p0, v1, v0}, La4/b;->d(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, La4/b;->v(Ljava/lang/Object;I)La4/b$g;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, La4/b;->e(La4/b$g;)V

    iget-object p0, p1, La4/b$g;->r:Ljava/lang/Comparable;

    :goto_0
    return-object p0
.end method

.method public final s(La4/b$g;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La4/b$g<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, La4/b;->c:[La4/b$g;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_0
    iget-object v2, v0, La4/b$g;->r:Ljava/lang/Comparable;

    iget-object v3, p1, La4/b$g;->r:Ljava/lang/Comparable;

    invoke-interface {v3, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x2

    iget-object v4, p1, La4/b$g;->Z:[La4/b$g;

    if-gez v2, :cond_1

    iget-object v2, v0, La4/b$g;->x:[La4/b$g;

    aget-object v5, v2, v1

    if-eqz v5, :cond_0

    :goto_1
    move-object v0, v5

    goto :goto_0

    :cond_0
    aput-object p1, v2, v1

    aput-object v0, v4, v1

    invoke-virtual {p0, p1, v3}, La4/b;->g(La4/b$g;I)V

    goto :goto_2

    :cond_1
    iget-object v2, v0, La4/b$g;->y:[La4/b$g;

    aget-object v5, v2, v1

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    aput-object p1, v2, v1

    aput-object v0, v4, v1

    invoke-virtual {p0, p1, v3}, La4/b;->g(La4/b$g;I)V

    :goto_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot store a duplicate value (\""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\") in this Map"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, La4/b;->r:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, La4/b;->i(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final v(Ljava/lang/Object;I)La4/b$g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "La4/b$g<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    add-int/lit8 v1, p2, -0x1

    iget-object p0, p0, La4/b;->c:[La4/b$g;

    aget-object p0, p0, v1

    :goto_0
    if-eqz p0, :cond_7

    move-object v2, p1

    check-cast v2, Ljava/lang/Comparable;

    if-eqz p2, :cond_6

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object v3, p0, La4/b$g;->r:Ljava/lang/Comparable;

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    iget-object v3, p0, La4/b$g;->c:Ljava/lang/Comparable;

    :goto_1
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_2

    move-object v0, p0

    goto :goto_2

    :cond_2
    if-gez v2, :cond_4

    if-eqz p2, :cond_3

    iget-object p0, p0, La4/b$g;->x:[La4/b$g;

    aget-object p0, p0, v1

    goto :goto_0

    :cond_3
    throw v0

    :cond_4
    if-eqz p2, :cond_5

    iget-object p0, p0, La4/b$g;->y:[La4/b$g;

    aget-object p0, p0, v1

    goto :goto_0

    :cond_5
    throw v0

    :cond_6
    throw v0

    :cond_7
    :goto_2
    return-object v0

    :cond_8
    throw v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, La4/b;->Z:La4/b$h;

    if-nez v0, :cond_0

    new-instance v0, La4/b$h;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, La4/b$h;-><init>(La4/b;I)V

    iput-object v0, p0, La4/b;->Z:La4/b$h;

    :cond_0
    iget-object p0, p0, La4/b;->Z:La4/b$h;

    return-object p0
.end method

.method public final z(La4/b$g;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La4/b$g<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p1, La4/b$g;->y:[La4/b$g;

    const/4 v1, 0x0

    if-eqz p2, :cond_11

    add-int/lit8 v2, p2, -0x1

    aget-object v0, v0, v2

    invoke-static {v0, p2}, La4/b$g;->a(La4/b$g;I)La4/b$g;

    move-result-object v3

    if-eqz p2, :cond_10

    iget-object v4, p1, La4/b$g;->y:[La4/b$g;

    aput-object v3, v4, v2

    if-eqz p2, :cond_f

    iget-object v3, v0, La4/b$g;->x:[La4/b$g;

    aget-object v4, v3, v2

    if-eqz v4, :cond_1

    if-eqz p2, :cond_0

    invoke-static {v4, p1, p2}, La4/b$g;->c(La4/b$g;La4/b$g;I)V

    goto :goto_0

    :cond_0
    throw v1

    :cond_1
    :goto_0
    if-eqz p2, :cond_e

    iget-object v4, p1, La4/b$g;->Z:[La4/b$g;

    aget-object v5, v4, v2

    if-eqz p2, :cond_d

    iget-object v6, v0, La4/b$g;->Z:[La4/b$g;

    aput-object v5, v6, v2

    if-eqz p2, :cond_c

    aget-object v5, v4, v2

    if-nez v5, :cond_3

    iget-object p0, p0, La4/b;->c:[La4/b$g;

    if-eqz p2, :cond_2

    aput-object v0, p0, v2

    goto :goto_1

    :cond_2
    throw v1

    :cond_3
    if-eqz p2, :cond_b

    invoke-static {v5, p2}, La4/b$g;->a(La4/b$g;I)La4/b$g;

    move-result-object p0

    if-ne p0, p1, :cond_6

    if-eqz p2, :cond_5

    aget-object p0, v4, v2

    iget-object p0, p0, La4/b$g;->x:[La4/b$g;

    if-eqz p2, :cond_4

    aput-object v0, p0, v2

    goto :goto_1

    :cond_4
    throw v1

    :cond_5
    throw v1

    :cond_6
    if-eqz p2, :cond_a

    aget-object p0, v4, v2

    iget-object p0, p0, La4/b$g;->y:[La4/b$g;

    if-eqz p2, :cond_9

    aput-object v0, p0, v2

    :goto_1
    if-eqz p2, :cond_8

    aput-object p1, v3, v2

    if-eqz p2, :cond_7

    aput-object v0, v4, v2

    return-void

    :cond_7
    throw v1

    :cond_8
    throw v1

    :cond_9
    throw v1

    :cond_a
    throw v1

    :cond_b
    throw v1

    :cond_c
    throw v1

    :cond_d
    throw v1

    :cond_e
    throw v1

    :cond_f
    throw v1

    :cond_10
    throw v1

    :cond_11
    throw v1
.end method
