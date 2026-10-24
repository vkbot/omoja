.class public Landroidx/appcompat/view/menu/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/appcompat/view/menu/p;

.field public final c:Z

.field public final d:I

.field public final e:I

.field public f:Landroid/view/View;

.field public g:I

.field public h:Z

.field public i:Landroidx/appcompat/view/menu/b0;

.field public j:Landroidx/appcompat/view/menu/y;

.field public k:Landroid/widget/PopupWindow$OnDismissListener;

.field public final l:Landroidx/appcompat/view/menu/z;


# direct methods
.method public constructor <init>(IILandroid/content/Context;Landroid/view/View;Landroidx/appcompat/view/menu/p;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x800003

    .line 3
    iput v0, p0, Landroidx/appcompat/view/menu/a0;->g:I

    .line 4
    new-instance v0, Landroidx/appcompat/view/menu/z;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/z;-><init>(Landroidx/appcompat/view/menu/a0;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/a0;->l:Landroidx/appcompat/view/menu/z;

    .line 5
    iput-object p3, p0, Landroidx/appcompat/view/menu/a0;->a:Landroid/content/Context;

    .line 6
    iput-object p5, p0, Landroidx/appcompat/view/menu/a0;->b:Landroidx/appcompat/view/menu/p;

    .line 7
    iput-object p4, p0, Landroidx/appcompat/view/menu/a0;->f:Landroid/view/View;

    .line 8
    iput-boolean p6, p0, Landroidx/appcompat/view/menu/a0;->c:Z

    .line 9
    iput p1, p0, Landroidx/appcompat/view/menu/a0;->d:I

    .line 10
    iput p2, p0, Landroidx/appcompat/view/menu/a0;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/p;Landroid/view/View;ZI)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p5

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move v6, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/a0;-><init>(IILandroid/content/Context;Landroid/view/View;Landroidx/appcompat/view/menu/p;Z)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/appcompat/view/menu/y;
    .locals 14

    iget-object v0, p0, Landroidx/appcompat/view/menu/a0;->j:Landroidx/appcompat/view/menu/y;

    if-nez v0, :cond_2

    const-string v0, "window"

    iget-object v1, p0, Landroidx/appcompat/view/menu/a0;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v0, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/appcompat/R$dimen;->abc_cascading_menus_min_smallest_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Landroidx/appcompat/view/menu/k;

    iget-object v2, p0, Landroidx/appcompat/view/menu/a0;->a:Landroid/content/Context;

    iget-object v3, p0, Landroidx/appcompat/view/menu/a0;->f:Landroid/view/View;

    iget v4, p0, Landroidx/appcompat/view/menu/a0;->d:I

    iget v5, p0, Landroidx/appcompat/view/menu/a0;->e:I

    iget-boolean v6, p0, Landroidx/appcompat/view/menu/a0;->c:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/view/menu/k;-><init>(Landroid/content/Context;Landroid/view/View;IIZ)V

    goto :goto_1

    :cond_1
    new-instance v0, Landroidx/appcompat/view/menu/h0;

    iget-object v10, p0, Landroidx/appcompat/view/menu/a0;->a:Landroid/content/Context;

    iget-object v12, p0, Landroidx/appcompat/view/menu/a0;->b:Landroidx/appcompat/view/menu/p;

    iget-object v11, p0, Landroidx/appcompat/view/menu/a0;->f:Landroid/view/View;

    iget v8, p0, Landroidx/appcompat/view/menu/a0;->d:I

    iget v9, p0, Landroidx/appcompat/view/menu/a0;->e:I

    iget-boolean v13, p0, Landroidx/appcompat/view/menu/a0;->c:Z

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Landroidx/appcompat/view/menu/h0;-><init>(IILandroid/content/Context;Landroid/view/View;Landroidx/appcompat/view/menu/p;Z)V

    :goto_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/a0;->b:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/y;->o(Landroidx/appcompat/view/menu/p;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/a0;->l:Landroidx/appcompat/view/menu/z;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/y;->u(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/a0;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/y;->q(Landroid/view/View;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/a0;->i:Landroidx/appcompat/view/menu/b0;

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/c0;->k(Landroidx/appcompat/view/menu/b0;)V

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/a0;->h:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/y;->r(Z)V

    iget v1, p0, Landroidx/appcompat/view/menu/a0;->g:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/y;->s(I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/a0;->j:Landroidx/appcompat/view/menu/y;

    :cond_2
    iget-object p0, p0, Landroidx/appcompat/view/menu/a0;->j:Landroidx/appcompat/view/menu/y;

    return-object p0
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/a0;->j:Landroidx/appcompat/view/menu/y;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/appcompat/view/menu/g0;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/a0;->j:Landroidx/appcompat/view/menu/y;

    iget-object p0, p0, Landroidx/appcompat/view/menu/a0;->k:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public final d(IIZZ)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/a0;->a()Landroidx/appcompat/view/menu/y;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroidx/appcompat/view/menu/y;->v(Z)V

    if-eqz p3, :cond_1

    iget p3, p0, Landroidx/appcompat/view/menu/a0;->g:I

    iget-object p4, p0, Landroidx/appcompat/view/menu/a0;->f:Landroid/view/View;

    sget-object v1, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p4}, Lh0/a0;->d(Landroid/view/View;)I

    move-result p4

    invoke-static {p3, p4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p3

    and-int/lit8 p3, p3, 0x7

    const/4 p4, 0x5

    if-ne p3, p4, :cond_0

    iget-object p3, p0, Landroidx/appcompat/view/menu/a0;->f:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p1, p3

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/y;->t(I)V

    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/y;->w(I)V

    iget-object p0, p0, Landroidx/appcompat/view/menu/a0;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x42400000    # 48.0f

    mul-float/2addr p0, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p0, p3

    float-to-int p0, p0

    new-instance p3, Landroid/graphics/Rect;

    sub-int p4, p1, p0

    sub-int v1, p2, p0

    add-int/2addr p1, p0

    add-int/2addr p2, p0

    invoke-direct {p3, p4, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, v0, Landroidx/appcompat/view/menu/y;->a:Landroid/graphics/Rect;

    :cond_1
    invoke-interface {v0}, Landroidx/appcompat/view/menu/g0;->e()V

    return-void
.end method
