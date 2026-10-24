.class public Lcom/mega/nexus/media/session/MegaMediaSessionManager;
.super Ljava/lang/Object;
.source "MegaMediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/nexus/media/session/MegaMediaSessionManager$OnMediaKeyListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatchMediaKeyEventAsSystemService(Landroid/media/session/MediaSessionManager;Landroid/view/KeyEvent;)V
    .locals 0
    .param p0, "mediaSessionManager"    # Landroid/media/session/MediaSessionManager;
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 32
    invoke-virtual {p0, p1}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEventAsSystemService(Landroid/view/KeyEvent;)V

    .line 33
    return-void
.end method

.method public static dispatchVolumeKeyEventAsSystemService(Landroid/media/session/MediaSessionManager;Landroid/view/KeyEvent;I)V
    .locals 0
    .param p0, "mediaSessionManager"    # Landroid/media/session/MediaSessionManager;
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "streamType"    # I

    .line 39
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V

    .line 40
    return-void
.end method

.method public static getAllSessions(Landroid/media/session/MediaSessionManager;Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p0, "mediaSessionManager"    # Landroid/media/session/MediaSessionManager;
    .param p1, "notificationListener"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/session/MediaSessionManager;",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;"
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Landroid/media/session/MediaSessionManager;->getAllSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setOnMediaKeyListener(Landroid/media/session/MediaSessionManager;Lcom/mega/nexus/media/session/MegaMediaSessionManager$OnMediaKeyListener;Landroid/os/Handler;)V
    .locals 1
    .param p0, "mediaSessionManager"    # Landroid/media/session/MediaSessionManager;
    .param p1, "listener"    # Lcom/mega/nexus/media/session/MegaMediaSessionManager$OnMediaKeyListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 17
    new-instance v0, Lcom/mega/nexus/media/session/MegaMediaSessionManager$1;

    invoke-direct {v0, p1}, Lcom/mega/nexus/media/session/MegaMediaSessionManager$1;-><init>(Lcom/mega/nexus/media/session/MegaMediaSessionManager$OnMediaKeyListener;)V

    invoke-virtual {p0, v0, p2}, Landroid/media/session/MediaSessionManager;->setOnMediaKeyListener(Landroid/media/session/MediaSessionManager$OnMediaKeyListener;Landroid/os/Handler;)V

    .line 23
    return-void
.end method
