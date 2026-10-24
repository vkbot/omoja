.class public interface abstract Lcom/android/permission/persistence/RuntimePermissionsPersistence;
.super Ljava/lang/Object;
.source "RuntimePermissionsPersistence.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method public static createInstance()Lcom/android/permission/persistence/RuntimePermissionsPersistence;
    .locals 1

    .line 72
    new-instance v0, Lcom/android/permission/persistence/RuntimePermissionsPersistenceImpl;

    invoke-direct {v0}, Lcom/android/permission/persistence/RuntimePermissionsPersistenceImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract deleteForUser(Landroid/os/UserHandle;)V
.end method

.method public abstract readForUser(Landroid/os/UserHandle;)Lcom/android/permission/persistence/RuntimePermissionsState;
.end method

.method public abstract writeForUser(Lcom/android/permission/persistence/RuntimePermissionsState;Landroid/os/UserHandle;)V
.end method
