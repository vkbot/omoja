.class abstract Lcom/sun/jna/Klass;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


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

.method public static newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_9} :catch_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_9} :catch_12
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_9} :catch_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_9} :catch_e
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_9} :catch_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_9} :catch_a

    .line 10
    return-object p0

    .line 11
    :catch_a
    move-exception v0

    .line 12
    goto :goto_16

    .line 13
    :catch_c
    move-exception v0

    .line 14
    goto :goto_2a

    .line 15
    :catch_e
    move-exception v0

    .line 16
    goto :goto_2e

    .line 17
    :catch_10
    move-exception v0

    .line 18
    goto :goto_32

    .line 19
    :catch_12
    move-exception v0

    .line 20
    goto :goto_36

    .line 21
    :catch_14
    move-exception v0

    .line 22
    goto :goto_3a

    .line 23
    :goto_16
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    instance-of v1, v1, Ljava/lang/RuntimeException;

    .line 28
    .line 29
    if-nez v1, :cond_23

    .line 30
    .line 31
    invoke-static {v0, p0}, Landroidx/navigation/b;->n(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :goto_21
    const/4 p0, 0x0

    .line 35
    return-object p0

    .line 36
    :cond_23
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Ljava/lang/RuntimeException;

    .line 41
    .line 42
    throw p0

    .line 43
    :goto_2a
    invoke-static {v0, p0}, Landroidx/navigation/b;->n(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_21

    .line 47
    :goto_2e
    invoke-static {v0, p0}, Landroidx/navigation/b;->n(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_21

    .line 51
    :goto_32
    invoke-static {v0, p0}, Landroidx/navigation/b;->n(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_21

    .line 55
    :goto_36
    invoke-static {v0, p0}, Landroidx/navigation/b;->n(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_21

    .line 59
    :goto_3a
    invoke-static {v0, p0}, Landroidx/navigation/b;->n(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_21
.end method
