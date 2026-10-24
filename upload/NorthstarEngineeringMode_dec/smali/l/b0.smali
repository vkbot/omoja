.class public final Ll/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj/d$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lp/q$a;

.field public final synthetic r:Ll/c0;


# direct methods
.method public constructor <init>(Ll/c0;Lp/q$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/b0;->r:Ll/c0;

    iput-object p2, p0, Ll/b0;->c:Lp/q$a;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Ll/b0;->r:Ll/c0;

    iget-object p0, p0, Ll/b0;->c:Lp/q$a;

    iget-object v1, v0, Ll/c0;->b1:Lp/q$a;

    if-eqz v1, :cond_1

    if-ne v1, p0, :cond_1

    iget-object v1, v0, Ll/c0;->c:Ll/i;

    iget-object v1, v1, Ll/i;->p:Ll/l;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lp/q$a;->c:Lj/d;

    invoke-interface {v2}, Lj/d;->c()Li/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ll/l;->c(Li/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, v0, Ll/c0;->Z:Ljava/lang/Object;

    iget-object p0, v0, Ll/c0;->r:Ll/h$a;

    invoke-interface {p0}, Ll/h$a;->d()V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Ll/c0;->r:Ll/h$a;

    iget-object v2, p0, Lp/q$a;->a:Li/f;

    iget-object v3, p0, Lp/q$a;->c:Lj/d;

    invoke-interface {v3}, Lj/d;->c()Li/a;

    move-result-object v4

    iget-object v5, v0, Ll/c0;->c1:Ll/f;

    move-object v0, v1

    move-object v1, v2

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Ll/h$a;->a(Li/f;Ljava/lang/Object;Lj/d;Li/a;Li/f;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 3
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ll/b0;->r:Ll/c0;

    iget-object p0, p0, Ll/b0;->c:Lp/q$a;

    iget-object v1, v0, Ll/c0;->b1:Lp/q$a;

    if-eqz v1, :cond_0

    if-ne v1, p0, :cond_0

    iget-object v1, v0, Ll/c0;->c1:Ll/f;

    iget-object p0, p0, Lp/q$a;->c:Lj/d;

    invoke-interface {p0}, Lj/d;->c()Li/a;

    move-result-object v2

    iget-object v0, v0, Ll/c0;->r:Ll/h$a;

    invoke-interface {v0, v1, p1, p0, v2}, Ll/h$a;->c(Li/f;Ljava/lang/Exception;Lj/d;Li/a;)V

    :cond_0
    return-void
.end method
