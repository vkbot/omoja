.class public interface abstract Lcom/google/android/setupwizard/util/INetworkInterceptService;
.super Ljava/lang/Object;
.source "INetworkInterceptService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupwizard/util/INetworkInterceptService$Stub;
    }
.end annotation


# virtual methods
.method public abstract disableNetworkIntentIntercept()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enableNetworkIntentIntercept()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isNetworkIntentIntercepted()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
