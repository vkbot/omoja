.class final Lcom/android/car/ui/core/BaseLayoutController;
.super Ljava/lang/Object;
.source "BaseLayoutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;
    }
.end annotation


# static fields
.field private static final sBaseLayoutMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Lcom/android/car/ui/core/BaseLayoutController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInsetsUpdater:Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;

.field private mToolbarController:Lcom/android/car/ui/toolbar/ToolbarController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/car/ui/core/BaseLayoutController;->sBaseLayoutMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-direct {p0, p1}, Lcom/android/car/ui/core/BaseLayoutController;->installBaseLayout(Landroid/app/Activity;)V

    return-void
.end method

.method static build(Landroid/app/Activity;)V
    .locals 2

    .line 78
    sget v0, Lcom/android/car/ui/R$attr;->carUiBaseLayout:I

    invoke-static {p0, v0}, Lcom/android/car/ui/core/BaseLayoutController;->getThemeBoolean(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/android/car/ui/core/BaseLayoutController;->sBaseLayoutMap:Ljava/util/Map;

    new-instance v1, Lcom/android/car/ui/core/BaseLayoutController;

    invoke-direct {v1, p0}, Lcom/android/car/ui/core/BaseLayoutController;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static destroy(Landroid/app/Activity;)V
    .locals 1

    .line 88
    sget-object v0, Lcom/android/car/ui/core/BaseLayoutController;->sBaseLayoutMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static getBaseLayout(Landroid/app/Activity;)Lcom/android/car/ui/core/BaseLayoutController;
    .locals 1

    .line 61
    sget-object v0, Lcom/android/car/ui/core/BaseLayoutController;->sBaseLayoutMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/car/ui/core/BaseLayoutController;

    return-object p0
.end method

.method private static getThemeBoolean(Landroid/app/Activity;I)Z
    .locals 2

    .line 191
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 194
    :try_start_0
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 197
    throw p1
.end method

.method private installBaseLayout(Landroid/app/Activity;)V
    .locals 3

    .line 120
    sget v0, Lcom/android/car/ui/R$attr;->carUiToolbar:I

    invoke-static {p1, v0}, Lcom/android/car/ui/core/BaseLayoutController;->getThemeBoolean(Landroid/app/Activity;I)Z

    move-result v0

    .line 123
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-static {v1, v2}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 121
    invoke-static {p1, v1, v0}, Lcom/android/car/ui/core/BaseLayoutController;->installBaseLayoutAround(Landroid/app/Activity;Landroid/view/View;Z)Landroidx/core/util/Pair;

    move-result-object p1

    .line 126
    iget-object v0, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/car/ui/toolbar/ToolbarController;

    iput-object v0, p0, Lcom/android/car/ui/core/BaseLayoutController;->mToolbarController:Lcom/android/car/ui/toolbar/ToolbarController;

    .line 127
    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;

    iput-object p1, p0, Lcom/android/car/ui/core/BaseLayoutController;->mInsetsUpdater:Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;

    return-void
.end method

.method public static installBaseLayoutAround(Landroid/app/Activity;Landroid/view/View;Z)Landroidx/core/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Z)",
            "Landroidx/core/util/Pair<",
            "Lcom/android/car/ui/toolbar/ToolbarController;",
            "Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;",
            ">;"
        }
    .end annotation

    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p2, :cond_2

    if-eqz v0, :cond_1

    .line 150
    sget v2, Lcom/android/car/ui/R$layout;->car_ui_base_layout_toolbar_legacy:I

    goto :goto_1

    .line 151
    :cond_1
    sget v2, Lcom/android/car/ui/R$layout;->car_ui_base_layout_toolbar:I

    goto :goto_1

    .line 153
    :cond_2
    sget v2, Lcom/android/car/ui/R$layout;->car_ui_base_layout:I

    .line 156
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    .line 157
    invoke-virtual {v3, v2, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 161
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 162
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 166
    sget v2, Lcom/android/car/ui/R$id;->car_ui_base_layout_content_container:I

    invoke-static {v1, v2}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 168
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_4

    if-eqz v0, :cond_3

    .line 175
    sget p2, Lcom/android/car/ui/R$id;->car_ui_toolbar:I

    invoke-static {v1, p2}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/android/car/ui/toolbar/ToolbarController;

    goto :goto_2

    .line 177
    :cond_3
    new-instance v4, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;

    invoke-direct {v4, v1}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;-><init>(Landroid/view/View;)V

    .line 181
    :cond_4
    :goto_2
    new-instance p2, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;

    invoke-direct {p2, p0, v1, p1}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    .line 183
    invoke-static {v4, p2}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method dispatchNewInsets(Lcom/android/car/ui/baselayout/Insets;)V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/car/ui/core/BaseLayoutController;->mInsetsUpdater:Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->dispatchNewInsets(Lcom/android/car/ui/baselayout/Insets;)V

    return-void
.end method

.method getInsets()Lcom/android/car/ui/baselayout/Insets;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/car/ui/core/BaseLayoutController;->mInsetsUpdater:Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;

    invoke-virtual {p0}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->getInsets()Lcom/android/car/ui/baselayout/Insets;

    move-result-object p0

    return-object p0
.end method

.method getToolbarController()Lcom/android/car/ui/toolbar/ToolbarController;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/car/ui/core/BaseLayoutController;->mToolbarController:Lcom/android/car/ui/toolbar/ToolbarController;

    return-object p0
.end method
