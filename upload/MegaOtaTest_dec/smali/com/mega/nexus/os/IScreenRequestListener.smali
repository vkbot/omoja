.class public interface abstract Lcom/mega/nexus/os/IScreenRequestListener;
.super Ljava/lang/Object;
.source "IScreenRequestListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/nexus/os/IScreenRequestListener$Stub;,
        Lcom/mega/nexus/os/IScreenRequestListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onResult(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
