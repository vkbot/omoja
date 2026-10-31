.class public abstract Li4/g;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_2
    const-string v2, "sun.misc.SharedSecrets"

    .line 4
    .line 5
    invoke-static {v2, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "getJavaLangAccess"

    .line 10
    .line 11
    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2
    :try_end_12
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_12} :catch_52
    .catchall {:try_start_2 .. :try_end_12} :catchall_13

    .line 19
    goto :goto_14

    .line 20
    :catchall_13
    move-object v2, v1

    .line 21
    :goto_14
    sput-object v2, Li4/g;->a:Ljava/lang/Object;

    .line 22
    .line 23
    const-string v3, "sun.misc.JavaLangAccess"

    .line 24
    .line 25
    const-class v4, Ljava/lang/Throwable;

    .line 26
    .line 27
    if-nez v2, :cond_1d

    .line 28
    .line 29
    goto :goto_2c

    .line 30
    :cond_1d
    const-string v5, "getStackTraceElement"

    .line 31
    .line 32
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 33
    .line 34
    filled-new-array {v4, v6}, [Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    :try_start_25
    invoke-static {v3, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-virtual {v7, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2c
    .catch Ljava/lang/ThreadDeath; {:try_start_25 .. :try_end_2c} :catch_50
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2c

    .line 43
    .line 44
    .line 45
    :catchall_2c
    :goto_2c
    if-nez v2, :cond_2f

    .line 46
    .line 47
    goto :goto_4f

    .line 48
    :cond_2f
    :try_start_2f
    const-string v5, "getStackTraceDepth"

    .line 49
    .line 50
    filled-new-array {v4}, [Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    move-result-object v4
    :try_end_35
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2f .. :try_end_35} :catch_4f
    .catch Ljava/lang/IllegalAccessException; {:try_start_2f .. :try_end_35} :catch_4f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2f .. :try_end_35} :catch_4f

    .line 54
    :try_start_35
    invoke-static {v3, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 59
    .line 60
    .line 61
    move-result-object v1
    :try_end_3d
    .catch Ljava/lang/ThreadDeath; {:try_start_35 .. :try_end_3d} :catch_4d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3d

    .line 62
    :catchall_3d
    if-nez v1, :cond_40

    .line 63
    .line 64
    goto :goto_4f

    .line 65
    :cond_40
    :try_start_40
    new-instance v0, Ljava/lang/Throwable;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 68
    .line 69
    .line 70
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    goto :goto_4f

    .line 78
    :catch_4d
    move-exception v0

    .line 79
    throw v0
    :try_end_4f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_40 .. :try_end_4f} :catch_4f
    .catch Ljava/lang/IllegalAccessException; {:try_start_40 .. :try_end_4f} :catch_4f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_40 .. :try_end_4f} :catch_4f

    .line 80
    :catch_4f
    :goto_4f
    return-void

    .line 81
    :catch_50
    move-exception v0

    .line 82
    throw v0

    .line 83
    :catch_52
    move-exception v0

    .line 84
    throw v0
.end method
