.class Landroidx/transition/CanvasUtils;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/CanvasUtils$Api29Impl;
    }
.end annotation


# static fields
.field private static sInorderBarrierMethod:Ljava/lang/reflect/Method;

.field private static sOrderMethodsFetched:Z

.field private static sReorderBarrierMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static enableZ(Landroid/graphics/Canvas;Z)V
    .registers 6
    .param p0    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-class v0, Landroid/graphics/Canvas;

    .line 2
    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v2, 0x1d

    .line 6
    .line 7
    if-lt v1, v2, :cond_12

    .line 8
    .line 9
    if-eqz p1, :cond_e

    .line 10
    .line 11
    invoke-static {p0}, Landroidx/transition/CanvasUtils$Api29Impl;->enableZ(Landroid/graphics/Canvas;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_e
    invoke-static {p0}, Landroidx/transition/CanvasUtils$Api29Impl;->disableZ(Landroid/graphics/Canvas;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    const/16 v2, 0x1c

    .line 20
    .line 21
    if-eq v1, v2, :cond_50

    .line 22
    .line 23
    sget-boolean v1, Landroidx/transition/CanvasUtils;->sOrderMethodsFetched:Z

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-nez v1, :cond_34

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    :try_start_1c
    const-string v3, "insertReorderBarrier"

    .line 30
    .line 31
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    sput-object v3, Landroidx/transition/CanvasUtils;->sReorderBarrierMethod:Ljava/lang/reflect/Method;

    .line 36
    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 38
    .line 39
    .line 40
    const-string v3, "insertInorderBarrier"

    .line 41
    .line 42
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Landroidx/transition/CanvasUtils;->sInorderBarrierMethod:Ljava/lang/reflect/Method;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_32
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1c .. :try_end_32} :catch_32

    .line 49
    .line 50
    .line 51
    :catch_32
    sput-boolean v1, Landroidx/transition/CanvasUtils;->sOrderMethodsFetched:Z

    .line 52
    .line 53
    :cond_34
    if-eqz p1, :cond_3d

    .line 54
    .line 55
    :try_start_36
    sget-object v0, Landroidx/transition/CanvasUtils;->sReorderBarrierMethod:Ljava/lang/reflect/Method;

    .line 56
    .line 57
    if-eqz v0, :cond_3d

    .line 58
    .line 59
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    :cond_3d
    if-nez p1, :cond_4f

    .line 63
    .line 64
    sget-object p1, Landroidx/transition/CanvasUtils;->sInorderBarrierMethod:Ljava/lang/reflect/Method;

    .line 65
    .line 66
    if-eqz p1, :cond_4f

    .line 67
    .line 68
    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catch Ljava/lang/IllegalAccessException; {:try_start_36 .. :try_end_46} :catch_4f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_36 .. :try_end_46} :catch_47

    .line 69
    .line 70
    .line 71
    goto :goto_4f

    .line 72
    :catch_47
    move-exception p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0}, Ln0/b;->w(Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    :catch_4f
    :cond_4f
    :goto_4f
    return-void

    .line 81
    :cond_50
    const-string p0, "This method doesn\'t work on Pie!"

    .line 82
    .line 83
    invoke-static {p0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method
