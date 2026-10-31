.class public final Lo7/t3;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lo7/v3;


# instance fields
.field public final synthetic a:Ly5/g;

.field public final synthetic b:Lo7/v1;


# direct methods
.method public constructor <init>(Lo7/v1;Ly5/g;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo7/t3;->b:Lo7/v1;

    .line 5
    .line 6
    iput-object p2, p0, Lo7/t3;->a:Ly5/g;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lo7/c4;)V
    .registers 6

    .line 1
    iget-object v0, p1, Lo7/c4;->a:Lo7/u;

    .line 2
    .line 3
    iget-object v1, p0, Lo7/t3;->b:Lo7/v1;

    .line 4
    .line 5
    iget-object v1, v1, Lo7/v1;->b:Ln7/x0;

    .line 6
    .line 7
    iget-object v1, v1, Ln7/x0;->d:Lt7/b;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v2, Lt7/a;

    .line 13
    .line 14
    iget-object v1, v1, Lt7/b;->a:Lcom/google/protobuf/x0;

    .line 15
    .line 16
    iget-object v3, p0, Lo7/t3;->a:Ly5/g;

    .line 17
    .line 18
    invoke-direct {v2, v3, v1}, Lt7/a;-><init>(Ly5/g;Lcom/google/protobuf/x0;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v2}, Lo7/u4;->f(Lt7/a;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p1, Lo7/c4;->a:Lo7/u;

    .line 25
    .line 26
    invoke-interface {p1}, Lo7/u4;->flush()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
