.class public final Lm5/g1$g;
.super Lm5/g1$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public final c:Lm5/g1$h;

.field public final d:I

.field public final e:I

.field public f:Ljava/lang/String;

.field public final g:Ljava/lang/StringBuffer;

.field public h:I

.field public final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public j:Z

.field public final k:Z


# direct methods
.method public constructor <init>(Lm5/g1$h;Li5/z1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm5/g1$g;->j:Z

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lm5/g1$g;->g:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm5/g1$g;->i:Ljava/util/ArrayList;

    iput-object p1, p0, Lm5/g1$g;->c:Lm5/g1$h;

    const/4 p1, 0x2

    iput p1, p0, Lm5/g1$g;->d:I

    sget-object p1, Li5/z1$a;->y:Li5/z1$a;

    iget-object v0, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lm5/g1$g;->d:I

    :cond_0
    sget-object p1, Li5/z1$a;->Z:Li5/z1$a;

    iget-object v0, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lm5/g1$g;->e:I

    :cond_1
    sget-object p1, Li5/z1$a;->v1:Li5/z1$a;

    iget-object p2, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lm5/g1$g;->k:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lm5/g1$g;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm5/g1$g;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lm5/g1$g;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lm5/g1$h;->a:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lm5/g1$h;->b:I

    iget-object p0, p0, Lm5/g1$g;->f:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v0, p0, Lm5/g1$g;->c:Lm5/g1$h;

    invoke-virtual {v0}, Lm5/g1$h;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lm5/g1$h;->a:I

    iput v2, p0, Lm5/g1$h;->a:I

    iget v0, v0, Lm5/g1$h;->b:I

    iput v0, p0, Lm5/g1$h;->b:I

    return-object v1
.end method

.method public final d()Li5/t0;
    .locals 0

    iget-object p0, p0, Lm5/g1$g;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->d()Li5/t0;

    move-result-object p0

    return-object p0
.end method

.method public final e()Ljavax/xml/namespace/QName;
    .locals 0

    iget-object p0, p0, Lm5/g1$g;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->e()Ljavax/xml/namespace/QName;

    move-result-object p0

    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm5/g1$g;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm5/g1$g;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lm5/g1$g;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object p0, p0, Lm5/g1$g;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lm5/g1$g;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object p0, p0, Lm5/g1$g;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Lm5/g1$g;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lm5/g1$g;->k:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lm5/g1$g;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->k()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Lm5/g1$g;->j:Z

    :goto_0
    return p0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lm5/g1$g;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object p0, p0, Lm5/g1$g;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->l()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final m()I
    .locals 1

    iget-object v0, p0, Lm5/g1$g;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object p0, p0, Lm5/g1$g;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->m()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final n()Z
    .locals 13

    iget-object v0, p0, Lm5/g1$g;->f:Ljava/lang/String;

    const/4 v1, -0x2

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lm5/g1$g;->c:Lm5/g1$h;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lm5/g1$g;->f:Ljava/lang/String;

    iput-boolean v3, p0, Lm5/g1$g;->j:Z

    invoke-virtual {v5}, Lm5/g1$h;->m()I

    move-result v3

    goto/16 :goto_7

    :cond_0
    invoke-virtual {v5}, Lm5/g1$h;->m()I

    move-result v0

    invoke-virtual {v5}, Lm5/g1$h;->n()Z

    move-result v6

    if-nez v6, :cond_1

    return v3

    :cond_1
    iget-object v6, p0, Lm5/g1$g;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v6, v3, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Lm5/g1$h;->j()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Lm5/g1$g;->k:Z

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Lm5/g1$h;->k()Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v4

    goto :goto_0

    :cond_2
    move v7, v3

    :goto_0
    iput-boolean v7, p0, Lm5/g1$g;->j:Z

    invoke-virtual {v5}, Lm5/g1$h;->c()Ljava/lang/Object;

    move-result-object v7

    iget v8, v5, Lm5/g1$h;->a:I

    iget v9, v5, Lm5/g1$h;->b:I

    invoke-static {v6, v7, v8, v9}, Lm5/f;->d(Ljava/lang/StringBuffer;Ljava/lang/Object;II)V

    invoke-virtual {v5}, Lm5/g1$h;->n()Z

    invoke-virtual {v5}, Lm5/g1$h;->m()I

    move-result v7

    if-ne v0, v2, :cond_3

    if-eq v7, v1, :cond_8

    :cond_3
    move v7, v3

    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-ge v7, v8, :cond_5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lm5/f;->f(C)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {v6, v3, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    :goto_3
    if-lez v7, :cond_7

    add-int/lit8 v8, v7, -0x1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lm5/f;->f(C)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_7
    :goto_4
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_8
    invoke-virtual {v5}, Lm5/g1$h;->m()I

    move-result v5

    iget v7, p0, Lm5/g1$g;->d:I

    if-ltz v7, :cond_d

    const/4 v8, 0x4

    if-eq v0, v8, :cond_d

    const/4 v8, 0x5

    if-eq v0, v8, :cond_d

    if-ne v0, v2, :cond_9

    if-eq v5, v1, :cond_d

    :cond_9
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    iget v9, p0, Lm5/g1$g;->e:I

    const/16 v10, 0x20

    if-lez v8, :cond_a

    sget-object v8, Lm5/g1;->q:Ljava/lang/String;

    invoke-virtual {v6, v3, v8}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget v11, p0, Lm5/g1$g;->h:I

    mul-int/2addr v11, v7

    add-int/2addr v11, v9

    :goto_5
    add-int/lit8 v12, v11, -0x1

    if-lez v11, :cond_a

    invoke-virtual {v6, v8, v10}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move v11, v12

    goto :goto_5

    :cond_a
    const/4 v8, -0x1

    if-eq v5, v8, :cond_d

    if-eq v0, v4, :cond_b

    sget-object v0, Lm5/g1;->q:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    iget v0, p0, Lm5/g1$g;->h:I

    if-gez v5, :cond_c

    sub-int/2addr v0, v4

    :cond_c
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    mul-int/2addr v7, v0

    add-int/2addr v7, v9

    :goto_6
    add-int/lit8 v0, v7, -0x1

    if-lez v7, :cond_d

    invoke-virtual {v6, v8, v10}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move v7, v0

    goto :goto_6

    :cond_d
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm5/g1$g;->f:Ljava/lang/String;

    goto :goto_7

    :cond_e
    move v3, v5

    :goto_7
    if-ne v3, v2, :cond_f

    iget v0, p0, Lm5/g1$g;->h:I

    add-int/2addr v0, v4

    iput v0, p0, Lm5/g1$g;->h:I

    goto :goto_8

    :cond_f
    if-ne v3, v1, :cond_10

    iget v0, p0, Lm5/g1$g;->h:I

    sub-int/2addr v0, v4

    iput v0, p0, Lm5/g1$g;->h:I

    :cond_10
    :goto_8
    return v4
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lm5/g1$g;->c:Lm5/g1$h;

    invoke-virtual {v0}, Lm5/g1$h;->o()V

    iget-object v0, p0, Lm5/g1$g;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lm5/g1$g;->h:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lm5/g1$g;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm5/g1$g;->j:Z

    return-void
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lm5/g1$g;->c:Lm5/g1$h;

    invoke-virtual {v0}, Lm5/g1$h;->p()V

    iget-object v0, p0, Lm5/g1$g;->i:Ljava/util/ArrayList;

    iget-object v1, p0, Lm5/g1$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lm5/g1$g;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm5/g1$g;->j:Z

    return-void
.end method

.method public final q()V
    .locals 0

    iget-object p0, p0, Lm5/g1$g;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->q()V

    return-void
.end method

.method public final r()V
    .locals 2

    iget-object v0, p0, Lm5/g1$g;->c:Lm5/g1$h;

    invoke-virtual {v0}, Lm5/g1$h;->r()V

    invoke-virtual {v0}, Lm5/g1$h;->m()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lm5/g1$g;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lm5/g1$g;->h:I

    :cond_0
    return-void
.end method

.method public final s()Z
    .locals 0

    iget-object p0, p0, Lm5/g1$g;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->s()Z

    move-result p0

    return p0
.end method

.method public final t()Z
    .locals 0

    iget-object p0, p0, Lm5/g1$g;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->t()Z

    move-result p0

    return p0
.end method
