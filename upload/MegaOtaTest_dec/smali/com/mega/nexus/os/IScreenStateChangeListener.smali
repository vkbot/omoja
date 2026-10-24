.class public interface abstract Lcom/mega/nexus/os/IScreenStateChangeListener;
.super Ljava/lang/Object;
.source "IScreenStateChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/nexus/os/IScreenStateChangeListener$Stub;,
        Lcom/mega/nexus/os/IScreenStateChangeListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
