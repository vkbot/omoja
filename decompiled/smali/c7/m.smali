.class public final Lc7/m;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:Lb7/u;

.field public final synthetic c:Lc7/n;


# direct methods
.method public constructor <init>(Lc7/n;Lb7/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc7/m;->c:Lc7/n;

    .line 5
    .line 6
    iput-object p2, p0, Lc7/m;->b:Lb7/u;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lb7/u;

    .line 2
    .line 3
    check-cast p2, Lb7/u;

    .line 4
    .line 5
    iget-object v0, p0, Lc7/m;->c:Lc7/n;

    .line 6
    .line 7
    iget-object v1, p0, Lc7/m;->b:Lb7/u;

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Lc7/n;->a(Lb7/u;Lb7/u;)F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {v0, p2, v1}, Lc7/n;->a(Lb7/u;Lb7/u;)F

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method
