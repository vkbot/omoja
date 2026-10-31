.class public final Lz3/g;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:Lz3/k;


# direct methods
.method public synthetic constructor <init>(Lz3/k;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lz3/g;->a:Lz3/k;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lz3/d;)Lz3/d;
    .registers 4

    .line 1
    instance-of v0, p1, Lz3/l;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_5
    new-instance v0, Lz3/b;

    .line 7
    .line 8
    iget-object v1, p0, Lz3/g;->a:Lz3/k;

    .line 9
    .line 10
    invoke-virtual {v1}, Lz3/k;->j()F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    neg-float v1, v1

    .line 15
    invoke-direct {v0, v1, p1}, Lz3/b;-><init>(FLz3/d;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method
