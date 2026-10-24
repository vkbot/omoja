.class public Lcom/mega/nexus/app/MegaUserManager;
.super Ljava/lang/Object;
.source "MegaUserManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIdFromUserHandle(Landroid/os/UserHandle;)I
    .locals 2
    .param p0, "userHandle"    # Landroid/os/UserHandle;

    .line 42
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 43
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 44
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 45
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    return v1
.end method

.method public static getMatchingListOfDisplayTypeAndUser(Ljava/util/List;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;)",
            "Ljava/util/HashMap<",
            "Landroid/os/UserHandle;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 22
    .local p0, "profileUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    .local v0, "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/os/UserHandle;Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v2, "displayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v1, Lcom/mega/nexus/app/-$$Lambda$MegaUserManager$OajNM8wCFwtf25Mgft3-rPAH1fo;

    invoke-direct {v1, v2, v0}, Lcom/mega/nexus/app/-$$Lambda$MegaUserManager$OajNM8wCFwtf25Mgft3-rPAH1fo;-><init>(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 38
    return-object v0

    .line 23
    .end local v0    # "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/os/UserHandle;Ljava/lang/Integer;>;"
    .end local v2    # "displayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least 3 profile users need to be passed in, otherwise is current os support multi-user feature?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$getMatchingListOfDisplayTypeAndUser$0(Ljava/util/ArrayList;Ljava/util/HashMap;Landroid/os/UserHandle;)V
    .locals 1
    .param p0, "displayList"    # Ljava/util/ArrayList;
    .param p1, "resultMap"    # Ljava/util/HashMap;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 31
    invoke-static {p2}, Lcom/mega/nexus/app/MegaUserManager;->getIdFromUserHandle(Landroid/os/UserHandle;)I

    move-result v0

    if-nez v0, :cond_0

    .line 32
    return-void

    .line 34
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_1
    return-void
.end method
