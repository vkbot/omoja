.class public final Lo7/y3;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lo7/v3;


# instance fields
.field public final synthetic a:Lo7/v1;


# direct methods
.method public constructor <init>(Lo7/v1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo7/y3;->a:Lo7/v1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lo7/c4;)V
    .registers 6

    .line 1
    iget-object v0, p1, Lo7/c4;->a:Lo7/u;

    .line 2
    .line 3
    new-instance v1, Lo7/w4;

    .line 4
    .line 5
    iget-object v2, p0, Lo7/y3;->a:Lo7/v1;

    .line 6
    .line 7
    const/4 v3, 0x5

    .line 8
    invoke-direct {v1, v3, v2, p1}, Lo7/w4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Lo7/u;->d(Lo7/w;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
