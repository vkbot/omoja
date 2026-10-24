.class public final Lcom/android/role/persistence/RolesState;
.super Ljava/lang/Object;
.source "RolesState.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field private final mPackagesHash:Ljava/lang/String;

.field private final mRoles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mVersion:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "packagesHash"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 62
    .local p3, "roles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/android/role/persistence/RolesState;->mVersion:I

    .line 64
    iput-object p2, p0, Lcom/android/role/persistence/RolesState;->mPackagesHash:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/android/role/persistence/RolesState;->mRoles:Ljava/util/Map;

    .line 66
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 99
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 100
    return v0

    .line 102
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 105
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/role/persistence/RolesState;

    .line 106
    .local v2, "that":Lcom/android/role/persistence/RolesState;
    iget v3, p0, Lcom/android/role/persistence/RolesState;->mVersion:I

    iget v4, v2, Lcom/android/role/persistence/RolesState;->mVersion:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/role/persistence/RolesState;->mPackagesHash:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/role/persistence/RolesState;->mPackagesHash:Ljava/lang/String;

    .line 107
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/role/persistence/RolesState;->mRoles:Ljava/util/Map;

    iget-object v4, v2, Lcom/android/role/persistence/RolesState;->mRoles:Ljava/util/Map;

    .line 108
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 106
    :goto_0
    return v0

    .line 103
    .end local v2    # "that":Lcom/android/role/persistence/RolesState;
    :cond_3
    :goto_1
    return v1
.end method

.method public getPackagesHash()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/role/persistence/RolesState;->mPackagesHash:Ljava/lang/String;

    return-object v0
.end method

.method public getRoles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/android/role/persistence/RolesState;->mRoles:Ljava/util/Map;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/android/role/persistence/RolesState;->mVersion:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/role/persistence/RolesState;->mVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/role/persistence/RolesState;->mPackagesHash:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/role/persistence/RolesState;->mRoles:Ljava/util/Map;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
