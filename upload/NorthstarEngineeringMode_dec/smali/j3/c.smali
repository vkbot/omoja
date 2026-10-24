.class public abstract Lj3/c;
.super Lj3/a;
.source "SourceFile"


# instance fields
.field private final _context:Lh3/f;

.field private transient intercepted:Lh3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh3/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh3/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh3/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lh3/d;->getContext()Lh3/f;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lj3/c;-><init>(Lh3/d;Lh3/f;)V

    return-void
.end method

.method public constructor <init>(Lh3/d;Lh3/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh3/d<",
            "Ljava/lang/Object;",
            ">;",
            "Lh3/f;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lj3/a;-><init>(Lh3/d;)V

    iput-object p2, p0, Lj3/c;->_context:Lh3/f;

    return-void
.end method


# virtual methods
.method public getContext()Lh3/f;
    .locals 0

    iget-object p0, p0, Lj3/c;->_context:Lh3/f;

    invoke-static {p0}, Lo3/h;->c(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final intercepted()Lh3/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh3/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lj3/c;->intercepted:Lh3/d;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lj3/c;->getContext()Lh3/f;

    move-result-object v0

    sget-object v1, Lh3/e$a;->c:Lh3/e$a;

    invoke-interface {v0, v1}, Lh3/f;->s(Lh3/f$c;)Lh3/f$b;

    move-result-object v0

    check-cast v0, Lh3/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lh3/e;->x(Lh3/d;)Lx3/g;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    :cond_1
    iput-object v0, p0, Lj3/c;->intercepted:Lh3/d;

    :cond_2
    return-object v0
.end method

.method public releaseIntercepted()V
    .locals 3

    iget-object v0, p0, Lj3/c;->intercepted:Lh3/d;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-virtual {p0}, Lj3/c;->getContext()Lh3/f;

    move-result-object v1

    sget-object v2, Lh3/e$a;->c:Lh3/e$a;

    invoke-interface {v1, v2}, Lh3/f;->s(Lh3/f$c;)Lh3/f$b;

    move-result-object v1

    invoke-static {v1}, Lo3/h;->c(Ljava/lang/Object;)V

    check-cast v1, Lh3/e;

    invoke-interface {v1, v0}, Lh3/e;->e(Lh3/d;)V

    :cond_0
    sget-object v0, Lj3/b;->c:Lj3/b;

    iput-object v0, p0, Lj3/c;->intercepted:Lh3/d;

    return-void
.end method
