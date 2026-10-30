.class public final Lj/p;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ld0/c;


# instance fields
.field public final synthetic b:Lj/q;


# direct methods
.method public constructor <init>(Lj/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj/p;->b:Lj/q;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final create()Ljava/lang/Object;
    .locals 8

    .line 1
    new-instance v0, Lj/v;

    .line 2
    .line 3
    iget-object v1, p0, Lj/p;->b:Lj/q;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    iget-object v1, v2, Lj/q;->a:Lm/e;

    .line 7
    .line 8
    move-object v3, v2

    .line 9
    iget-object v2, v3, Lj/q;->b:Lm/e;

    .line 10
    .line 11
    move-object v4, v3

    .line 12
    iget-object v3, v4, Lj/q;->c:Lm/e;

    .line 13
    .line 14
    move-object v5, v4

    .line 15
    iget-object v4, v5, Lj/q;->d:Lm/e;

    .line 16
    .line 17
    move-object v6, v5

    .line 18
    iget-object v5, v6, Lj/q;->e:Lj/r;

    .line 19
    .line 20
    move-object v7, v6

    .line 21
    iget-object v6, v7, Lj/q;->f:Lj/r;

    .line 22
    .line 23
    iget-object v7, v7, Lj/q;->g:Ld0/d;

    .line 24
    .line 25
    invoke-direct/range {v0 .. v7}, Lj/v;-><init>(Lm/e;Lm/e;Lm/e;Lm/e;Lj/r;Lj/r;Ld0/d;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method
