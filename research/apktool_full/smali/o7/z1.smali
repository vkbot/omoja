.class public final Lo7/z1;
.super Ln7/t;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final d:Lo7/y1;

.field public final e:Ln7/e;

.field public final synthetic f:Lo7/f2;


# direct methods
.method public constructor <init>(Lo7/f2;Lo7/y1;Lo7/h4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo7/z1;->f:Lo7/f2;

    .line 5
    .line 6
    iput-object p2, p0, Lo7/z1;->d:Lo7/y1;

    .line 7
    .line 8
    const-string p1, "resolver"

    .line 9
    .line 10
    invoke-static {p3, p1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object p3, p0, Lo7/z1;->e:Ln7/e;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final i(Ln7/f1;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ln7/f1;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    const-string v1, "the error status must not be OK"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lo4/b;->d(Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lo7/z1;->f:Lo7/f2;

    .line 13
    .line 14
    iget-object v0, v0, Lo7/f2;->m:Ln7/k1;

    .line 15
    .line 16
    new-instance v1, Lo7/e0;

    .line 17
    .line 18
    const/16 v2, 0x11

    .line 19
    .line 20
    invoke-direct {v1, v2, p0, p1}, Lo7/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final j(Ln7/z0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo7/z1;->f:Lo7/f2;

    .line 2
    .line 3
    iget-object v0, v0, Lo7/f2;->m:Ln7/k1;

    .line 4
    .line 5
    new-instance v1, Lo7/e0;

    .line 6
    .line 7
    const/16 v2, 0x12

    .line 8
    .line 9
    invoke-direct {v1, v2, p0, p1}, Lo7/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
