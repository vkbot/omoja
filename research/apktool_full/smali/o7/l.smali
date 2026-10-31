.class public final Lo7/l;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lo7/z;


# instance fields
.field public final b:Lp7/g;


# direct methods
.method public constructor <init>(Lp7/g;Lo7/x1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo7/l;->b:Lp7/g;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final I(Ljava/net/SocketAddress;Lo7/y;Lo7/j1;)Lo7/c0;
    .locals 2

    .line 1
    new-instance v0, Lo7/k;

    .line 2
    .line 3
    iget-object v1, p0, Lo7/l;->b:Lp7/g;

    .line 4
    .line 5
    invoke-virtual {v1, p1, p2, p3}, Lp7/g;->I(Ljava/net/SocketAddress;Lo7/y;Lo7/j1;)Lo7/c0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p2, Lo7/y;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1, p2}, Lo7/k;-><init>(Lo7/l;Lo7/c0;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo7/l;->b:Lp7/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp7/g;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
