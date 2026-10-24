.class public final Lorg/apache/logging/log4j/util/StackLocatorUtil;
.super Ljava/lang/Object;
.source "StackLocatorUtil.java"


# static fields
.field private static volatile errorLogged:Z

.field private static stackLocator:Lorg/apache/logging/log4j/util/StackLocator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/logging/log4j/util/StackLocatorUtil;->stackLocator:Lorg/apache/logging/log4j/util/StackLocator;

    .line 33
    invoke-static {}, Lorg/apache/logging/log4j/util/StackLocator;->getInstance()Lorg/apache/logging/log4j/util/StackLocator;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/util/StackLocatorUtil;->stackLocator:Lorg/apache/logging/log4j/util/StackLocator;

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static calcLocation(Ljava/lang/String;)Ljava/lang/StackTraceElement;
    .locals 3
    .param p0, "fqcnOfLogger"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fqcnOfLogger"
        }
    .end annotation

    .line 121
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/util/StackLocatorUtil;->stackLocator:Lorg/apache/logging/log4j/util/StackLocator;

    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/util/StackLocator;->calcLocation(Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "ex":Ljava/util/NoSuchElementException;
    sget-boolean v1, Lorg/apache/logging/log4j/util/StackLocatorUtil;->errorLogged:Z

    if-nez v1, :cond_0

    .line 124
    const/4 v1, 0x1

    sput-boolean v1, Lorg/apache/logging/log4j/util/StackLocatorUtil;->errorLogged:Z

    .line 125
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v1

    const-string v2, "Unable to locate stack trace element for {}"

    invoke-virtual {v1, v2, p0, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getCallerClass(I)Ljava/lang/Class;
    .locals 2
    .param p0, "depth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "depth"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 45
    sget-object v0, Lorg/apache/logging/log4j/util/StackLocatorUtil;->stackLocator:Lorg/apache/logging/log4j/util/StackLocator;

    add-int/lit8 v1, p0, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/util/StackLocator;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "anchor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 110
    .local p0, "anchor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/apache/logging/log4j/util/StackLocatorUtil;->stackLocator:Lorg/apache/logging/log4j/util/StackLocator;

    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/util/StackLocator;->getCallerClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerClass(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sentinelClass",
            "callerPredicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 104
    .local p0, "sentinelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "callerPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Class<*>;>;"
    sget-object v0, Lorg/apache/logging/log4j/util/StackLocatorUtil;->stackLocator:Lorg/apache/logging/log4j/util/StackLocator;

    invoke-virtual {v0, p0, p1}, Lorg/apache/logging/log4j/util/StackLocator;->getCallerClass(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "fqcn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fqcn"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 58
    const-string v0, ""

    invoke-static {p0, v0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "fqcn"    # Ljava/lang/String;
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "pkg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 70
    sget-object v0, Lorg/apache/logging/log4j/util/StackLocatorUtil;->stackLocator:Lorg/apache/logging/log4j/util/StackLocator;

    invoke-virtual {v0, p0, p1}, Lorg/apache/logging/log4j/util/StackLocator;->getCallerClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerClassLoader(I)Ljava/lang/ClassLoader;
    .locals 2
    .param p0, "depth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "depth"
        }
    .end annotation

    .line 91
    sget-object v0, Lorg/apache/logging/log4j/util/StackLocatorUtil;->stackLocator:Lorg/apache/logging/log4j/util/StackLocator;

    add-int/lit8 v1, p0, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/util/StackLocator;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v0

    .line 92
    .local v0, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static getCurrentStackTrace()Ljava/util/Deque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 116
    sget-object v0, Lorg/apache/logging/log4j/util/StackLocatorUtil;->stackLocator:Lorg/apache/logging/log4j/util/StackLocator;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/util/StackLocator;->getCurrentStackTrace()Ljava/util/Deque;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTraceElement(I)Ljava/lang/StackTraceElement;
    .locals 2
    .param p0, "depth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "depth"
        }
    .end annotation

    .line 49
    sget-object v0, Lorg/apache/logging/log4j/util/StackLocatorUtil;->stackLocator:Lorg/apache/logging/log4j/util/StackLocator;

    add-int/lit8 v1, p0, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/util/StackLocator;->getStackTraceElement(I)Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method
