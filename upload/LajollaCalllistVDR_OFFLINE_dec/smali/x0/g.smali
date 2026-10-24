.class public final Lx0/g;
.super Lx0/j;
.source "SourceFile"


# instance fields
.field public e:Ly/b;

.field public f:F

.field public g:Ly/b;

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:Landroid/graphics/Paint$Cap;

.field public n:Landroid/graphics/Paint$Join;

.field public o:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lx0/j;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lx0/g;->f:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, p0, Lx0/g;->h:F

    .line 4
    iput v1, p0, Lx0/g;->i:F

    .line 5
    iput v0, p0, Lx0/g;->j:F

    .line 6
    iput v1, p0, Lx0/g;->k:F

    .line 7
    iput v0, p0, Lx0/g;->l:F

    .line 8
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lx0/g;->m:Landroid/graphics/Paint$Cap;

    .line 9
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lx0/g;->n:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    .line 10
    iput v0, p0, Lx0/g;->o:F

    return-void
.end method

.method public constructor <init>(Lx0/g;)V
    .locals 2

    .line 11
    invoke-direct {p0, p1}, Lx0/j;-><init>(Lx0/j;)V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lx0/g;->f:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    iput v1, p0, Lx0/g;->h:F

    .line 14
    iput v1, p0, Lx0/g;->i:F

    .line 15
    iput v0, p0, Lx0/g;->j:F

    .line 16
    iput v1, p0, Lx0/g;->k:F

    .line 17
    iput v0, p0, Lx0/g;->l:F

    .line 18
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lx0/g;->m:Landroid/graphics/Paint$Cap;

    .line 19
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lx0/g;->n:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    .line 20
    iput v0, p0, Lx0/g;->o:F

    .line 21
    iget-object v0, p1, Lx0/g;->e:Ly/b;

    iput-object v0, p0, Lx0/g;->e:Ly/b;

    .line 22
    iget v0, p1, Lx0/g;->f:F

    iput v0, p0, Lx0/g;->f:F

    .line 23
    iget v0, p1, Lx0/g;->h:F

    iput v0, p0, Lx0/g;->h:F

    .line 24
    iget-object v0, p1, Lx0/g;->g:Ly/b;

    iput-object v0, p0, Lx0/g;->g:Ly/b;

    .line 25
    iget v0, p1, Lx0/j;->c:I

    iput v0, p0, Lx0/j;->c:I

    .line 26
    iget v0, p1, Lx0/g;->i:F

    iput v0, p0, Lx0/g;->i:F

    .line 27
    iget v0, p1, Lx0/g;->j:F

    iput v0, p0, Lx0/g;->j:F

    .line 28
    iget v0, p1, Lx0/g;->k:F

    iput v0, p0, Lx0/g;->k:F

    .line 29
    iget v0, p1, Lx0/g;->l:F

    iput v0, p0, Lx0/g;->l:F

    .line 30
    iget-object v0, p1, Lx0/g;->m:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lx0/g;->m:Landroid/graphics/Paint$Cap;

    .line 31
    iget-object v0, p1, Lx0/g;->n:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lx0/g;->n:Landroid/graphics/Paint$Join;

    .line 32
    iget p1, p1, Lx0/g;->o:F

    iput p1, p0, Lx0/g;->o:F

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lx0/g;->g:Ly/b;

    invoke-virtual {v0}, Ly/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lx0/g;->e:Ly/b;

    invoke-virtual {p0}, Ly/b;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final b([I)Z
    .locals 5

    iget-object v0, p0, Lx0/g;->g:Ly/b;

    invoke-virtual {v0}, Ly/b;->b()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Ly/b;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v1, p1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget v4, v0, Ly/b;->c:I

    if-eq v1, v4, :cond_0

    iput v1, v0, Ly/b;->c:I

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object p0, p0, Lx0/g;->e:Ly/b;

    invoke-virtual {p0}, Ly/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ly/b;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v1, p1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget v1, p0, Ly/b;->c:I

    if-eq p1, v1, :cond_1

    iput p1, p0, Ly/b;->c:I

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    or-int p0, v2, v0

    return p0
.end method

.method public getFillAlpha()F
    .locals 0

    iget p0, p0, Lx0/g;->i:F

    return p0
.end method

.method public getFillColor()I
    .locals 0
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget-object p0, p0, Lx0/g;->g:Ly/b;

    iget p0, p0, Ly/b;->c:I

    return p0
.end method

.method public getStrokeAlpha()F
    .locals 0

    iget p0, p0, Lx0/g;->h:F

    return p0
.end method

.method public getStrokeColor()I
    .locals 0
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget-object p0, p0, Lx0/g;->e:Ly/b;

    iget p0, p0, Ly/b;->c:I

    return p0
.end method

.method public getStrokeWidth()F
    .locals 0

    iget p0, p0, Lx0/g;->f:F

    return p0
.end method

.method public getTrimPathEnd()F
    .locals 0

    iget p0, p0, Lx0/g;->k:F

    return p0
.end method

.method public getTrimPathOffset()F
    .locals 0

    iget p0, p0, Lx0/g;->l:F

    return p0
.end method

.method public getTrimPathStart()F
    .locals 0

    iget p0, p0, Lx0/g;->j:F

    return p0
.end method

.method public setFillAlpha(F)V
    .locals 0

    iput p1, p0, Lx0/g;->i:F

    return-void
.end method

.method public setFillColor(I)V
    .locals 0

    iget-object p0, p0, Lx0/g;->g:Ly/b;

    iput p1, p0, Ly/b;->c:I

    return-void
.end method

.method public setStrokeAlpha(F)V
    .locals 0

    iput p1, p0, Lx0/g;->h:F

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    iget-object p0, p0, Lx0/g;->e:Ly/b;

    iput p1, p0, Ly/b;->c:I

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Lx0/g;->f:F

    return-void
.end method

.method public setTrimPathEnd(F)V
    .locals 0

    iput p1, p0, Lx0/g;->k:F

    return-void
.end method

.method public setTrimPathOffset(F)V
    .locals 0

    iput p1, p0, Lx0/g;->l:F

    return-void
.end method

.method public setTrimPathStart(F)V
    .locals 0

    iput p1, p0, Lx0/g;->j:F

    return-void
.end method
