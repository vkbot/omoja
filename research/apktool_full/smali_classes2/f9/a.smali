.class public abstract Lf9/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public static final a(Le9/b;)Le9/b;
    .locals 1

    .line 1
    invoke-interface {p0}, Le9/h;->a()Lg9/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lg9/e;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Li9/a1;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Li9/a1;-><init>(Le9/b;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method
