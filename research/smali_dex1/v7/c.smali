.class public final Lv7/c;
.super Ln7/j0;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic f:Lv7/e;


# direct methods
.method public constructor <init>(Lv7/e;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv7/c;->f:Lv7/e;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Ln7/f1;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lv7/c;->f:Lv7/e;

    .line 2
    .line 3
    iget-object v0, v0, Lv7/e;->g:Lv7/a;

    .line 4
    .line 5
    new-instance v1, Lo7/t1;

    .line 6
    .line 7
    invoke-static {p1}, Ln7/f0;->a(Ln7/f1;)Ln7/f0;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v1, p1}, Lo7/t1;-><init>(Ln7/f0;)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Ln7/j;->d:Ln7/j;

    .line 15
    .line 16
    invoke-virtual {v0, p1, v1}, Lv7/a;->D(Ln7/j;Ln7/h0;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final d(Ln7/g0;)V
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v0, "GracefulSwitchLoadBalancer must switch to a load balancing policy before handling ResolvedAddresses"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public final f()V
    .registers 1

    .line 1
    return-void
.end method
