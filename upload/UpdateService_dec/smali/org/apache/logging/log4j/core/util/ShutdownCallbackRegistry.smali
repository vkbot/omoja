.class public interface abstract Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;
.super Ljava/lang/Object;
.source "ShutdownCallbackRegistry.java"


# static fields
.field public static final SHUTDOWN_CALLBACK_REGISTRY:Ljava/lang/String; = "log4j.shutdownCallbackRegistry"

.field public static final SHUTDOWN_HOOK_ENABLED:Ljava/lang/String; = "log4j.shutdownHookEnabled"

.field public static final SHUTDOWN_HOOK_MARKER:Lorg/apache/logging/log4j/Marker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-string v0, "SHUTDOWN HOOK"

    invoke-static {v0}, Lorg/apache/logging/log4j/MarkerManager;->getMarker(Ljava/lang/String;)Lorg/apache/logging/log4j/Marker;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;->SHUTDOWN_HOOK_MARKER:Lorg/apache/logging/log4j/Marker;

    return-void
.end method


# virtual methods
.method public abstract addShutdownCallback(Ljava/lang/Runnable;)Lorg/apache/logging/log4j/core/util/Cancellable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method
