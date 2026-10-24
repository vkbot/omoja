.class public final Lorg/apache/logging/log4j/util/StackLocator;
.super Ljava/lang/Object;
.source "StackLocator.java"


# static fields
.field private static final DEFAULT_CALLER_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final GET_CALLER_CLASS_METHOD:Ljava/lang/reflect/Method;

.field private static final INSTANCE:Lorg/apache/logging/log4j/util/StackLocator;

.field static final JDK_7U25_OFFSET:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/logging/log4j/util/StackLocator;->DEFAULT_CALLER_CLASS:Ljava/lang/Class;

    .line 63
    const/4 v1, 0x0

    .line 65
    .local v1, "java7u25CompensationOffset":I
    :try_start_0
    const-string v2, "sun.reflect.Reflection"

    invoke-static {v2}, Lorg/apache/logging/log4j/util/LoaderUtil;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 66
    .local v2, "sunReflectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getCallerClass"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 67
    .local v3, "getCallerClassMethod":Ljava/lang/reflect/Method;
    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 68
    .local v5, "o":Ljava/lang/Object;
    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    if-eqz v5, :cond_1

    if-eq v5, v2, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    .end local v5    # "o":Ljava/lang/Object;
    .local v0, "o":Ljava/lang/Object;
    if-ne v0, v2, :cond_2

    .line 75
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "WARNING: Unexpected result from sun.reflect.Reflection.getCallerClass(int), adjusting offset for future calls."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    const/4 v1, 0x1

    goto :goto_1

    .line 70
    .end local v0    # "o":Ljava/lang/Object;
    .restart local v5    # "o":Ljava/lang/Object;
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 71
    const/4 v1, -0x1

    .line 83
    .end local v2    # "sunReflectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "o":Ljava/lang/Object;
    :cond_2
    :goto_1
    goto :goto_2

    .line 79
    .end local v3    # "getCallerClassMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "WARNING: sun.reflect.Reflection.getCallerClass is not supported. This will impact performance."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    const/4 v3, 0x0

    .line 82
    .restart local v3    # "getCallerClassMethod":Ljava/lang/reflect/Method;
    const/4 v1, -0x1

    .line 85
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    sput-object v3, Lorg/apache/logging/log4j/util/StackLocator;->GET_CALLER_CLASS_METHOD:Ljava/lang/reflect/Method;

    .line 86
    sput v1, Lorg/apache/logging/log4j/util/StackLocator;->JDK_7U25_OFFSET:I

    .line 87
    new-instance v0, Lorg/apache/logging/log4j/util/StackLocator;

    invoke-direct {v0}, Lorg/apache/logging/log4j/util/StackLocator;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/util/StackLocator;->INSTANCE:Lorg/apache/logging/log4j/util/StackLocator;

    .line 88
    .end local v1    # "java7u25CompensationOffset":I
    .end local v3    # "getCallerClassMethod":Ljava/lang/reflect/Method;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method public static getInstance()Lorg/apache/logging/log4j/util/StackLocator;
    .locals 1

    .line 96
    sget-object v0, Lorg/apache/logging/log4j/util/StackLocator;->INSTANCE:Lorg/apache/logging/log4j/util/StackLocator;

    return-object v0
.end method

.method private isValid(Ljava/lang/StackTraceElement;)Z
    .locals 6
    .param p1, "element"    # Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "element"
        }
    .end annotation

    .line 248
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 249
    return v1

    .line 251
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "cn":Ljava/lang/String;
    const-string v2, "sun.reflect."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    return v1

    .line 256
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "mn":Ljava/lang/String;
    const-string v3, "java.lang.reflect."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "newInstance"

    const-string v5, "invoke"

    if-eqz v3, :cond_3

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 262
    :cond_2
    return v1

    .line 265
    :cond_3
    const-string v3, "jdk.internal.reflect."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 266
    return v1

    .line 269
    :cond_4
    const-string v3, "java.lang.Class"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 270
    return v1

    .line 273
    :cond_5
    const-string v3, "java.lang.invoke.MethodHandle"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 274
    return v1

    .line 277
    :cond_6
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public calcLocation(Ljava/lang/String;)Ljava/lang/StackTraceElement;
    .locals 6
    .param p1, "fqcnOfLogger"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fqcnOfLogger"
        }
    .end annotation

    .line 212
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 213
    return-object v0

    .line 216
    :cond_0
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 217
    .local v1, "stackTrace":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x0

    .line 218
    .local v2, "found":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 219
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "className":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 221
    const/4 v2, 0x1

    .line 222
    goto :goto_1

    .line 224
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 225
    aget-object v0, v1, v3

    return-object v0

    .line 218
    .end local v4    # "className":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 228
    .end local v3    # "i":I
    :cond_3
    return-object v0
.end method

.method public getCallerClass(I)Ljava/lang/Class;
    .locals 6
    .param p1, "depth"    # I
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

    .line 143
    if-ltz p1, :cond_1

    .line 146
    sget-object v0, Lorg/apache/logging/log4j/util/StackLocator;->GET_CALLER_CLASS_METHOD:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 147
    sget-object v0, Lorg/apache/logging/log4j/util/StackLocator;->DEFAULT_CALLER_CLASS:Ljava/lang/Class;

    return-object v0

    .line 152
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x1

    sget v5, Lorg/apache/logging/log4j/util/StackLocator;->JDK_7U25_OFFSET:I

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 153
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/logging/log4j/util/StackLocator;->DEFAULT_CALLER_CLASS:Ljava/lang/Class;

    return-object v1

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCallerClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 4
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

    .line 181
    .local p1, "anchor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 183
    .local v0, "next":Z
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/util/StackLocator;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v2

    move-object v3, v2

    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_2

    .line 184
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    const/4 v0, 0x1

    .line 186
    goto :goto_1

    .line 188
    :cond_0
    if-eqz v0, :cond_1

    .line 189
    return-object v3

    .line 183
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    .end local v1    # "i":I
    :cond_2
    const-class v1, Ljava/lang/Object;

    return-object v1
.end method

.method public getCallerClass(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/lang/Class;
    .locals 4
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

    .line 107
    .local p1, "sentinelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "callerPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Class<*>;>;"
    if-eqz p1, :cond_4

    .line 110
    if-eqz p2, :cond_3

    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, "foundSentinel":Z
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/util/StackLocator;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v2

    move-object v3, v2

    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_2

    .line 116
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const/4 v0, 0x1

    goto :goto_1

    .line 118
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    return-object v3

    .line 115
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "i":I
    :cond_2
    sget-object v1, Lorg/apache/logging/log4j/util/StackLocator;->DEFAULT_CALLER_CLASS:Ljava/lang/Class;

    return-object v1

    .line 111
    .end local v0    # "foundSentinel":Z
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callerPredicate cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sentinelClass cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCallerClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
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

    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, "next":Z
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/util/StackLocator;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v2

    move-object v3, v2

    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_2

    .line 166
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    const/4 v0, 0x1

    .line 168
    goto :goto_1

    .line 170
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    return-object v3

    .line 165
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v1    # "i":I
    :cond_2
    sget-object v1, Lorg/apache/logging/log4j/util/StackLocator;->DEFAULT_CALLER_CLASS:Ljava/lang/Class;

    return-object v1
.end method

.method public getCurrentStackTrace()Ljava/util/Deque;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 199
    invoke-static {}, Lorg/apache/logging/log4j/util/PrivateSecurityManagerStackTraceUtil;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-static {}, Lorg/apache/logging/log4j/util/PrivateSecurityManagerStackTraceUtil;->getCurrentStackTrace()Ljava/util/Deque;

    move-result-object v0

    return-object v0

    .line 203
    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 205
    .local v0, "classes":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/Class<*>;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/util/StackLocator;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v2

    move-object v3, v2

    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_1

    .line 206
    invoke-interface {v0, v3}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public getStackTraceElement(I)Ljava/lang/StackTraceElement;
    .locals 6
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "depth"
        }
    .end annotation

    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "i":I
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 236
    .local v4, "element":Ljava/lang/StackTraceElement;
    invoke-direct {p0, v4}, Lorg/apache/logging/log4j/util/StackLocator;->isValid(Ljava/lang/StackTraceElement;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 237
    if-ne v0, p1, :cond_0

    .line 238
    return-object v4

    .line 240
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 235
    .end local v4    # "element":Ljava/lang/StackTraceElement;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 243
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
