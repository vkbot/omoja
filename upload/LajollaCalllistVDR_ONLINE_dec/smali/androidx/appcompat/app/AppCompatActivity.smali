.class public Landroidx/appcompat/app/AppCompatActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/app/n;


# instance fields
.field public n:Landroidx/appcompat/app/a0;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->e:Landroidx/savedstate/d;

    iget-object v0, v0, Landroidx/savedstate/d;->b:Landroidx/savedstate/c;

    new-instance v1, Landroidx/appcompat/app/l;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/l;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    const-string v2, "androidx:appcompat"

    invoke-virtual {v0, v2, v1}, Landroidx/savedstate/c;->b(Ljava/lang/String;Landroidx/savedstate/b;)V

    new-instance v0, Landroidx/appcompat/app/m;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/m;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->i(La/b;)V

    return-void
.end method

.method private j()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Landroidx/lifecycle/runtime/R$id;->view_tree_lifecycle_owner:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Landroidx/lifecycle/viewmodel/R$id;->view_tree_view_model_store_owner:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Landroidx/savedstate/R$id;->view_tree_saved_state_registry_owner:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;->j()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/a0;

    invoke-virtual {v0}, Landroidx/appcompat/app/a0;->r()V

    iget-object v1, v0, Landroidx/appcompat/app/a0;->v:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, v0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/app/t;

    iget-object p1, p1, Le/m;->b:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 8

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/a0;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/app/a0;->J:Z

    iget v2, v0, Landroidx/appcompat/app/a0;->N:I

    const/16 v3, -0x64

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/app/a0;->x(Landroid/content/Context;I)I

    move-result v0

    sget-boolean v2, Landroidx/appcompat/app/a0;->d0:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    instance-of v2, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v2, :cond_1

    invoke-static {p1, v0, v3}, Landroidx/appcompat/app/a0;->n(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v2

    :try_start_0
    move-object v4, p1

    check-cast v4, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v4, v2}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    :cond_1
    instance-of v2, p1, Le/d;

    if-eqz v2, :cond_2

    invoke-static {p1, v0, v3}, Landroidx/appcompat/app/a0;->n(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v2

    :try_start_1
    move-object v4, p1

    check-cast v4, Le/d;

    invoke-virtual {v4, v2}, Le/d;->a(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_7

    :catch_1
    :cond_2
    sget-boolean v2, Landroidx/appcompat/app/a0;->c0:Z

    if-nez v2, :cond_3

    goto/16 :goto_7

    :cond_3
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    const/4 v4, -0x1

    iput v4, v2, Landroid/content/res/Configuration;->uiMode:I

    const/4 v4, 0x0

    iput v4, v2, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v6, v5, Landroid/content/res/Configuration;->uiMode:I

    iput v6, v2, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v2, v5}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v6

    if-nez v6, :cond_1a

    new-instance v6, Landroid/content/res/Configuration;

    invoke-direct {v6}, Landroid/content/res/Configuration;-><init>()V

    iput v4, v6, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v2, v5}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_1

    :cond_4
    iget v4, v2, Landroid/content/res/Configuration;->fontScale:F

    iget v7, v5, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_5

    iput v7, v6, Landroid/content/res/Configuration;->fontScale:F

    :cond_5
    iget v4, v2, Landroid/content/res/Configuration;->mcc:I

    iget v7, v5, Landroid/content/res/Configuration;->mcc:I

    if-eq v4, v7, :cond_6

    iput v7, v6, Landroid/content/res/Configuration;->mcc:I

    :cond_6
    iget v4, v2, Landroid/content/res/Configuration;->mnc:I

    iget v7, v5, Landroid/content/res/Configuration;->mnc:I

    if-eq v4, v7, :cond_7

    iput v7, v6, Landroid/content/res/Configuration;->mnc:I

    :cond_7
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    iget-object v4, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v4, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :cond_8
    iget v4, v2, Landroid/content/res/Configuration;->touchscreen:I

    iget v7, v5, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v4, v7, :cond_9

    iput v7, v6, Landroid/content/res/Configuration;->touchscreen:I

    :cond_9
    iget v4, v2, Landroid/content/res/Configuration;->keyboard:I

    iget v7, v5, Landroid/content/res/Configuration;->keyboard:I

    if-eq v4, v7, :cond_a

    iput v7, v6, Landroid/content/res/Configuration;->keyboard:I

    :cond_a
    iget v4, v2, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v7, v5, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v4, v7, :cond_b

    iput v7, v6, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_b
    iget v4, v2, Landroid/content/res/Configuration;->navigation:I

    iget v7, v5, Landroid/content/res/Configuration;->navigation:I

    if-eq v4, v7, :cond_c

    iput v7, v6, Landroid/content/res/Configuration;->navigation:I

    :cond_c
    iget v4, v2, Landroid/content/res/Configuration;->navigationHidden:I

    iget v7, v5, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v4, v7, :cond_d

    iput v7, v6, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_d
    iget v4, v2, Landroid/content/res/Configuration;->orientation:I

    iget v7, v5, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v7, :cond_e

    iput v7, v6, Landroid/content/res/Configuration;->orientation:I

    :cond_e
    iget v4, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    iget v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0xf

    if-eq v4, v7, :cond_f

    iget v4, v6, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v4, v7

    iput v4, v6, Landroid/content/res/Configuration;->screenLayout:I

    :cond_f
    iget v4, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v4, v4, 0xc0

    iget v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v7, v7, 0xc0

    if-eq v4, v7, :cond_10

    iget v4, v6, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v4, v7

    iput v4, v6, Landroid/content/res/Configuration;->screenLayout:I

    :cond_10
    iget v4, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0x30

    iget v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0x30

    if-eq v4, v7, :cond_11

    iget v4, v6, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v4, v7

    iput v4, v6, Landroid/content/res/Configuration;->screenLayout:I

    :cond_11
    iget v4, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v4, v4, 0x300

    iget v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v7, v7, 0x300

    if-eq v4, v7, :cond_12

    iget v4, v6, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v4, v7

    iput v4, v6, Landroid/content/res/Configuration;->screenLayout:I

    :cond_12
    iget v4, v2, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v4, v4, 0x3

    iget v7, v5, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v7, v7, 0x3

    if-eq v4, v7, :cond_13

    iget v4, v6, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v4, v7

    iput v4, v6, Landroid/content/res/Configuration;->colorMode:I

    :cond_13
    iget v4, v2, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v4, v4, 0xc

    iget v7, v5, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v7, v7, 0xc

    if-eq v4, v7, :cond_14

    iget v4, v6, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v4, v7

    iput v4, v6, Landroid/content/res/Configuration;->colorMode:I

    :cond_14
    iget v4, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0xf

    iget v7, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0xf

    if-eq v4, v7, :cond_15

    iget v4, v6, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v4, v7

    iput v4, v6, Landroid/content/res/Configuration;->uiMode:I

    :cond_15
    iget v4, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    iget v7, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0x30

    if-eq v4, v7, :cond_16

    iget v4, v6, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v4, v7

    iput v4, v6, Landroid/content/res/Configuration;->uiMode:I

    :cond_16
    iget v4, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v7, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v4, v7, :cond_17

    iput v7, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_17
    iget v4, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v7, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v4, v7, :cond_18

    iput v7, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_18
    iget v4, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v7, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v4, v7, :cond_19

    iput v7, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_19
    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    iget v4, v5, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v4, :cond_1b

    iput v4, v6, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_1

    :cond_1a
    move-object v6, v3

    :cond_1b
    :goto_1
    invoke-static {p1, v0, v6}, Landroidx/appcompat/app/a0;->n(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v0

    new-instance v2, Le/d;

    sget v4, Landroidx/appcompat/R$style;->Theme_AppCompat_Empty:I

    invoke-direct {v2, p1, v4}, Le/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v0}, Le/d;->a(Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p1, :cond_1c

    move p1, v1

    goto :goto_2

    :catch_2
    :cond_1c
    move p1, v0

    :goto_2
    if-eqz p1, :cond_20

    invoke-virtual {v2}, Le/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_1d

    invoke-static {p1}, Lokhttp3/internal/platform/a;->d(Landroid/content/res/Resources$Theme;)V

    goto :goto_6

    :cond_1d
    sget-object v4, Lx/l;->a:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    sget-boolean v5, Lx/l;->c:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_1e

    :try_start_4
    const-class v5, Landroid/content/res/Resources$Theme;

    const-string v6, "rebase"

    new-array v7, v0, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lx/l;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v5, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_3
    move-exception v5

    :try_start_5
    const-string v6, "ResourcesCompat"

    const-string v7, "Failed to retrieve rebase() method"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    sput-boolean v1, Lx/l;->c:Z

    :cond_1e
    sget-object v1, Lx/l;->b:Ljava/lang/reflect/Method;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_1f

    :try_start_6
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :catch_4
    move-exception p1

    goto :goto_4

    :catch_5
    move-exception p1

    :goto_4
    :try_start_7
    const-string v0, "ResourcesCompat"

    const-string v1, "Failed to invoke rebase() method via reflection"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v3, Lx/l;->b:Ljava/lang/reflect/Method;

    :cond_1f
    :goto_5
    monitor-exit v4

    goto :goto_6

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1

    :cond_20
    :goto_6
    move-object p1, v2

    :goto_7
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final closeOptionsMenu()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/a0;

    invoke-virtual {v0}, Landroidx/appcompat/app/a0;->w()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    :cond_0
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/a0;

    invoke-virtual {v0}, Landroidx/appcompat/app/a0;->w()V

    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/a0;

    invoke-virtual {v0}, Landroidx/appcompat/app/a0;->r()V

    iget-object v0, v0, Landroidx/appcompat/app/a0;->f:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final g()V
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/a0;

    invoke-virtual {v0}, Landroidx/appcompat/app/a0;->w()V

    iget v1, v0, Landroidx/appcompat/app/a0;->U:I

    const/4 v2, 0x1

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/app/a0;->U:I

    iget-boolean v1, v0, Landroidx/appcompat/app/a0;->T:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Landroidx/appcompat/app/a0;->f:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    sget-object v3, Lg0/s0;->a:Ljava/util/WeakHashMap;

    iget-object v3, v0, Landroidx/appcompat/app/a0;->V:Landroidx/appcompat/app/p;

    invoke-static {v1, v3}, Lg0/a0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v2, v0, Landroidx/appcompat/app/a0;->T:Z

    :cond_0
    return-void
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/a0;

    iget-object v1, v0, Landroidx/appcompat/app/a0;->j:Le/j;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/a0;->w()V

    new-instance v1, Le/j;

    iget-object v2, v0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/app/k0;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/appcompat/app/k0;->b()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroidx/appcompat/app/a0;->e:Landroid/content/Context;

    :goto_0
    invoke-direct {v1, v2}, Le/j;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Landroidx/appcompat/app/a0;->j:Le/j;

    :cond_1
    iget-object v0, v0, Landroidx/appcompat/app/a0;->j:Le/j;

    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1

    sget v0, Landroidx/appcompat/widget/e3;->a:I

    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final invalidateOptionsMenu()V
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/a0;

    invoke-virtual {v0}, Landroidx/appcompat/app/a0;->w()V

    iget v1, v0, Landroidx/appcompat/app/a0;->U:I

    const/4 v2, 0x1

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/app/a0;->U:I

    iget-boolean v1, v0, Landroidx/appcompat/app/a0;->T:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Landroidx/appcompat/app/a0;->f:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    sget-object v3, Lg0/s0;->a:Ljava/util/WeakHashMap;

    iget-object v3, v0, Landroidx/appcompat/app/a0;->V:Landroidx/appcompat/app/p;

    invoke-static {v1, v3}, Lg0/a0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v2, v0, Landroidx/appcompat/app/a0;->T:Z

    :cond_0
    return-void
.end method

.method public final l()Landroidx/appcompat/app/o;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->n:Landroidx/appcompat/app/a0;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/appcompat/app/o;->b:Lj/c;

    new-instance v0, Landroidx/appcompat/app/a0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p0, p0}, Landroidx/appcompat/app/a0;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/n;Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->n:Landroidx/appcompat/app/a0;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->n:Landroidx/appcompat/app/a0;

    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/a0;

    iget-boolean v0, p1, Landroidx/appcompat/app/a0;->A:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroidx/appcompat/app/a0;->u:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/app/a0;->w()V

    iget-object v0, p1, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/app/k0;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/appcompat/app/k0;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/appcompat/R$bool;->abc_action_bar_embed_tabs:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/k0;->d(Z)V

    :cond_0
    invoke-static {}, Landroidx/appcompat/widget/c0;->a()Landroidx/appcompat/widget/c0;

    move-result-object v0

    iget-object v1, p1, Landroidx/appcompat/app/a0;->e:Landroid/content/Context;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Landroidx/appcompat/widget/c0;->a:Landroidx/appcompat/widget/u1;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v2, Landroidx/appcompat/widget/u1;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/d;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lj/d;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p1, Landroidx/appcompat/app/a0;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p1, Landroidx/appcompat/app/a0;->M:Landroid/content/res/Configuration;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a0;->h(Z)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v2

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final onContentChanged()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/o;->c()V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/a0;

    invoke-virtual {p1}, Landroidx/appcompat/app/a0;->w()V

    iget-object p1, p1, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/app/k0;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v1, 0x102002c

    const/4 v2, 0x0

    if-ne p2, v1, :cond_8

    if-eqz p1, :cond_8

    iget-object p1, p1, Landroidx/appcompat/app/k0;->e:Landroidx/appcompat/widget/b1;

    check-cast p1, Landroidx/appcompat/widget/d3;

    iget p1, p1, Landroidx/appcompat/widget/d3;->b:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_8

    invoke-static {p0}, Lcom/google/android/material/slider/h;->p0(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/google/android/material/slider/h;->p0(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {p0}, Lcom/google/android/material/slider/h;->p0(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :try_start_0
    invoke-static {p0, v1}, Lcom/google/android/material/slider/h;->q0(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p1, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/material/slider/h;->q0(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "TaskStackBuilder"

    const-string v0, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Landroid/content/Intent;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/Intent;

    new-instance p2, Landroid/content/Intent;

    aget-object v1, p1, v2

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v1, 0x1000c000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    aput-object p2, p1, v2

    sget-object p2, Lw/f;->a:Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lw/a;->a(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    :try_start_1
    sget p1, Lu/a;->b:I

    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    goto :goto_2

    :cond_7
    move v0, v2

    :goto_2
    return v0

    :cond_8
    return v2
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public final onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/a0;

    invoke-virtual {p1}, Landroidx/appcompat/app/a0;->r()V

    return-void
.end method

.method public final onPostResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPostResume()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/a0;

    invoke-virtual {v0}, Landroidx/appcompat/app/a0;->w()V

    iget-object v0, v0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/app/k0;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/app/k0;->t:Z

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/a0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a0;->h(Z)Z

    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/a0;

    invoke-virtual {v0}, Landroidx/appcompat/app/a0;->w()V

    iget-object v0, v0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/app/k0;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/appcompat/app/k0;->t:Z

    iget-object v0, v0, Landroidx/appcompat/app/k0;->s:Le/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/l;->a()V

    :cond_0
    return-void
.end method

.method public final onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/o;->g(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final openOptionsMenu()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/a0;

    invoke-virtual {v0}, Landroidx/appcompat/app/a0;->w()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    :cond_0
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;->j()V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/o;->f(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;->j()V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/a0;

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/app/a0;->r()V

    .line 6
    iget-object v1, v0, Landroidx/appcompat/app/a0;->v:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    iget-object p1, v0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/app/t;

    .line 10
    iget-object p1, p1, Le/m;->b:Landroid/view/Window$Callback;

    .line 11
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 12
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;->j()V

    .line 13
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/a0;

    .line 14
    invoke-virtual {v0}, Landroidx/appcompat/app/a0;->r()V

    .line 15
    iget-object v1, v0, Landroidx/appcompat/app/a0;->v:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 16
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 17
    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    iget-object p1, v0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/app/t;

    .line 19
    iget-object p1, p1, Le/m;->b:Landroid/view/Window$Callback;

    .line 20
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final setTheme(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->setTheme(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/a0;

    iput p1, v0, Landroidx/appcompat/app/a0;->O:I

    return-void
.end method
