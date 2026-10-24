.class public abstract Lv3/w;
.super Lh3/a;
.source "SourceFile"

# interfaces
.implements Lh3/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv3/w$a;
    }
.end annotation


# static fields
.field public static final r:Lv3/w$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lv3/w$a;

    sget-object v1, Lh3/e$a;->c:Lh3/e$a;

    sget-object v2, Lv3/v;->r:Lv3/v;

    invoke-direct {v0, v1, v2}, Lh3/b;-><init>(Lh3/f$c;Ln3/l;)V

    sput-object v0, Lv3/w;->r:Lv3/w$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lh3/e$a;->c:Lh3/e$a;

    invoke-direct {p0, v0}, Lh3/a;-><init>(Lh3/f$c;)V

    return-void
.end method


# virtual methods
.method public final e(Lh3/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh3/d<",
            "*>;)V"
        }
    .end annotation

    check-cast p1, Lx3/g;

    :cond_0
    sget-object p0, Lx3/g;->d1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lx3/a;->c:Lz1/d;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lv3/g;

    if-eqz p1, :cond_1

    check-cast p0, Lv3/g;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    sget-object p1, Lv3/g;->d1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/l0;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lv3/l0;->dispose()V

    sget-object v0, Lv3/g1;->c:Lv3/g1;

    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final j(Lh3/f$c;)Lh3/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh3/f$c<",
            "*>;)",
            "Lh3/f;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, Lh3/b;

    sget-object v2, Lh3/g;->c:Lh3/g;

    if-eqz v1, :cond_1

    check-cast p1, Lh3/b;

    iget-object v1, p0, Lh3/a;->c:Lh3/f$c;

    invoke-static {v1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v1, p1, :cond_0

    iget-object v0, p1, Lh3/b;->r:Lh3/f$c;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object p1, p1, Lh3/b;->c:Ln3/l;

    invoke-interface {p1, p0}, Ln3/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh3/f$b;

    if-eqz p1, :cond_2

    :goto_0
    move-object p0, v2

    goto :goto_1

    :cond_1
    sget-object v0, Lh3/e$a;->c:Lh3/e$a;

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public abstract l(Lh3/f;Ljava/lang/Runnable;)V
.end method

.method public o()Z
    .locals 0

    instance-of p0, p0, Lv3/o1;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final s(Lh3/f$c;)Lh3/f$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lh3/f$b;",
            ">(",
            "Lh3/f$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, Lh3/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lh3/b;

    iget-object v1, p0, Lh3/a;->c:Lh3/f$c;

    invoke-static {v1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v1, p1, :cond_0

    iget-object v0, p1, Lh3/b;->r:Lh3/f$c;

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object p1, p1, Lh3/b;->c:Ln3/l;

    invoke-interface {p1, p0}, Ln3/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh3/f$b;

    instance-of p1, p0, Lh3/f$b;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_1
    sget-object v0, Lh3/e$a;->c:Lh3/e$a;

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v2

    :goto_0
    move-object v2, p0

    :cond_3
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lv3/c0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lh3/d;)Lx3/g;
    .locals 1

    new-instance v0, Lx3/g;

    invoke-direct {v0, p0, p1}, Lx3/g;-><init>(Lv3/w;Lh3/d;)V

    return-object v0
.end method
