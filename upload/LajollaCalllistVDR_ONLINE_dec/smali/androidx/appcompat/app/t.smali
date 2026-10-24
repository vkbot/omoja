.class public final Landroidx/appcompat/app/t;
.super Le/m;
.source "SourceFile"


# instance fields
.field public final synthetic c:Landroidx/appcompat/app/a0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/a0;Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/t;->c:Landroidx/appcompat/app/a0;

    invoke-direct {p0, p2}, Le/m;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/t;->c:Landroidx/appcompat/app/a0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a0;->o(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Le/m;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    invoke-super {p0, p1}, Le/m;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v2, p0, Landroidx/appcompat/app/t;->c:Landroidx/appcompat/app/a0;

    invoke-virtual {v2}, Landroidx/appcompat/app/a0;->w()V

    iget-object v3, v2, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/app/k0;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    iget-object v3, v3, Landroidx/appcompat/app/k0;->i:Landroidx/appcompat/app/j0;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v3, Landroidx/appcompat/app/j0;->e:Landroidx/appcompat/view/menu/p;

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v5

    if-eq v5, v1, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    invoke-virtual {v3, v5}, Landroidx/appcompat/view/menu/p;->setQwertyMode(Z)V

    invoke-virtual {v3, v0, p1, v4}, Landroidx/appcompat/view/menu/p;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v4

    :goto_2
    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, v2, Landroidx/appcompat/app/a0;->H:Landroidx/appcompat/app/z;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v0, v3, p1}, Landroidx/appcompat/app/a0;->z(Landroidx/appcompat/app/z;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, v2, Landroidx/appcompat/app/a0;->H:Landroidx/appcompat/app/z;

    if-eqz p1, :cond_5

    iput-boolean v1, p1, Landroidx/appcompat/app/z;->l:Z

    goto :goto_3

    :cond_4
    iget-object v0, v2, Landroidx/appcompat/app/a0;->H:Landroidx/appcompat/app/z;

    if-nez v0, :cond_6

    invoke-virtual {v2, v4}, Landroidx/appcompat/app/a0;->u(I)Landroidx/appcompat/app/z;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Landroidx/appcompat/app/a0;->A(Landroidx/appcompat/app/z;Landroid/view/KeyEvent;)Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v0, v3, p1}, Landroidx/appcompat/app/a0;->z(Landroidx/appcompat/app/z;ILandroid/view/KeyEvent;)Z

    move-result p1

    iput-boolean v4, v0, Landroidx/appcompat/app/z;->k:Z

    if-eqz p1, :cond_6

    :cond_5
    :goto_3
    move p1, v1

    goto :goto_4

    :cond_6
    move p1, v4

    :goto_4
    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    move v1, v4

    :cond_8
    :goto_5
    return v1
.end method

.method public final onContentChanged()V
    .locals 0

    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    instance-of v0, p2, Landroidx/appcompat/view/menu/p;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Le/m;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onCreatePanelView(I)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1}, Le/m;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Le/m;->onMenuOpened(ILandroid/view/Menu;)Z

    const/16 p2, 0x6c

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/appcompat/app/t;->c:Landroidx/appcompat/app/a0;

    if-ne p1, p2, :cond_2

    invoke-virtual {v1}, Landroidx/appcompat/app/a0;->w()V

    iget-object p1, v1, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/app/k0;

    if-eqz p1, :cond_3

    iget-boolean p2, p1, Landroidx/appcompat/app/k0;->l:Z

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p1, Landroidx/appcompat/app/k0;->l:Z

    iget-object p1, p1, Landroidx/appcompat/app/k0;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    :goto_0
    return v0
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    invoke-super {p0, p1, p2}, Le/m;->onPanelClosed(ILandroid/view/Menu;)V

    iget-object p2, p0, Landroidx/appcompat/app/t;->c:Landroidx/appcompat/app/a0;

    const/16 v0, 0x6c

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Landroidx/appcompat/app/a0;->w()V

    iget-object p1, p2, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/app/k0;

    if-eqz p1, :cond_4

    iget-boolean p2, p1, Landroidx/appcompat/app/k0;->l:Z

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p1, Landroidx/appcompat/app/k0;->l:Z

    iget-object p1, p1, Landroidx/appcompat/app/k0;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1

    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/a0;->u(I)Landroidx/appcompat/app/z;

    move-result-object p1

    iget-boolean v0, p1, Landroidx/appcompat/app/z;->m:Z

    if-eqz v0, :cond_4

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/app/a0;->m(Landroidx/appcompat/app/z;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    :goto_0
    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    instance-of v0, p3, Landroidx/appcompat/view/menu/p;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/appcompat/view/menu/p;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/appcompat/view/menu/p;->x:Z

    :cond_2
    invoke-super {p0, p1, p2, p3}, Le/m;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz v0, :cond_3

    iput-boolean v1, v0, Landroidx/appcompat/view/menu/p;->x:Z

    :cond_3
    return p1
.end method

.method public final onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/appcompat/app/t;->c:Landroidx/appcompat/app/a0;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a0;->u(I)Landroidx/appcompat/app/z;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    if-eqz v0, :cond_0

    invoke-super {p0, p1, v0, p3}, Le/m;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Le/m;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    :goto_0
    return-void
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 9

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/t;->c:Landroidx/appcompat/app/a0;

    iget-boolean v1, v0, Landroidx/appcompat/app/a0;->t:Z

    if-eqz v1, :cond_16

    if-eqz p2, :cond_0

    goto/16 :goto_8

    .line 3
    :cond_0
    new-instance p2, Le/f;

    iget-object v1, v0, Landroidx/appcompat/app/a0;->e:Landroid/content/Context;

    invoke-direct {p2, v1, p1}, Le/f;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 4
    iget-object p1, v0, Landroidx/appcompat/app/a0;->o:Le/b;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Le/b;->a()V

    .line 6
    :cond_1
    new-instance p1, Landroidx/appcompat/app/s;

    invoke-direct {p1, v0, p2}, Landroidx/appcompat/app/s;-><init>(Landroidx/appcompat/app/a0;Le/f;)V

    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/app/a0;->w()V

    .line 8
    iget-object v1, v0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/app/k0;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 9
    iget-object v5, v0, Landroidx/appcompat/app/a0;->h:Landroidx/appcompat/app/n;

    if-eqz v1, :cond_4

    .line 10
    iget-object v6, v1, Landroidx/appcompat/app/k0;->i:Landroidx/appcompat/app/j0;

    if-eqz v6, :cond_2

    .line 11
    invoke-virtual {v6}, Landroidx/appcompat/app/j0;->a()V

    .line 12
    :cond_2
    iget-object v6, v1, Landroidx/appcompat/app/k0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 13
    iget-object v6, v1, Landroidx/appcompat/app/k0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    .line 14
    new-instance v6, Landroidx/appcompat/app/j0;

    iget-object v7, v1, Landroidx/appcompat/app/k0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v1, v7, p1}, Landroidx/appcompat/app/j0;-><init>(Landroidx/appcompat/app/k0;Landroid/content/Context;Landroidx/appcompat/app/s;)V

    .line 15
    iget-object v7, v6, Landroidx/appcompat/app/j0;->e:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/p;->y()V

    .line 16
    :try_start_0
    iget-object v8, v6, Landroidx/appcompat/app/j0;->f:Le/a;

    invoke-interface {v8, v6, v7}, Le/a;->a(Le/b;Landroidx/appcompat/view/menu/p;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/p;->x()V

    if-eqz v8, :cond_3

    .line 18
    iput-object v6, v1, Landroidx/appcompat/app/k0;->i:Landroidx/appcompat/app/j0;

    .line 19
    invoke-virtual {v6}, Landroidx/appcompat/app/j0;->g()V

    .line 20
    iget-object v7, v1, Landroidx/appcompat/app/k0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/ActionBarContextView;->f(Le/b;)V

    .line 21
    invoke-virtual {v1, v3}, Landroidx/appcompat/app/k0;->a(Z)V

    goto :goto_0

    :cond_3
    move-object v6, v4

    .line 22
    :goto_0
    iput-object v6, v0, Landroidx/appcompat/app/a0;->o:Le/b;

    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    .line 23
    invoke-interface {v5}, Landroidx/appcompat/app/n;->b()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 24
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/p;->x()V

    .line 25
    throw p1

    .line 26
    :cond_4
    :goto_1
    iget-object v1, v0, Landroidx/appcompat/app/a0;->o:Le/b;

    if-nez v1, :cond_14

    .line 27
    iget-object v1, v0, Landroidx/appcompat/app/a0;->s:Lg0/v0;

    if-eqz v1, :cond_5

    .line 28
    invoke-virtual {v1}, Lg0/v0;->b()V

    .line 29
    :cond_5
    iget-object v1, v0, Landroidx/appcompat/app/a0;->o:Le/b;

    if-eqz v1, :cond_6

    .line 30
    invoke-virtual {v1}, Le/b;->a()V

    :cond_6
    if-eqz v5, :cond_7

    .line 31
    iget-boolean v1, v0, Landroidx/appcompat/app/a0;->L:Z

    if-nez v1, :cond_7

    .line 32
    :try_start_1
    invoke-interface {v5}, Landroidx/appcompat/app/n;->e()V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    .line 33
    :catch_0
    :cond_7
    iget-object v1, v0, Landroidx/appcompat/app/a0;->p:Landroidx/appcompat/widget/ActionBarContextView;

    if-nez v1, :cond_c

    .line 34
    iget-boolean v1, v0, Landroidx/appcompat/app/a0;->D:Z

    iget-object v6, v0, Landroidx/appcompat/app/a0;->e:Landroid/content/Context;

    if-eqz v1, :cond_9

    .line 35
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 36
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 37
    sget v8, Landroidx/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v7, v8, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 38
    iget v8, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_8

    .line 39
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 40
    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 41
    iget v7, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v7, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 42
    new-instance v7, Le/d;

    invoke-direct {v7, v6, v2}, Le/d;-><init>(Landroid/content/Context;I)V

    .line 43
    invoke-virtual {v7}, Le/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v6, v7

    .line 44
    :cond_8
    new-instance v7, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {v7, v6}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Landroidx/appcompat/app/a0;->p:Landroidx/appcompat/widget/ActionBarContextView;

    .line 45
    new-instance v7, Landroid/widget/PopupWindow;

    sget v8, Landroidx/appcompat/R$attr;->actionModePopupWindowStyle:I

    invoke-direct {v7, v6, v4, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v7, v0, Landroidx/appcompat/app/a0;->q:Landroid/widget/PopupWindow;

    const/4 v8, 0x2

    .line 46
    invoke-static {v7, v8}, Landroidx/core/widget/j;->d(Landroid/widget/PopupWindow;I)V

    .line 47
    iget-object v7, v0, Landroidx/appcompat/app/a0;->q:Landroid/widget/PopupWindow;

    iget-object v8, v0, Landroidx/appcompat/app/a0;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 48
    iget-object v7, v0, Landroidx/appcompat/app/a0;->q:Landroid/widget/PopupWindow;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 49
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    sget v8, Landroidx/appcompat/R$attr;->actionBarSize:I

    invoke-virtual {v7, v8, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 50
    iget v1, v1, Landroid/util/TypedValue;->data:I

    .line 51
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 52
    invoke-static {v1, v6}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    .line 53
    iget-object v6, v0, Landroidx/appcompat/app/a0;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 54
    iget-object v1, v0, Landroidx/appcompat/app/a0;->q:Landroid/widget/PopupWindow;

    const/4 v6, -0x2

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 55
    new-instance v1, Landroidx/appcompat/app/p;

    invoke-direct {v1, v0, v3}, Landroidx/appcompat/app/p;-><init>(Landroidx/appcompat/app/a0;I)V

    iput-object v1, v0, Landroidx/appcompat/app/a0;->r:Landroidx/appcompat/app/p;

    goto :goto_4

    .line 56
    :cond_9
    iget-object v1, v0, Landroidx/appcompat/app/a0;->v:Landroid/view/ViewGroup;

    sget v7, Landroidx/appcompat/R$id;->action_mode_bar_stub:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz v1, :cond_c

    .line 57
    invoke-virtual {v0}, Landroidx/appcompat/app/a0;->w()V

    .line 58
    iget-object v7, v0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/app/k0;

    if-eqz v7, :cond_a

    .line 59
    invoke-virtual {v7}, Landroidx/appcompat/app/k0;->b()Landroid/content/Context;

    move-result-object v7

    goto :goto_2

    :cond_a
    move-object v7, v4

    :goto_2
    if-nez v7, :cond_b

    goto :goto_3

    :cond_b
    move-object v6, v7

    .line 60
    :goto_3
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 61
    invoke-virtual {v1}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v1, v0, Landroidx/appcompat/app/a0;->p:Landroidx/appcompat/widget/ActionBarContextView;

    .line 62
    :cond_c
    :goto_4
    iget-object v1, v0, Landroidx/appcompat/app/a0;->p:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v1, :cond_12

    .line 63
    iget-object v1, v0, Landroidx/appcompat/app/a0;->s:Lg0/v0;

    if-eqz v1, :cond_d

    .line 64
    invoke-virtual {v1}, Lg0/v0;->b()V

    .line 65
    :cond_d
    iget-object v1, v0, Landroidx/appcompat/app/a0;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    .line 66
    new-instance v1, Le/e;

    iget-object v6, v0, Landroidx/appcompat/app/a0;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Landroidx/appcompat/app/a0;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {v1, v6, v7, p1}, Le/e;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Le/a;)V

    .line 67
    iget-object v6, v1, Le/e;->i:Landroidx/appcompat/view/menu/p;

    .line 68
    invoke-virtual {p1, v1, v6}, Landroidx/appcompat/app/s;->a(Le/b;Landroidx/appcompat/view/menu/p;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 69
    invoke-virtual {v1}, Le/e;->g()V

    .line 70
    iget-object p1, v0, Landroidx/appcompat/app/a0;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActionBarContextView;->f(Le/b;)V

    .line 71
    iput-object v1, v0, Landroidx/appcompat/app/a0;->o:Le/b;

    .line 72
    iget-boolean p1, v0, Landroidx/appcompat/app/a0;->u:Z

    if-eqz p1, :cond_e

    iget-object p1, v0, Landroidx/appcompat/app/a0;->v:Landroid/view/ViewGroup;

    if-eqz p1, :cond_e

    sget-object v1, Lg0/s0;->a:Ljava/util/WeakHashMap;

    .line 73
    invoke-static {p1}, Lg0/d0;->c(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_e

    move p1, v3

    goto :goto_5

    :cond_e
    move p1, v2

    :goto_5
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_f

    .line 74
    iget-object p1, v0, Landroidx/appcompat/app/a0;->p:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 75
    iget-object p1, v0, Landroidx/appcompat/app/a0;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {p1}, Lg0/s0;->a(Landroid/view/View;)Lg0/v0;

    move-result-object p1

    invoke-virtual {p1, v1}, Lg0/v0;->a(F)V

    iput-object p1, v0, Landroidx/appcompat/app/a0;->s:Lg0/v0;

    .line 76
    new-instance v1, Landroidx/appcompat/app/r;

    invoke-direct {v1, v3, v0}, Landroidx/appcompat/app/r;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Lg0/v0;->d(Lg0/w0;)V

    goto :goto_6

    .line 77
    :cond_f
    iget-object p1, v0, Landroidx/appcompat/app/a0;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 78
    iget-object p1, v0, Landroidx/appcompat/app/a0;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 79
    iget-object p1, v0, Landroidx/appcompat/app/a0;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_10

    .line 80
    iget-object p1, v0, Landroidx/appcompat/app/a0;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget-object v1, Lg0/s0;->a:Ljava/util/WeakHashMap;

    .line 81
    invoke-static {p1}, Lg0/e0;->c(Landroid/view/View;)V

    .line 82
    :cond_10
    :goto_6
    iget-object p1, v0, Landroidx/appcompat/app/a0;->q:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_12

    .line 83
    iget-object p1, v0, Landroidx/appcompat/app/a0;->f:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v1, v0, Landroidx/appcompat/app/a0;->r:Landroidx/appcompat/app/p;

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    .line 84
    :cond_11
    iput-object v4, v0, Landroidx/appcompat/app/a0;->o:Le/b;

    .line 85
    :cond_12
    :goto_7
    iget-object p1, v0, Landroidx/appcompat/app/a0;->o:Le/b;

    if-eqz p1, :cond_13

    if-eqz v5, :cond_13

    .line 86
    invoke-interface {v5}, Landroidx/appcompat/app/n;->b()V

    .line 87
    :cond_13
    iget-object p1, v0, Landroidx/appcompat/app/a0;->o:Le/b;

    .line 88
    iput-object p1, v0, Landroidx/appcompat/app/a0;->o:Le/b;

    .line 89
    :cond_14
    iget-object p1, v0, Landroidx/appcompat/app/a0;->o:Le/b;

    if-eqz p1, :cond_15

    .line 90
    invoke-virtual {p2, p1}, Le/f;->e(Le/b;)Le/g;

    move-result-object v4

    :cond_15
    return-object v4

    .line 91
    :cond_16
    :goto_8
    invoke-super {p0, p1, p2}, Le/m;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
