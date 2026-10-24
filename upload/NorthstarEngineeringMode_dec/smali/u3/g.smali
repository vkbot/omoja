.class public final Lu3/g;
.super Lo3/i;
.source "SourceFile"

# interfaces
.implements Ln3/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo3/i;",
        "Ln3/p<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Integer;",
        "Lf3/b<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic x:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lu3/g;->r:Ljava/util/List;

    iput-boolean p2, p0, Lu3/g;->x:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lo3/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    const-string v0, "$this$$receiver"

    invoke-static {p1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lu3/g;->x:Z

    const/4 v1, 0x0

    iget-object p0, p0, Lu3/g;->r:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    if-ne v4, v3, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    if-ne v0, v3, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {p1, p0, p2, v0}, Lu3/h;->k0(Ljava/lang/CharSequence;Ljava/lang/String;II)I

    move-result p1

    if-gez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lf3/b;

    invoke-direct {p2, p1, p0}, Lf3/b;-><init>(Ljava/lang/Object;Ljava/io/Serializable;)V

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "List has more than one element."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "List is empty."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance v4, Lr3/c;

    if-gez p2, :cond_4

    move p2, v2

    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {v4, p2, v2, v3}, Lr3/a;-><init>(III)V

    instance-of v2, p1, Ljava/lang/String;

    iget v3, v4, Lr3/a;->r:I

    if-eqz v2, :cond_9

    if-le p2, v3, :cond_5

    goto/16 :goto_4

    :cond_5
    :goto_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v5, v0, v6, p2, v7}, Lu3/f;->g0(Ljava/lang/String;ZLjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_1

    :cond_7
    move-object v4, v1

    :goto_1
    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p2, Lf3/b;

    invoke-direct {p2, p0, v4}, Lf3/b;-><init>(Ljava/lang/Object;Ljava/io/Serializable;)V

    goto :goto_5

    :cond_8
    if-eq p2, v3, :cond_e

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_9
    if-le p2, v3, :cond_a

    goto :goto_4

    :cond_a
    :goto_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, p1, p2, v6, v0}, Lu3/h;->l0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZ)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_3

    :cond_c
    move-object v4, v1

    :goto_3
    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_d

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p2, Lf3/b;

    invoke-direct {p2, p0, v4}, Lf3/b;-><init>(Ljava/lang/Object;Ljava/io/Serializable;)V

    goto :goto_5

    :cond_d
    if-eq p2, v3, :cond_e

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_e
    :goto_4
    move-object p2, v1

    :goto_5
    if-eqz p2, :cond_f

    iget-object p0, p2, Lf3/b;->r:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v1, Lf3/b;

    iget-object p1, p2, Lf3/b;->c:Ljava/lang/Object;

    invoke-direct {v1, p1, p0}, Lf3/b;-><init>(Ljava/lang/Object;Ljava/io/Serializable;)V

    :cond_f
    return-object v1
.end method
