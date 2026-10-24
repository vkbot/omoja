.class public interface abstract Lorg/apache/logging/log4j/core/LifeCycle;
.super Ljava/lang/Object;
.source "LifeCycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/LifeCycle$State;
    }
.end annotation


# virtual methods
.method public abstract getState()Lorg/apache/logging/log4j/core/LifeCycle$State;
.end method

.method public abstract initialize()V
.end method

.method public abstract isStarted()Z
.end method

.method public abstract isStopped()Z
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
