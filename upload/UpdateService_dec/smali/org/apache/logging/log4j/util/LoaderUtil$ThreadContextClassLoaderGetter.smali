.class Lorg/apache/logging/log4j/util/LoaderUtil$ThreadContextClassLoaderGetter;
.super Ljava/lang/Object;
.source "LoaderUtil.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/util/LoaderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadContextClassLoaderGetter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/util/LoaderUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/util/LoaderUtil$1;

    .line 96
    invoke-direct {p0}, Lorg/apache/logging/log4j/util/LoaderUtil$ThreadContextClassLoaderGetter;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/ClassLoader;
    .locals 3

    .line 99
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 100
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 101
    return-object v0

    .line 103
    :cond_0
    const-class v1, Lorg/apache/logging/log4j/util/LoaderUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 104
    .local v1, "ccl":Ljava/lang/ClassLoader;
    if-nez v1, :cond_1

    invoke-static {}, Lorg/apache/logging/log4j/util/LoaderUtil;->access$100()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    return-object v2
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lorg/apache/logging/log4j/util/LoaderUtil$ThreadContextClassLoaderGetter;->run()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
