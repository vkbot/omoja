.class public interface abstract Lorg/apache/logging/log4j/core/util/Watcher;
.super Ljava/lang/Object;
.source "Watcher.java"


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "Watcher"

.field public static final ELEMENT_TYPE:Ljava/lang/String; = "watcher"


# virtual methods
.method public abstract getLastModified()J
.end method

.method public abstract getListeners()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/ConfigurationListener;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSource()Lorg/apache/logging/log4j/core/util/Source;
.end method

.method public abstract isModified()Z
.end method

.method public abstract modified()V
.end method

.method public abstract newWatcher(Lorg/apache/logging/log4j/core/config/Reconfigurable;Ljava/util/List;J)Lorg/apache/logging/log4j/core/util/Watcher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "reconfigurable",
            "listeners",
            "lastModifiedMillis"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/Reconfigurable;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/ConfigurationListener;",
            ">;J)",
            "Lorg/apache/logging/log4j/core/util/Watcher;"
        }
    .end annotation
.end method

.method public abstract watching(Lorg/apache/logging/log4j/core/util/Source;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation
.end method
