.class public Lorg/apache/logging/log4j/core/util/AbstractWatcher$ReconfigurationRunnable;
.super Ljava/lang/Object;
.source "AbstractWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/util/AbstractWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReconfigurationRunnable"
.end annotation


# instance fields
.field private final configurationListener:Lorg/apache/logging/log4j/core/config/ConfigurationListener;

.field private final reconfigurable:Lorg/apache/logging/log4j/core/config/Reconfigurable;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/config/ConfigurationListener;Lorg/apache/logging/log4j/core/config/Reconfigurable;)V
    .locals 0
    .param p1, "configurationListener"    # Lorg/apache/logging/log4j/core/config/ConfigurationListener;
    .param p2, "reconfigurable"    # Lorg/apache/logging/log4j/core/config/Reconfigurable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "configurationListener",
            "reconfigurable"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/AbstractWatcher$ReconfigurationRunnable;->configurationListener:Lorg/apache/logging/log4j/core/config/ConfigurationListener;

    .line 88
    iput-object p2, p0, Lorg/apache/logging/log4j/core/util/AbstractWatcher$ReconfigurationRunnable;->reconfigurable:Lorg/apache/logging/log4j/core/config/Reconfigurable;

    .line 89
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 93
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/AbstractWatcher$ReconfigurationRunnable;->configurationListener:Lorg/apache/logging/log4j/core/config/ConfigurationListener;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/AbstractWatcher$ReconfigurationRunnable;->reconfigurable:Lorg/apache/logging/log4j/core/config/Reconfigurable;

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/core/config/ConfigurationListener;->onChange(Lorg/apache/logging/log4j/core/config/Reconfigurable;)V

    .line 94
    return-void
.end method
