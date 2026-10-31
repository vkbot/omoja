.class public final synthetic Landroidx/graphics/shapes/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroidx/graphics/shapes/FindMinimumFunction;


# instance fields
.field public final synthetic a:Landroidx/graphics/shapes/Cubic;

.field public final synthetic b:Landroidx/graphics/shapes/AngleMeasurer;

.field public final synthetic c:F

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Landroidx/graphics/shapes/Cubic;Landroidx/graphics/shapes/AngleMeasurer;FF)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/graphics/shapes/a;->a:Landroidx/graphics/shapes/Cubic;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/graphics/shapes/a;->b:Landroidx/graphics/shapes/AngleMeasurer;

    .line 7
    .line 8
    iput p3, p0, Landroidx/graphics/shapes/a;->c:F

    .line 9
    .line 10
    iput p4, p0, Landroidx/graphics/shapes/a;->d:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(F)F
    .registers 6

    .line 1
    iget v0, p0, Landroidx/graphics/shapes/a;->c:F

    .line 2
    .line 3
    iget v1, p0, Landroidx/graphics/shapes/a;->d:F

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/graphics/shapes/a;->a:Landroidx/graphics/shapes/Cubic;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/graphics/shapes/a;->b:Landroidx/graphics/shapes/AngleMeasurer;

    .line 8
    .line 9
    invoke-static {v2, v3, v0, v1, p1}, Landroidx/graphics/shapes/AngleMeasurer;->a(Landroidx/graphics/shapes/Cubic;Landroidx/graphics/shapes/AngleMeasurer;FFF)F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method
