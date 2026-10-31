.class public Landroidx/media/MediaBrowserCompatUtils;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    const/4 v1, 0x0

    .line 6
    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    .line 7
    .line 8
    const-string v3, "android.media.browse.extra.PAGE"

    .line 9
    .line 10
    const/4 v4, -0x1

    .line 11
    if-nez p0, :cond_1a

    .line 12
    .line 13
    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-ne p0, v4, :cond_19

    .line 18
    .line 19
    invoke-virtual {p1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-ne p0, v4, :cond_19

    .line 24
    .line 25
    return v0

    .line 26
    :cond_19
    return v1

    .line 27
    :cond_1a
    if-nez p1, :cond_2a

    .line 28
    .line 29
    invoke-virtual {p0, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-ne p1, v4, :cond_29

    .line 34
    .line 35
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-ne p0, v4, :cond_29

    .line 40
    .line 41
    return v0

    .line 42
    :cond_29
    return v1

    .line 43
    :cond_2a
    invoke-virtual {p0, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-ne v5, v3, :cond_3f

    .line 52
    .line 53
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    invoke-virtual {p1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-ne p0, p1, :cond_3f

    .line 62
    .line 63
    return v0

    .line 64
    :cond_3f
    return v1
.end method

.method public static hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 8

    .line 1
    const-string v0, "android.media.browse.extra.PAGE"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez p0, :cond_7

    .line 5
    .line 6
    move v2, v1

    .line 7
    goto :goto_b

    .line 8
    :cond_7
    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    :goto_b
    if-nez p1, :cond_f

    .line 13
    .line 14
    move v0, v1

    .line 15
    goto :goto_13

    .line 16
    :cond_f
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    :goto_13
    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    .line 21
    .line 22
    if-nez p0, :cond_19

    .line 23
    .line 24
    move p0, v1

    .line 25
    goto :goto_1d

    .line 26
    :cond_19
    invoke-virtual {p0, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    :goto_1d
    if-nez p1, :cond_21

    .line 31
    .line 32
    move p1, v1

    .line 33
    goto :goto_25

    .line 34
    :cond_21
    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    :goto_25
    const v3, 0x7fffffff

    .line 39
    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    const/4 v5, 0x1

    .line 43
    if-eq v2, v1, :cond_33

    .line 44
    .line 45
    if-ne p0, v1, :cond_2f

    .line 46
    .line 47
    goto :goto_33

    .line 48
    :cond_2f
    mul-int/2addr v2, p0

    .line 49
    add-int/2addr p0, v2

    .line 50
    sub-int/2addr p0, v5

    .line 51
    goto :goto_35

    .line 52
    :cond_33
    :goto_33
    move p0, v3

    .line 53
    move v2, v4

    .line 54
    :goto_35
    if-eq v0, v1, :cond_3f

    .line 55
    .line 56
    if-ne p1, v1, :cond_3a

    .line 57
    .line 58
    goto :goto_3f

    .line 59
    :cond_3a
    mul-int/2addr v0, p1

    .line 60
    add-int/2addr p1, v0

    .line 61
    add-int/lit8 v3, p1, -0x1

    .line 62
    .line 63
    goto :goto_40

    .line 64
    :cond_3f
    :goto_3f
    move v0, v4

    .line 65
    :goto_40
    if-lt p0, v0, :cond_45

    .line 66
    .line 67
    if-lt v3, v2, :cond_45

    .line 68
    .line 69
    return v5

    .line 70
    :cond_45
    return v4
.end method
