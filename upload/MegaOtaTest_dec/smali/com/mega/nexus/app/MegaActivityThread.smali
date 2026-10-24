.class public Lcom/mega/nexus/app/MegaActivityThread;
.super Ljava/lang/Object;
.source "MegaActivityThread.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static currentActivityThread()Landroid/app/ActivityThread;
    .locals 1

    .line 17
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    return-object v0
.end method

.method public static currentApplication()Landroid/app/Application;
    .locals 1

    .line 21
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/Object;)Landroid/app/Service;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;

    .line 26
    :try_start_0
    const-class v0, Landroid/app/ActivityThread;

    const-string v1, "mServices"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 27
    .local v0, "services":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 28
    nop

    .line 29
    invoke-static {}, Lcom/mega/nexus/app/MegaActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 30
    .local v1, "serviceArrayMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/app/Service;>;"
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Service;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 33
    .end local v0    # "services":Ljava/lang/reflect/Field;
    .end local v1    # "serviceArrayMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/app/Service;>;"
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 31
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 35
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    nop

    .line 36
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static replaceHandlerCallback(Landroid/os/Handler$Callback;)V
    .locals 5
    .param p0, "targetCallback"    # Landroid/os/Handler$Callback;

    .line 41
    :try_start_0
    const-class v0, Landroid/app/ActivityThread;

    const-string v1, "getHandler"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 42
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 43
    invoke-static {}, Lcom/mega/nexus/app/MegaActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 44
    .local v2, "handler":Landroid/os/Handler;
    const-class v3, Landroid/os/Handler;

    const-string v4, "mCallback"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 45
    .local v3, "callbackFiled":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 46
    invoke-virtual {v3, v2, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "callbackFiled":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 51
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 49
    :catch_2
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 47
    :catch_3
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 55
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    nop

    .line 57
    :goto_1
    return-void
.end method
