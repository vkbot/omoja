.class public Lcom/android/car/ui/core/CarUi;
.super Ljava/lang/Object;
.source "CarUi.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBaseLayoutController(Landroid/app/Activity;)Lcom/android/car/ui/core/BaseLayoutController;
    .locals 6

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/car/ui/core/CarUi;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {p0}, Lcom/android/car/ui/core/BaseLayoutController;->getBaseLayout(Landroid/app/Activity;)Lcom/android/car/ui/core/BaseLayoutController;

    move-result-object p0

    return-object p0

    .line 162
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/car/ui/core/BaseLayoutController;

    .line 163
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBaseLayout"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 164
    const-class v4, Landroid/app/Activity;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 165
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 166
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/car/ui/core/BaseLayoutController;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 168
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getToolbar(Landroid/app/Activity;)Lcom/android/car/ui/toolbar/ToolbarController;
    .locals 0

    .line 49
    invoke-static {p0}, Lcom/android/car/ui/core/CarUi;->getBaseLayoutController(Landroid/app/Activity;)Lcom/android/car/ui/core/BaseLayoutController;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/android/car/ui/core/BaseLayoutController;->getToolbarController()Lcom/android/car/ui/toolbar/ToolbarController;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static requireToolbar(Landroid/app/Activity;)Lcom/android/car/ui/toolbar/ToolbarController;
    .locals 3

    .line 66
    invoke-static {p0}, Lcom/android/car/ui/core/CarUi;->getToolbar(Landroid/app/Activity;)Lcom/android/car/ui/toolbar/ToolbarController;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not have a CarUi Toolbar! Are you using Theme.CarUi.WithToolbar?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
