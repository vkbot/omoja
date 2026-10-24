.class public final Lcom/android/permission/persistence/RuntimePermissionsState;
.super Ljava/lang/Object;
.source "RuntimePermissionsState.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;
    }
.end annotation


# static fields
.field public static final NO_VERSION:I = -0x1


# instance fields
.field private final mFingerprint:Ljava/lang/String;

.field private final mPackagePermissions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSharedUserPermissions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mVersion:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "fingerprint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;",
            ">;>;)V"
        }
    .end annotation

    .line 75
    .local p3, "packagePermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    .local p4, "sharedUserPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Lcom/android/permission/persistence/RuntimePermissionsState;->mVersion:I

    .line 77
    iput-object p2, p0, Lcom/android/permission/persistence/RuntimePermissionsState;->mFingerprint:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/android/permission/persistence/RuntimePermissionsState;->mPackagePermissions:Ljava/util/Map;

    .line 79
    iput-object p4, p0, Lcom/android/permission/persistence/RuntimePermissionsState;->mSharedUserPermissions:Ljava/util/Map;

    .line 80
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 123
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 124
    return v0

    .line 126
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 129
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/permission/persistence/RuntimePermissionsState;

    .line 130
    .local v2, "that":Lcom/android/permission/persistence/RuntimePermissionsState;
    iget v3, p0, Lcom/android/permission/persistence/RuntimePermissionsState;->mVersion:I

    iget v4, v2, Lcom/android/permission/persistence/RuntimePermissionsState;->mVersion:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/permission/persistence/RuntimePermissionsState;->mFingerprint:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/permission/persistence/RuntimePermissionsState;->mFingerprint:Ljava/lang/String;

    .line 131
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/permission/persistence/RuntimePermissionsState;->mPackagePermissions:Ljava/util/Map;

    iget-object v4, v2, Lcom/android/permission/persistence/RuntimePermissionsState;->mPackagePermissions:Ljava/util/Map;

    .line 132
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/permission/persistence/RuntimePermissionsState;->mSharedUserPermissions:Ljava/util/Map;

    iget-object v4, v2, Lcom/android/permission/persistence/RuntimePermissionsState;->mSharedUserPermissions:Ljava/util/Map;

    .line 133
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 130
    :goto_0
    return v0

    .line 127
    .end local v2    # "that":Lcom/android/permission/persistence/RuntimePermissionsState;
    :cond_3
    :goto_1
    return v1
.end method

.method public getFingerprint()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/permission/persistence/RuntimePermissionsState;->mFingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public getPackagePermissions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;",
            ">;>;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/android/permission/persistence/RuntimePermissionsState;->mPackagePermissions:Ljava/util/Map;

    return-object v0
.end method

.method public getSharedUserPermissions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;",
            ">;>;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/android/permission/persistence/RuntimePermissionsState;->mSharedUserPermissions:Ljava/util/Map;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/android/permission/persistence/RuntimePermissionsState;->mVersion:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 138
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/permission/persistence/RuntimePermissionsState;->mVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/permission/persistence/RuntimePermissionsState;->mFingerprint:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/permission/persistence/RuntimePermissionsState;->mPackagePermissions:Ljava/util/Map;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/permission/persistence/RuntimePermissionsState;->mSharedUserPermissions:Ljava/util/Map;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
