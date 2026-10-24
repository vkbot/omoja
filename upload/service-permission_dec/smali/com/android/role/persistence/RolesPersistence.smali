.class public interface abstract Lcom/android/role/persistence/RolesPersistence;
.super Ljava/lang/Object;
.source "RolesPersistence.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method public static createInstance()Lcom/android/role/persistence/RolesPersistence;
    .locals 1

    .line 71
    new-instance v0, Lcom/android/role/persistence/RolesPersistenceImpl;

    invoke-direct {v0}, Lcom/android/role/persistence/RolesPersistenceImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract deleteForUser(Landroid/os/UserHandle;)V
.end method

.method public abstract readForUser(Landroid/os/UserHandle;)Lcom/android/role/persistence/RolesState;
.end method

.method public abstract writeForUser(Lcom/android/role/persistence/RolesState;Landroid/os/UserHandle;)V
.end method
