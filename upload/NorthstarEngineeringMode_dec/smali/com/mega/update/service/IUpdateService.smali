.class public interface abstract Lcom/mega/update/service/IUpdateService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/service/IUpdateService$Stub;,
        Lcom/mega/update/service/IUpdateService$Default;
    }
.end annotation


# virtual methods
.method public abstract applyAction(Lcom/mega/update/service/UpdateOption;)I
.end method

.method public abstract bind(Lcom/mega/update/service/IUpdateCallback;)Z
.end method

.method public abstract getPackagePath()Ljava/lang/String;
.end method

.method public abstract getState()Lcom/mega/update/service/UpdateState;
.end method

.method public abstract unbind(Lcom/mega/update/service/IUpdateCallback;)Z
.end method
