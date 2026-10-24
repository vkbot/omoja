.class public final Ll/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/h;
.implements Lj/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/h;",
        "Lj/d$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public Z:Li/f;

.field public b1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp/q<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/f;",
            ">;"
        }
    .end annotation
.end field

.field public c1:I

.field public volatile d1:Lp/q$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/q$a<",
            "*>;"
        }
    .end annotation
.end field

.field public e1:Ljava/io/File;

.field public final r:Ll/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/i<",
            "*>;"
        }
    .end annotation
.end field

.field public final x:Ll/h$a;

.field public y:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ll/i;Ll/h$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Li/f;",
            ">;",
            "Ll/i<",
            "*>;",
            "Ll/h$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ll/e;->y:I

    iput-object p1, p0, Ll/e;->c:Ljava/util/List;

    iput-object p2, p0, Ll/e;->r:Ll/i;

    iput-object p3, p0, Ll/e;->x:Ll/h$a;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 7

    :cond_0
    :goto_0
    iget-object v0, p0, Ll/e;->b1:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget v3, p0, Ll/e;->c1:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Ll/e;->d1:Lp/q$a;

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    iget v0, p0, Ll/e;->c1:I

    iget-object v3, p0, Ll/e;->b1:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Ll/e;->b1:Ljava/util/List;

    iget v3, p0, Ll/e;->c1:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ll/e;->c1:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/q;

    iget-object v3, p0, Ll/e;->e1:Ljava/io/File;

    iget-object v4, p0, Ll/e;->r:Ll/i;

    iget v5, v4, Ll/i;->e:I

    iget v6, v4, Ll/i;->f:I

    iget-object v4, v4, Ll/i;->i:Li/h;

    invoke-interface {v0, v3, v5, v6, v4}, Lp/q;->b(Ljava/lang/Object;IILi/h;)Lp/q$a;

    move-result-object v0

    iput-object v0, p0, Ll/e;->d1:Lp/q$a;

    iget-object v0, p0, Ll/e;->d1:Lp/q$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll/e;->r:Ll/i;

    iget-object v3, p0, Ll/e;->d1:Lp/q$a;

    iget-object v3, v3, Lp/q$a;->c:Lj/d;

    invoke-interface {v3}, Lj/d;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ll/i;->c(Ljava/lang/Class;)Ll/v;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll/e;->d1:Lp/q$a;

    iget-object v0, v0, Lp/q$a;->c:Lj/d;

    iget-object v2, p0, Ll/e;->r:Ll/i;

    iget-object v2, v2, Ll/i;->o:Lcom/bumptech/glide/e;

    invoke-interface {v0, v2, p0}, Lj/d;->f(Lcom/bumptech/glide/e;Lj/d$a;)V

    move v2, v1

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    iget v0, p0, Ll/e;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Ll/e;->y:I

    iget-object v1, p0, Ll/e;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    return v2

    :cond_4
    iget-object v0, p0, Ll/e;->c:Ljava/util/List;

    iget v1, p0, Ll/e;->y:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/f;

    new-instance v1, Ll/f;

    iget-object v3, p0, Ll/e;->r:Ll/i;

    iget-object v4, v3, Ll/i;->n:Li/f;

    invoke-direct {v1, v0, v4}, Ll/f;-><init>(Li/f;Li/f;)V

    iget-object v3, v3, Ll/i;->h:Ll/j$d;

    check-cast v3, Ll/m$c;

    invoke-virtual {v3}, Ll/m$c;->a()Ln/a;

    move-result-object v3

    invoke-interface {v3, v1}, Ln/a;->a(Li/f;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Ll/e;->e1:Ljava/io/File;

    if-eqz v1, :cond_0

    iput-object v0, p0, Ll/e;->Z:Li/f;

    iget-object v0, p0, Ll/e;->r:Ll/i;

    iget-object v0, v0, Ll/i;->c:Lcom/bumptech/glide/d;

    iget-object v0, v0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/f;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/f;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ll/e;->b1:Ljava/util/List;

    iput v2, p0, Ll/e;->c1:I

    goto/16 :goto_0
.end method

.method public final cancel()V
    .locals 0

    iget-object p0, p0, Ll/e;->d1:Lp/q$a;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lp/q$a;->c:Lj/d;

    invoke-interface {p0}, Lj/d;->cancel()V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Ll/e;->x:Ll/h$a;

    iget-object v1, p0, Ll/e;->Z:Li/f;

    iget-object v2, p0, Ll/e;->d1:Lp/q$a;

    iget-object v3, v2, Lp/q$a;->c:Lj/d;

    sget-object v4, Li/a;->x:Li/a;

    iget-object v5, p0, Ll/e;->Z:Li/f;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Ll/h$a;->a(Li/f;Ljava/lang/Object;Lj/d;Li/a;Li/f;)V

    return-void
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 3
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ll/e;->x:Ll/h$a;

    iget-object v1, p0, Ll/e;->Z:Li/f;

    iget-object p0, p0, Ll/e;->d1:Lp/q$a;

    iget-object p0, p0, Lp/q$a;->c:Lj/d;

    sget-object v2, Li/a;->x:Li/a;

    invoke-interface {v0, v1, p1, p0, v2}, Ll/h$a;->c(Li/f;Ljava/lang/Exception;Lj/d;Li/a;)V

    return-void
.end method
