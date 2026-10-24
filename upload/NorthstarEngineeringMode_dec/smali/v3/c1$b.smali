.class public final Lv3/c1$b;
.super Lv3/b1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final Z:Lv3/c1;

.field public final b1:Lv3/c1$c;

.field public final c1:Lv3/k;

.field public final d1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lv3/c1;Lv3/c1$c;Lv3/k;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lv3/b1;-><init>()V

    iput-object p1, p0, Lv3/c1$b;->Z:Lv3/c1;

    iput-object p2, p0, Lv3/c1$b;->b1:Lv3/c1$c;

    iput-object p3, p0, Lv3/c1$b;->c1:Lv3/k;

    iput-object p4, p0, Lv3/c1$b;->d1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lv3/c1$b;->j(Ljava/lang/Throwable;)V

    sget-object p0, Lf3/g;->a:Lf3/g;

    return-object p0
.end method

.method public final j(Ljava/lang/Throwable;)V
    .locals 6

    sget-object p1, Lv3/c1;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object p1, p0, Lv3/c1$b;->Z:Lv3/c1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lv3/c1$b;->c1:Lv3/k;

    invoke-static {v0}, Lv3/c1;->O(Lx3/k;)Lv3/k;

    move-result-object v0

    iget-object v1, p0, Lv3/c1$b;->b1:Lv3/c1$c;

    iget-object p0, p0, Lv3/c1$b;->d1:Ljava/lang/Object;

    if-eqz v0, :cond_2

    :cond_0
    new-instance v2, Lv3/c1$b;

    invoke-direct {v2, p1, v1, v0, p0}, Lv3/c1$b;-><init>(Lv3/c1;Lv3/c1$c;Lv3/k;Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, v0, Lv3/k;->Z:Lv3/l;

    invoke-static {v5, v3, v2, v4}, Lv3/x0$a;->a(Lv3/x0;ZLv3/b1;I)Lv3/l0;

    move-result-object v2

    sget-object v3, Lv3/g1;->c:Lv3/g1;

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lv3/c1;->O(Lx3/k;)Lv3/k;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p1, v1, p0}, Lv3/c1;->E(Lv3/c1$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lv3/c1;->k(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
