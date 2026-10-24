.class public interface abstract Lcom/mega/nexus/app/IRunningTaskChangeListener;
.super Ljava/lang/Object;
.source "IRunningTaskChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub;,
        Lcom/mega/nexus/app/IRunningTaskChangeListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
