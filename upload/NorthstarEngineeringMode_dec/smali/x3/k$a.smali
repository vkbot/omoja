.class public abstract Lx3/k$a;
.super Lx3/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx3/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx3/b<",
        "Lx3/k;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lx3/k;

.field public c:Lx3/k;


# direct methods
.method public constructor <init>(Lx3/k;)V
    .locals 0

    invoke-direct {p0}, Lx3/b;-><init>()V

    iput-object p1, p0, Lx3/k$a;->b:Lx3/k;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lx3/k;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lx3/k$a;->b:Lx3/k;

    if-eqz p2, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lx3/k$a;->c:Lx3/k;

    :goto_1
    if-eqz v1, :cond_4

    sget-object v2, Lx3/k;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_2
    invoke-virtual {v2, p1, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_4

    iget-object p0, p0, Lx3/k$a;->c:Lx3/k;

    invoke-static {p0}, Lo3/h;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lx3/k;->f(Lx3/k;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p0, :cond_2

    :cond_4
    :goto_2
    return-void
.end method
