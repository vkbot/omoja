.class public final Ln7/f;
.super Ln7/d;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ln7/d;

.field public final b:Lu7/g;


# direct methods
.method public constructor <init>(Ln7/d;Lu7/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln7/f;->a:Ln7/d;

    .line 5
    .line 6
    const-string p1, "interceptor"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Ln7/f;->b:Lu7/g;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ln7/f;->a:Ln7/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln7/d;->e()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final f(Ln7/x0;Ln7/c;)Ln7/t;
    .locals 3

    .line 1
    iget-object v0, p0, Ln7/f;->b:Lu7/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lu7/f;

    .line 7
    .line 8
    iget-object v2, p0, Ln7/f;->a:Ln7/d;

    .line 9
    .line 10
    invoke-virtual {v2, p1, p2}, Ln7/d;->f(Ln7/x0;Ln7/c;)Ln7/t;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v1, v0, p1}, Lu7/f;-><init>(Lu7/g;Ln7/t;)V

    .line 15
    .line 16
    .line 17
    return-object v1
.end method
