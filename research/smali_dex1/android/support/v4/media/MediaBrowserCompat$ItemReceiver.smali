.class Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;
.super Lb/d;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# virtual methods
.method public final q(ILandroid/os/Bundle;)V
    .registers 5

    .line 1
    if-eqz p2, :cond_6

    .line 2
    .line 3
    invoke-static {p2}, Landroid/support/v4/media/session/h;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_22

    .line 9
    .line 10
    if-eqz p2, :cond_22

    .line 11
    .line 12
    const-string p1, "media_item"

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_22

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1f

    .line 25
    .line 26
    instance-of p2, p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 27
    .line 28
    if-eqz p2, :cond_1e

    .line 29
    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    throw v0

    .line 32
    :cond_1f
    :goto_1f
    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 33
    .line 34
    throw v0

    .line 35
    :cond_22
    throw v0
.end method
