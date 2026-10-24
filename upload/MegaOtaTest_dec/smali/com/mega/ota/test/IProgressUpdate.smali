.class public interface abstract Lcom/mega/ota/test/IProgressUpdate;
.super Ljava/lang/Object;
.source "IProgressUpdate.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/ota/test/IProgressUpdate$Stub;,
        Lcom/mega/ota/test/IProgressUpdate$Default;
    }
.end annotation


# virtual methods
.method public abstract updateProgress(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateStatus(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
