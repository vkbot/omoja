.class public interface abstract Lcom/mega/nexus/app/ITopStackExchangeListener;
.super Ljava/lang/Object;
.source "ITopStackExchangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/nexus/app/ITopStackExchangeListener$Stub;,
        Lcom/mega/nexus/app/ITopStackExchangeListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onTopStackExchanged(Ljava/lang/String;ILjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
