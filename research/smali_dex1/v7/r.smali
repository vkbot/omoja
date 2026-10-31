.class public final Lv7/r;
.super Ln7/g;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Lv7/k;

.field public final b:Ln7/g;


# direct methods
.method public constructor <init>(Lv7/k;Ln7/g;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv7/r;->a:Lv7/k;

    .line 5
    .line 6
    iput-object p2, p0, Lv7/r;->b:Ln7/g;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lj4/b;Ln7/v0;)Ln7/e;
    .registers 4

    .line 1
    iget-object v0, p0, Lv7/r;->b:Ln7/g;

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ln7/g;->a(Lj4/b;Ln7/v0;)Ln7/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance p2, Lv7/p;

    .line 10
    .line 11
    invoke-direct {p2, p0, p1}, Lv7/p;-><init>(Lv7/r;Ln7/e;)V

    .line 12
    .line 13
    .line 14
    return-object p2

    .line 15
    :cond_e
    new-instance p1, Lv7/q;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Lv7/q;-><init>(Lv7/r;)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method
