.class public final synthetic Lu4/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lu4/f;

.field public final synthetic c:Ljava/util/concurrent/Callable;

.field public final synthetic d:Ln/p;


# direct methods
.method public synthetic constructor <init>(Lu4/f;Ljava/util/concurrent/Callable;Ln/p;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu4/e;->b:Lu4/f;

    .line 5
    .line 6
    iput-object p2, p0, Lu4/e;->c:Ljava/util/concurrent/Callable;

    .line 7
    .line 8
    iput-object p3, p0, Lu4/e;->d:Ln/p;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object v0, p0, Lu4/e;->b:Lu4/f;

    .line 2
    .line 3
    iget-object v0, v0, Lu4/f;->b:Ljava/util/concurrent/ExecutorService;

    .line 4
    .line 5
    new-instance v1, Ls1/x0;

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    iget-object v3, p0, Lu4/e;->c:Ljava/util/concurrent/Callable;

    .line 10
    .line 11
    iget-object v4, p0, Lu4/e;->d:Ln/p;

    .line 12
    .line 13
    invoke-direct {v1, v2, v3, v4}, Ls1/x0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method
