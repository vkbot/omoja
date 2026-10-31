.class public final Lh8/s;
.super Lx7/e;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final b:Lh8/a0;


# direct methods
.method public constructor <init>(Lh8/a0;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh8/s;->b:Lh8/a0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d(Lx7/f;)V
    .registers 3

    .line 1
    new-instance v0, Lh8/r;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lh8/r;-><init>(Lx7/f;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lh8/s;->b:Lh8/a0;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lx7/b;->d(Lx7/d;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final f()Lx7/b;
    .registers 3

    .line 1
    new-instance v0, Lh8/q;

    .line 2
    .line 3
    iget-object v1, p0, Lh8/s;->b:Lh8/a0;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lh8/a;-><init>(Lx7/b;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
