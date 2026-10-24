.class public interface abstract Lcom/mega/nexus/view/IUserActivityListener;
.super Ljava/lang/Object;
.source "IUserActivityListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/nexus/view/IUserActivityListener$Stub;,
        Lcom/mega/nexus/view/IUserActivityListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onUserIdleForSomeTime()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
