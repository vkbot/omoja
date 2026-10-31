.class public final Lo7/w2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ln7/i0;


# instance fields
.field public a:Ln7/k;

.field public b:Lo7/z2;

.field public final synthetic c:Lo7/a3;


# direct methods
.method public constructor <init>(Lo7/a3;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo7/w2;->c:Lo7/a3;

    .line 5
    .line 6
    sget-object p1, Ln7/j;->e:Ln7/j;

    .line 7
    .line 8
    invoke-static {p1}, Ln7/k;->a(Ln7/j;)Ln7/k;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lo7/w2;->a:Ln7/k;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Ln7/k;)V
    .registers 6

    .line 1
    sget-object v0, Lo7/a3;->o:Ljava/util/logging/Logger;

    .line 2
    .line 3
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 4
    .line 5
    iget-object v2, p0, Lo7/w2;->b:Lo7/z2;

    .line 6
    .line 7
    iget-object v2, v2, Lo7/z2;->a:Ln7/t;

    .line 8
    .line 9
    filled-new-array {p1, v2}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "Received health status {0} for subchannel {1}"

    .line 14
    .line 15
    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lo7/w2;->a:Ln7/k;

    .line 19
    .line 20
    iget-object p1, p0, Lo7/w2;->c:Lo7/a3;

    .line 21
    .line 22
    iget-object v0, p1, Lo7/a3;->h:Lo7/h1;

    .line 23
    .line 24
    invoke-virtual {v0}, Lo7/h1;->c()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_34

    .line 29
    .line 30
    iget-object v0, p1, Lo7/a3;->g:Ljava/util/HashMap;

    .line 31
    .line 32
    iget-object v1, p1, Lo7/a3;->h:Lo7/h1;

    .line 33
    .line 34
    invoke-virtual {v1}, Lo7/h1;->a()Ljava/net/SocketAddress;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lo7/z2;

    .line 43
    .line 44
    iget-object v0, v0, Lo7/z2;->c:Lo7/w2;

    .line 45
    .line 46
    if-ne v0, p0, :cond_34

    .line 47
    .line 48
    iget-object v0, p0, Lo7/w2;->b:Lo7/z2;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lo7/a3;->j(Lo7/z2;)V

    .line 51
    .line 52
    .line 53
    :cond_34
    return-void
.end method
