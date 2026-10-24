.class public final Lg5/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf5/d;

.field public static final b:I

.field public static final c:Ljava/lang/reflect/Method;

.field public static final d:Lg5/u;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    sget-object v0, Lf5/d;->p1:La5/a;

    sget-object v0, Lf5/d$b;->a:Lf5/d;

    sput-object v0, Lg5/u;->a:Lf5/d;

    const/4 v1, 0x0

    const/4 v2, -0x1

    :try_start_0
    const-string/jumbo v3, "sun.reflect.Reflection"

    invoke-static {v3}, Lg5/g;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getCallerClass"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_3

    if-eq v6, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_1

    const-string v3, "Unexpected result from `sun.reflect.Reflection.getCallerClass(int)`, adjusting offset for future calls."

    invoke-virtual {v0, v3}, Le5/a;->s(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    move v2, v5

    goto :goto_0

    :cond_1
    move-object v1, v4

    move v2, v8

    goto :goto_0

    :catch_0
    sget v0, Lg5/a;->b:I

    const/16 v3, 0x8

    if-le v0, v3, :cond_2

    sget-object v0, Lg5/u;->a:Lf5/d;

    const-string v3, "Runtime environment or build system does not support multi-release JARs. This will impact location-based features."

    invoke-virtual {v0, v3}, Le5/a;->s(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lg5/u;->a:Lf5/d;

    const-string v3, "`sun.reflect.Reflection.getCallerClass(int)` is not supported. This will impact location-based features."

    invoke-virtual {v0, v3}, Le5/a;->s(Ljava/lang/String;)V

    :cond_3
    :goto_0
    sput-object v1, Lg5/u;->c:Ljava/lang/reflect/Method;

    sput v2, Lg5/u;->b:I

    new-instance v0, Lg5/u;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg5/u;->d:Lg5/u;

    return-void
.end method
