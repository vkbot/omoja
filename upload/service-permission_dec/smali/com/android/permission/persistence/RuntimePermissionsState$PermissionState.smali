.class public final Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;
.super Ljava/lang/Object;
.source "RuntimePermissionsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/permission/persistence/RuntimePermissionsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PermissionState"
.end annotation


# instance fields
.field private final mFlags:I

.field private final mGranted:Z

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "granted"    # Z
    .param p3, "flags"    # I

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->mName:Ljava/lang/String;

    .line 171
    iput-boolean p2, p0, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->mGranted:Z

    .line 172
    iput p3, p0, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->mFlags:I

    .line 173
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 205
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 206
    return v0

    .line 208
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 211
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;

    .line 212
    .local v2, "that":Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;
    iget-boolean v3, p0, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->mGranted:Z

    iget-boolean v4, v2, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->mGranted:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->mFlags:I

    iget v4, v2, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->mFlags:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->mName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->mName:Ljava/lang/String;

    .line 214
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 212
    :goto_0
    return v0

    .line 209
    .end local v2    # "that":Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;
    :cond_3
    :goto_1
    return v1
.end method

.method public getFlags()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->mFlags:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 219
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->mGranted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isGranted()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->mGranted:Z

    return v0
.end method
