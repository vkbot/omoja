.class public final Lorg/apache/logging/log4j/MarkerManager;
.super Ljava/lang/Object;
.source "MarkerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;
    }
.end annotation


# static fields
.field private static final MARKERS:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/Marker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/MarkerManager;->MARKERS:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/String;

    .line 29
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/MarkerManager;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .line 29
    sget-object v0, Lorg/apache/logging/log4j/MarkerManager;->MARKERS:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public static clear()V
    .locals 1

    .line 41
    sget-object v0, Lorg/apache/logging/log4j/MarkerManager;->MARKERS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 42
    return-void
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 52
    sget-object v0, Lorg/apache/logging/log4j/MarkerManager;->MARKERS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getMarker(Ljava/lang/String;)Lorg/apache/logging/log4j/Marker;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 63
    sget-object v0, Lorg/apache/logging/log4j/MarkerManager;->MARKERS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/Marker;

    .line 64
    .local v0, "result":Lorg/apache/logging/log4j/Marker;
    if-nez v0, :cond_0

    .line 65
    sget-object v1, Lorg/apache/logging/log4j/MarkerManager;->MARKERS:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;

    invoke-direct {v2, p0}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v1, Lorg/apache/logging/log4j/MarkerManager;->MARKERS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/apache/logging/log4j/Marker;

    .line 68
    :cond_0
    return-object v0
.end method

.method public static getMarker(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/Marker;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "parent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "parent"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    sget-object v0, Lorg/apache/logging/log4j/MarkerManager;->MARKERS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/Marker;

    .line 83
    .local v0, "parentMarker":Lorg/apache/logging/log4j/Marker;
    if-eqz v0, :cond_0

    .line 86
    invoke-static {p0, v0}, Lorg/apache/logging/log4j/MarkerManager;->getMarker(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;)Lorg/apache/logging/log4j/Marker;

    move-result-object v1

    return-object v1

    .line 84
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent Marker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has not been defined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getMarker(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;)Lorg/apache/logging/log4j/Marker;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "parent"    # Lorg/apache/logging/log4j/Marker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "parent"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    invoke-static {p0}, Lorg/apache/logging/log4j/MarkerManager;->getMarker(Ljava/lang/String;)Lorg/apache/logging/log4j/Marker;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/logging/log4j/Marker;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Marker;->addParents([Lorg/apache/logging/log4j/Marker;)Lorg/apache/logging/log4j/Marker;

    move-result-object v0

    return-object v0
.end method

.method private static requireNonNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "obj",
            "message"
        }
    .end annotation

    .line 406
    if-eqz p0, :cond_0

    .line 409
    return-void

    .line 407
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
