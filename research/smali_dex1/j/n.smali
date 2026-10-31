.class public final Lj/n;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ld0/c;


# instance fields
.field public final synthetic b:Lj/o;


# direct methods
.method public constructor <init>(Lj/o;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj/n;->b:Lj/o;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final create()Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance v0, Lj/k;

    .line 2
    .line 3
    iget-object v1, p0, Lj/n;->b:Lj/o;

    .line 4
    .line 5
    iget-object v2, v1, Lj/o;->a:Lc0/h;

    .line 6
    .line 7
    iget-object v1, v1, Lj/o;->b:Ld0/d;

    .line 8
    .line 9
    invoke-direct {v0, v2, v1}, Lj/k;-><init>(Lc0/h;Ld0/d;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
