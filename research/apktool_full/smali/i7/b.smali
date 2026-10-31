.class public final synthetic Li7/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# instance fields
.field public final synthetic a:Li7/g;

.field public final synthetic b:D

.field public final synthetic c:D


# direct methods
.method public synthetic constructor <init>(Li7/g;DD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li7/b;->a:Li7/g;

    .line 5
    .line 6
    iput-wide p2, p0, Li7/b;->b:D

    .line 7
    .line 8
    iput-wide p4, p0, Li7/b;->c:D

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 9

    .line 1
    check-cast p1, Li7/a;

    .line 2
    .line 3
    iget-object v0, p0, Li7/b;->a:Li7/g;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, Li7/a;->a:Li7/x;

    .line 9
    .line 10
    iget-wide v4, p1, Li7/x;->b:D

    .line 11
    .line 12
    iget-wide v6, p1, Li7/x;->c:D

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    new-array v8, p1, [F

    .line 16
    .line 17
    iget-wide v0, p0, Li7/b;->b:D

    .line 18
    .line 19
    iget-wide v2, p0, Li7/b;->c:D

    .line 20
    .line 21
    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    aget p1, v8, p1

    .line 26
    .line 27
    float-to-double v0, p1

    .line 28
    return-wide v0
.end method
