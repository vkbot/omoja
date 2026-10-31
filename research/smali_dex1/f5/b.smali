.class public final Lf5/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Lf5/b0;

.field public final b:Lh8/p0;

.field public c:Lf5/a0;


# direct methods
.method public constructor <init>(Lf5/b0;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf5/b;->a:Lf5/b0;

    .line 5
    .line 6
    new-instance p1, Lr5/c;

    .line 7
    .line 8
    const/16 v0, 0xc

    .line 9
    .line 10
    invoke-direct {p1, v0, p0}, Lr5/c;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget v0, Lx7/b;->b:I

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    const-string v1, "mode is null"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/google/protobuf/q;->p(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lh8/l;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {v0, v1, p1}, Lh8/l;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lx7/b;->c()Lh8/p0;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lf5/b;->b:Lh8/p0;

    .line 32
    .line 33
    invoke-virtual {p1}, Lh8/p0;->f()V

    .line 34
    .line 35
    .line 36
    return-void
.end method
