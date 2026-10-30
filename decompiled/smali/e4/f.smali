.class public final Le4/f;
.super Lz3/h;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final r:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Le4/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lz3/h;-><init>(Lz3/h;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Le4/f;->r:Landroid/graphics/RectF;

    .line 5
    .line 6
    iput-object p1, p0, Le4/f;->r:Landroid/graphics/RectF;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lz3/o;Landroid/graphics/RectF;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lz3/h;-><init>(Lz3/o;)V

    .line 10
    iput-object p2, p0, Le4/f;->r:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    new-instance v0, Le4/g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lz3/k;-><init>(Lz3/h;)V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Le4/g;->I:Le4/f;

    .line 7
    .line 8
    invoke-virtual {v0}, Lz3/k;->invalidateSelf()V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
