.class public final Landroidx/appcompat/app/k0;
.super Landroidx/appcompat/app/b;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/g;


# static fields
.field public static final y:Landroid/view/animation/AccelerateInterpolator;

.field public static final z:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public d:Landroidx/appcompat/widget/ActionBarContainer;

.field public e:Landroidx/appcompat/widget/z0;

.field public f:Landroidx/appcompat/widget/ActionBarContextView;

.field public final g:Landroid/view/View;

.field public h:Z

.field public i:Landroidx/appcompat/app/j0;

.field public j:Landroidx/appcompat/app/j0;

.field public k:Lf/b;

.field public l:Z

.field public final m:Ljava/util/ArrayList;

.field public n:I

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Lf/m;

.field public t:Z

.field public u:Z

.field public final v:Landroidx/appcompat/app/i0;

.field public final w:Landroidx/appcompat/app/i0;

.field public final x:Landroidx/appcompat/app/f0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/k0;->y:Landroid/view/animation/AccelerateInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/k0;->z:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/b;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/k0;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroidx/appcompat/app/k0;->n:I

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Landroidx/appcompat/app/k0;->o:Z

    .line 6
    iput-boolean v1, p0, Landroidx/appcompat/app/k0;->r:Z

    .line 7
    new-instance v2, Landroidx/appcompat/app/i0;

    invoke-direct {v2, p0, v0}, Landroidx/appcompat/app/i0;-><init>(Landroidx/appcompat/app/k0;I)V

    iput-object v2, p0, Landroidx/appcompat/app/k0;->v:Landroidx/appcompat/app/i0;

    .line 8
    new-instance v0, Landroidx/appcompat/app/i0;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/i0;-><init>(Landroidx/appcompat/app/k0;I)V

    iput-object v0, p0, Landroidx/appcompat/app/k0;->w:Landroidx/appcompat/app/i0;

    .line 9
    new-instance v0, Landroidx/appcompat/app/f0;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/f0;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/k0;->x:Landroidx/appcompat/app/f0;

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/k0;->c(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/k0;->g:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 3

    .line 14
    invoke-direct {p0}, Landroidx/appcompat/app/b;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/k0;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Landroidx/appcompat/app/k0;->n:I

    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Landroidx/appcompat/app/k0;->o:Z

    .line 19
    iput-boolean v1, p0, Landroidx/appcompat/app/k0;->r:Z

    .line 20
    new-instance v2, Landroidx/appcompat/app/i0;

    invoke-direct {v2, p0, v0}, Landroidx/appcompat/app/i0;-><init>(Landroidx/appcompat/app/k0;I)V

    iput-object v2, p0, Landroidx/appcompat/app/k0;->v:Landroidx/appcompat/app/i0;

    .line 21
    new-instance v0, Landroidx/appcompat/app/i0;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/i0;-><init>(Landroidx/appcompat/app/k0;I)V

    iput-object v0, p0, Landroidx/appcompat/app/k0;->w:Landroidx/appcompat/app/i0;

    .line 22
    new-instance v0, Landroidx/appcompat/app/f0;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/f0;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/k0;->x:Landroidx/appcompat/app/f0;

    .line 23
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/k0;->c(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Landroidx/appcompat/app/k0;->q:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/app/k0;->q:Z

    iget-object v2, p0, Landroidx/appcompat/app/k0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/k0;->e(Z)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Landroidx/appcompat/app/k0;->q:Z

    if-eqz v1, :cond_3

    iput-boolean v0, p0, Landroidx/appcompat/app/k0;->q:Z

    iget-object v1, p0, Landroidx/appcompat/app/k0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/k0;->e(Z)V

    :cond_3
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/app/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    sget-object v2, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, Lh0/c0;->c(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eqz v1, :cond_7

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/appcompat/app/k0;->e:Landroidx/appcompat/widget/z0;

    check-cast p1, Landroidx/appcompat/widget/a3;

    iget-object v1, p1, Landroidx/appcompat/widget/a3;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v1}, Lh0/q0;->a(Landroid/view/View;)Lh0/t0;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lh0/t0;->a(F)V

    invoke-virtual {v1, v4, v5}, Lh0/t0;->c(J)V

    new-instance v3, Lf/l;

    invoke-direct {v3, p1, v2}, Lf/l;-><init>(Landroidx/appcompat/widget/a3;I)V

    invoke-virtual {v1, v3}, Lh0/t0;->d(Lh0/u0;)V

    iget-object p0, p0, Landroidx/appcompat/app/k0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v0, v6, v7}, Landroidx/appcompat/widget/b;->e(IJ)Lh0/t0;

    move-result-object p0

    goto :goto_1

    :cond_4
    iget-object p1, p0, Landroidx/appcompat/app/k0;->e:Landroidx/appcompat/widget/z0;

    check-cast p1, Landroidx/appcompat/widget/a3;

    iget-object v1, p1, Landroidx/appcompat/widget/a3;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v1}, Lh0/q0;->a(Landroid/view/View;)Lh0/t0;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lh0/t0;->a(F)V

    invoke-virtual {v1, v6, v7}, Lh0/t0;->c(J)V

    new-instance v2, Lf/l;

    invoke-direct {v2, p1, v0}, Lf/l;-><init>(Landroidx/appcompat/widget/a3;I)V

    invoke-virtual {v1, v2}, Lh0/t0;->d(Lh0/u0;)V

    iget-object p0, p0, Landroidx/appcompat/app/k0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v3, v4, v5}, Landroidx/appcompat/widget/b;->e(IJ)Lh0/t0;

    move-result-object p0

    move-object v8, v1

    move-object v1, p0

    move-object p0, v8

    :goto_1
    new-instance p1, Lf/m;

    invoke-direct {p1}, Lf/m;-><init>()V

    iget-object v0, p1, Lf/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lh0/t0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v1

    goto :goto_2

    :cond_5
    const-wide/16 v1, 0x0

    :goto_2
    iget-object v3, p0, Lh0/t0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    :cond_6
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lf/m;->b()V

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    iget-object p1, p0, Landroidx/appcompat/app/k0;->e:Landroidx/appcompat/widget/z0;

    check-cast p1, Landroidx/appcompat/widget/a3;

    iget-object p1, p1, Landroidx/appcompat/widget/a3;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Landroidx/appcompat/app/k0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_3

    :cond_8
    iget-object p1, p0, Landroidx/appcompat/app/k0;->e:Landroidx/appcompat/widget/z0;

    check-cast p1, Landroidx/appcompat/widget/a3;

    iget-object p1, p1, Landroidx/appcompat/widget/a3;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Landroidx/appcompat/app/k0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public final b()Landroid/content/Context;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/app/k0;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/app/k0;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroidx/appcompat/R$attr;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Landroidx/appcompat/app/k0;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroidx/appcompat/app/k0;->b:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/k0;->a:Landroid/content/Context;

    iput-object v0, p0, Landroidx/appcompat/app/k0;->b:Landroid/content/Context;

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/app/k0;->b:Landroid/content/Context;

    return-object p0
.end method

.method public final c(Landroid/view/View;)V
    .locals 5

    sget v0, Landroidx/appcompat/R$id;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Landroidx/appcompat/app/k0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroidx/appcompat/widget/g;)V

    :cond_0
    sget v0, Landroidx/appcompat/R$id;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/widget/z0;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/appcompat/widget/z0;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_8

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Landroidx/appcompat/widget/z0;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/appcompat/app/k0;->e:Landroidx/appcompat/widget/z0;

    sget v0, Landroidx/appcompat/R$id;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Landroidx/appcompat/app/k0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    sget v0, Landroidx/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, Landroidx/appcompat/app/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, Landroidx/appcompat/app/k0;->e:Landroidx/appcompat/widget/z0;

    if-eqz v0, :cond_7

    iget-object v1, p0, Landroidx/appcompat/app/k0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    check-cast v0, Landroidx/appcompat/widget/a3;

    iget-object p1, v0, Landroidx/appcompat/widget/a3;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/k0;->a:Landroid/content/Context;

    iget-object v0, p0, Landroidx/appcompat/app/k0;->e:Landroidx/appcompat/widget/z0;

    check-cast v0, Landroidx/appcompat/widget/a3;

    iget v0, v0, Landroidx/appcompat/widget/a3;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    iput-boolean v1, p0, Landroidx/appcompat/app/k0;->h:Z

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v0, p0, Landroidx/appcompat/app/k0;->e:Landroidx/appcompat/widget/z0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroidx/appcompat/R$bool;->abc_action_bar_embed_tabs:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/k0;->d(Z)V

    iget-object p1, p0, Landroidx/appcompat/app/k0;->a:Landroid/content/Context;

    sget-object v0, Landroidx/appcompat/R$styleable;->ActionBar:[I

    sget v3, Landroidx/appcompat/R$attr;->actionBarStyle:I

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Landroidx/appcompat/R$styleable;->ActionBar_hideOnContentScroll:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/appcompat/app/k0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Z

    if-eqz v3, :cond_4

    iput-boolean v1, p0, Landroidx/appcompat/app/k0;->u:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    sget v0, Landroidx/appcompat/R$styleable;->ActionBar_elevation:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_6

    int-to-float v0, v0

    iget-object p0, p0, Landroidx/appcompat/app/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    sget-object v1, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0, v0}, Lh0/f0;->s(Landroid/view/View;F)V

    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-class p1, Landroidx/appcompat/app/k0;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, " can only be used with a compatible window decor layout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_9
    const-string p1, "null"

    :goto_3
    const-string v0, "Can\'t make a decor toolbar out of "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Z)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/app/k0;->e:Landroidx/appcompat/widget/z0;

    check-cast p1, Landroidx/appcompat/widget/a3;

    iget-object v1, p1, Landroidx/appcompat/widget/a3;->c:Landroidx/appcompat/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p1, Landroidx/appcompat/widget/a3;->a:Landroidx/appcompat/widget/Toolbar;

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Landroidx/appcompat/widget/a3;->c:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v0, p1, Landroidx/appcompat/widget/a3;->c:Landroidx/appcompat/widget/ScrollingTabContainerView;

    iget-object p1, p0, Landroidx/appcompat/app/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    iget-object p1, p0, Landroidx/appcompat/app/k0;->e:Landroidx/appcompat/widget/z0;

    check-cast p1, Landroidx/appcompat/widget/a3;

    iget-object v1, p1, Landroidx/appcompat/widget/a3;->c:Landroidx/appcompat/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p1, Landroidx/appcompat/widget/a3;->a:Landroidx/appcompat/widget/Toolbar;

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Landroidx/appcompat/widget/a3;->c:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iput-object v0, p1, Landroidx/appcompat/widget/a3;->c:Landroidx/appcompat/widget/ScrollingTabContainerView;

    :goto_0
    iget-object p1, p0, Landroidx/appcompat/app/k0;->e:Landroidx/appcompat/widget/z0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/appcompat/app/k0;->e:Landroidx/appcompat/widget/z0;

    check-cast p1, Landroidx/appcompat/widget/a3;

    iget-object p1, p1, Landroidx/appcompat/widget/a3;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V

    iget-object p0, p0, Landroidx/appcompat/app/k0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method public final e(Z)V
    .locals 11

    iget-boolean v0, p0, Landroidx/appcompat/app/k0;->p:Z

    iget-boolean v1, p0, Landroidx/appcompat/app/k0;->q:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    const-wide/16 v4, 0xfa

    const/4 v1, 0x0

    iget-object v6, p0, Landroidx/appcompat/app/k0;->g:Landroid/view/View;

    iget-object v7, p0, Landroidx/appcompat/app/k0;->x:Landroidx/appcompat/app/f0;

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroidx/appcompat/app/k0;->r:Z

    if-nez v0, :cond_1a

    iput-boolean v2, p0, Landroidx/appcompat/app/k0;->r:Z

    iget-object v0, p0, Landroidx/appcompat/app/k0;->s:Lf/m;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lf/m;->a()V

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/app/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget v0, p0, Landroidx/appcompat/app/k0;->n:I

    iget-object v9, p0, Landroidx/appcompat/app/k0;->w:Landroidx/appcompat/app/i0;

    const/4 v10, 0x0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroidx/appcompat/app/k0;->t:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_c

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Landroidx/appcompat/app/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_4

    filled-new-array {v3, v3}, [I

    move-result-object p1

    iget-object v3, p0, Landroidx/appcompat/app/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    :cond_4
    iget-object p1, p0, Landroidx/appcompat/app/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    new-instance p1, Lf/m;

    invoke-direct {p1}, Lf/m;-><init>()V

    iget-object v2, p0, Landroidx/appcompat/app/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v2}, Lh0/q0;->a(Landroid/view/View;)Lh0/t0;

    move-result-object v2

    invoke-virtual {v2, v10}, Lh0/t0;->e(F)V

    iget-object v3, v2, Lh0/t0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_6

    if-eqz v7, :cond_5

    new-instance v1, Lh0/s0;

    invoke-direct {v1, v2, v7, v3}, Lh0/s0;-><init>(Lh0/t0;Landroidx/appcompat/app/f0;Landroid/view/View;)V

    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_6
    iget-boolean v1, p1, Lf/m;->e:Z

    iget-object v3, p1, Lf/m;->a:Ljava/util/ArrayList;

    if-nez v1, :cond_7

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-boolean v1, p0, Landroidx/appcompat/app/k0;->o:Z

    if-eqz v1, :cond_8

    if-eqz v6, :cond_8

    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {v6}, Lh0/q0;->a(Landroid/view/View;)Lh0/t0;

    move-result-object v0

    invoke-virtual {v0, v10}, Lh0/t0;->e(F)V

    iget-boolean v1, p1, Lf/m;->e:Z

    if-nez v1, :cond_8

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    sget-object v0, Landroidx/appcompat/app/k0;->z:Landroid/view/animation/DecelerateInterpolator;

    iget-boolean v1, p1, Lf/m;->e:Z

    if-nez v1, :cond_9

    iput-object v0, p1, Lf/m;->c:Landroid/view/animation/Interpolator;

    :cond_9
    if-nez v1, :cond_a

    iput-wide v4, p1, Lf/m;->b:J

    :cond_a
    if-nez v1, :cond_b

    iput-object v9, p1, Lf/m;->d:Lh0/u0;

    :cond_b
    iput-object p1, p0, Landroidx/appcompat/app/k0;->s:Lf/m;

    invoke-virtual {p1}, Lf/m;->b()V

    goto :goto_1

    :cond_c
    iget-object p1, p0, Landroidx/appcompat/app/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v8}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Landroidx/appcompat/app/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean p1, p0, Landroidx/appcompat/app/k0;->o:Z

    if-eqz p1, :cond_d

    if-eqz v6, :cond_d

    invoke-virtual {v6, v10}, Landroid/view/View;->setTranslationY(F)V

    :cond_d
    invoke-virtual {v9}, Landroidx/appcompat/app/i0;->b()V

    :goto_1
    iget-object p0, p0, Landroidx/appcompat/app/k0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p0, :cond_1a

    sget-object p1, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lh0/d0;->c(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_e
    iget-boolean v0, p0, Landroidx/appcompat/app/k0;->r:Z

    if-eqz v0, :cond_1a

    iput-boolean v3, p0, Landroidx/appcompat/app/k0;->r:Z

    iget-object v0, p0, Landroidx/appcompat/app/k0;->s:Lf/m;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lf/m;->a()V

    :cond_f
    iget v0, p0, Landroidx/appcompat/app/k0;->n:I

    iget-object v9, p0, Landroidx/appcompat/app/k0;->v:Landroidx/appcompat/app/i0;

    if-nez v0, :cond_19

    iget-boolean v0, p0, Landroidx/appcompat/app/k0;->t:Z

    if-nez v0, :cond_10

    if-eqz p1, :cond_19

    :cond_10
    iget-object v0, p0, Landroidx/appcompat/app/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Landroidx/appcompat/app/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    new-instance v0, Lf/m;

    invoke-direct {v0}, Lf/m;-><init>()V

    iget-object v8, p0, Landroidx/appcompat/app/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    if-eqz p1, :cond_11

    filled-new-array {v3, v3}, [I

    move-result-object p1

    iget-object v3, p0, Landroidx/appcompat/app/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v8, p1

    :cond_11
    iget-object p1, p0, Landroidx/appcompat/app/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, Lh0/q0;->a(Landroid/view/View;)Lh0/t0;

    move-result-object p1

    invoke-virtual {p1, v8}, Lh0/t0;->e(F)V

    iget-object v2, p1, Lh0/t0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_13

    if-eqz v7, :cond_12

    new-instance v1, Lh0/s0;

    invoke-direct {v1, p1, v7, v2}, Lh0/s0;-><init>(Lh0/t0;Landroidx/appcompat/app/f0;Landroid/view/View;)V

    :cond_12
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_13
    iget-boolean v1, v0, Lf/m;->e:Z

    iget-object v2, v0, Lf/m;->a:Ljava/util/ArrayList;

    if-nez v1, :cond_14

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-boolean p1, p0, Landroidx/appcompat/app/k0;->o:Z

    if-eqz p1, :cond_15

    if-eqz v6, :cond_15

    invoke-static {v6}, Lh0/q0;->a(Landroid/view/View;)Lh0/t0;

    move-result-object p1

    invoke-virtual {p1, v8}, Lh0/t0;->e(F)V

    iget-boolean v1, v0, Lf/m;->e:Z

    if-nez v1, :cond_15

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    sget-object p1, Landroidx/appcompat/app/k0;->y:Landroid/view/animation/AccelerateInterpolator;

    iget-boolean v1, v0, Lf/m;->e:Z

    if-nez v1, :cond_16

    iput-object p1, v0, Lf/m;->c:Landroid/view/animation/Interpolator;

    :cond_16
    if-nez v1, :cond_17

    iput-wide v4, v0, Lf/m;->b:J

    :cond_17
    if-nez v1, :cond_18

    iput-object v9, v0, Lf/m;->d:Lh0/u0;

    :cond_18
    iput-object v0, p0, Landroidx/appcompat/app/k0;->s:Lf/m;

    invoke-virtual {v0}, Lf/m;->b()V

    goto :goto_2

    :cond_19
    invoke-virtual {v9}, Landroidx/appcompat/app/i0;->b()V

    :cond_1a
    :goto_2
    return-void
.end method
