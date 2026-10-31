.class public final Lz1/c;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:I

.field public final b:I

.field public final synthetic c:Lcom/github/clans/fab/FloatingActionButton;


# direct methods
.method public constructor <init>(Lcom/github/clans/fab/FloatingActionButton;Landroid/graphics/drawable/shapes/OvalShape;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lz1/c;->c:Lcom/github/clans/fab/FloatingActionButton;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->f()Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p2, :cond_16

    .line 12
    .line 13
    iget p2, p1, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 14
    .line 15
    iget v1, p1, Lcom/github/clans/fab/FloatingActionButton;->f:I

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/2addr v1, p2

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v1, v0

    .line 24
    :goto_17
    iput v1, p0, Lz1/c;->a:I

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->f()Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_28

    .line 31
    .line 32
    iget p2, p1, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 33
    .line 34
    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton;->g:I

    .line 35
    .line 36
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    add-int/2addr v0, p2

    .line 41
    :cond_28
    iput v0, p0, Lz1/c;->b:I

    .line 42
    .line 43
    iget-boolean p2, p1, Lcom/github/clans/fab/FloatingActionButton;->u:Z

    .line 44
    .line 45
    if-eqz p2, :cond_36

    .line 46
    .line 47
    iget p1, p1, Lcom/github/clans/fab/FloatingActionButton;->v:I

    .line 48
    .line 49
    add-int/2addr v1, p1

    .line 50
    iput v1, p0, Lz1/c;->a:I

    .line 51
    .line 52
    add-int/2addr v0, p1

    .line 53
    iput v0, p0, Lz1/c;->b:I

    .line 54
    .line 55
    :cond_36
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    sget-object v0, Lcom/github/clans/fab/FloatingActionButton;->W:Landroid/graphics/PorterDuffXfermode;

    .line 2
    .line 3
    iget-object v0, p0, Lz1/c;->c:Lcom/github/clans/fab/FloatingActionButton;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->c()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Lz1/c;->a:I

    .line 10
    .line 11
    sub-int/2addr v1, v2

    .line 12
    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->b()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v3, p0, Lz1/c;->b:I

    .line 17
    .line 18
    sub-int/2addr v0, v3

    .line 19
    invoke-virtual {p0, v2, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 20
    .line 21
    .line 22
    invoke-super {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
