.class public abstract Lcom/android/managedprovisioning/common/PersistableBundlable;
.super Ljava/lang/Object;
.source "PersistableBundlable.java"

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPersistableBundleFromParcel(Landroid/os/Parcel;)Landroid/os/PersistableBundle;
    .locals 1

    .line 34
    const-class v0, Landroid/os/PersistableBundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/PersistableBundle;

    return-object p0
.end method

.method private static isPersistableBundlableEquals(Lcom/android/managedprovisioning/common/PersistableBundlable;Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    check-cast p1, Lcom/android/managedprovisioning/common/PersistableBundlable;

    .line 70
    invoke-virtual {p0}, Lcom/android/managedprovisioning/common/PersistableBundlable;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/managedprovisioning/common/PersistableBundlable;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/managedprovisioning/common/PersistableBundlable;->isPersistableBundleEquals(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isPersistableBundleEquals(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 80
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/PersistableBundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 84
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 85
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 86
    invoke-virtual {p1, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 87
    invoke-static {v4, v3}, Lcom/android/managedprovisioning/common/PersistableBundlable;->isPersistableBundleSupportedValueEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method private static isPersistableBundleSupportedValueEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    instance-of v0, p0, Landroid/os/PersistableBundle;

    if-eqz v0, :cond_2

    .line 105
    check-cast p0, Landroid/os/PersistableBundle;

    check-cast p1, Landroid/os/PersistableBundle;

    invoke-static {p0, p1}, Lcom/android/managedprovisioning/common/PersistableBundlable;->isPersistableBundleEquals(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z

    move-result p0

    return p0

    .line 106
    :cond_2
    instance-of v0, p0, [I

    if-eqz v0, :cond_3

    .line 107
    check-cast p0, [I

    check-cast p1, [I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0

    .line 108
    :cond_3
    instance-of v0, p0, [J

    if-eqz v0, :cond_4

    .line 109
    check-cast p0, [J

    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    return p0

    .line 110
    :cond_4
    instance-of v0, p0, [D

    if-eqz v0, :cond_5

    .line 111
    check-cast p0, [D

    check-cast p1, [D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p0

    return p0

    .line 112
    :cond_5
    instance-of v0, p0, [Z

    if-eqz v0, :cond_6

    .line 113
    check-cast p0, [Z

    check-cast p1, [Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p0

    return p0

    .line 114
    :cond_6
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 115
    check-cast p0, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 117
    :cond_7
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_8
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 39
    invoke-static {p0, p1}, Lcom/android/managedprovisioning/common/PersistableBundlable;->isPersistableBundlableEquals(Lcom/android/managedprovisioning/common/PersistableBundlable;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/managedprovisioning/common/PersistableBundlable;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 46
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string p0, ","

    .line 47
    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public abstract toPersistableBundle()Landroid/os/PersistableBundle;
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/android/managedprovisioning/common/PersistableBundlable;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
