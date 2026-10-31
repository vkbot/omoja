.class Landroidx/media/app/NotificationCompat$Api21Impl;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api21Impl"
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

.method public static createMediaStyle()Landroid/app/Notification$MediaStyle;
    .registers 1
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    new-instance v0, Landroid/app/Notification$MediaStyle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/Notification$MediaStyle;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static fillInMediaStyle(Landroid/app/Notification$MediaStyle;[ILandroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/app/Notification$MediaStyle;
    .registers 3
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/media/app/NotificationCompat$Api21Impl;->setShowActionsInCompactView(Landroid/app/Notification$MediaStyle;[I)V

    .line 4
    .line 5
    .line 6
    :cond_5
    if-eqz p2, :cond_e

    .line 7
    .line 8
    iget-object p1, p2, Landroid/support/v4/media/session/MediaSessionCompat$Token;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Landroid/media/session/MediaSession$Token;

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroidx/media/app/NotificationCompat$Api21Impl;->setMediaSession(Landroid/app/Notification$MediaStyle;Landroid/media/session/MediaSession$Token;)V

    .line 13
    .line 14
    .line 15
    :cond_e
    return-object p0
.end method

.method public static setMediaSession(Landroid/app/Notification$MediaStyle;Landroid/media/session/MediaSession$Token;)V
    .registers 2
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Notification$MediaStyle;->setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setMediaStyle(Landroid/app/Notification$Builder;Landroid/app/Notification$MediaStyle;)V
    .registers 2
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static varargs setShowActionsInCompactView(Landroid/app/Notification$MediaStyle;[I)V
    .registers 2
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    .line 2
    .line 3
    .line 4
    return-void
.end method
