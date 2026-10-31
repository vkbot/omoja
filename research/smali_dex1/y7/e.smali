.class public final Ly7/e;
.super Lx7/k;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly7/e;->a:Landroid/os/Handler;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lx7/j;
    .registers 3

    .line 1
    new-instance v0, Ly7/c;

    .line 2
    .line 3
    iget-object v1, p0, Ly7/e;->a:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ly7/c;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final c(Li8/p;)Lz7/a;
    .registers 6

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    if-eqz v0, :cond_11

    .line 4
    .line 5
    new-instance v0, Ly7/d;

    .line 6
    .line 7
    iget-object v1, p0, Ly7/e;->a:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-direct {v0, v1, p1}, Ly7/d;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_11
    const-string p1, "unit == null"

    .line 19
    .line 20
    invoke-static {p1}, Ln0/b;->n(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method
