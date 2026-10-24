.class final Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;
.super Ljava/lang/Object;
.source "ThrowableProxyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CacheEntry"
.end annotation


# instance fields
.field private final element:Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;

.field private final loader:Ljava/lang/ClassLoader;


# direct methods
.method private constructor <init>(Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "element"    # Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "element",
            "loader"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;->element:Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;

    .line 54
    iput-object p2, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;->loader:Ljava/lang/ClassLoader;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;Ljava/lang/ClassLoader;Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;
    .param p2, "x1"    # Ljava/lang/ClassLoader;
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$1;

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;-><init>(Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;)Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;

    .line 48
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;->element:Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;)Ljava/lang/ClassLoader;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;

    .line 48
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;->loader:Ljava/lang/ClassLoader;

    return-object v0
.end method
