.class Landroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;
.super Landroid/support/v4/media/d;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/session/MediaButtonReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaButtonConnectionCallback"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private mMediaBrowser:Landroid/support/v4/media/i;

.field private final mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/d;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mIntent:Landroid/content/Intent;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    .line 9
    .line 10
    return-void
.end method

.method private finish()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mMediaBrowser:Landroid/support/v4/media/i;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/support/v4/media/i;->a:Landroid/support/v4/media/e;

    .line 4
    .line 5
    iget-object v1, v0, Landroid/support/v4/media/e;->f:Landroid/support/v4/media/h;

    .line 6
    .line 7
    if-eqz v1, :cond_2b

    .line 8
    .line 9
    iget-object v2, v0, Landroid/support/v4/media/e;->g:Landroid/os/Messenger;

    .line 10
    .line 11
    if-eqz v2, :cond_2b

    .line 12
    .line 13
    :try_start_c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/4 v4, 0x7

    .line 18
    iput v4, v3, Landroid/os/Message;->what:I

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    iput-object v2, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 28
    .line 29
    iget-object v1, v1, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Landroid/os/Messenger;

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_23} :catch_24

    .line 34
    .line 35
    .line 36
    goto :goto_2b

    .line 37
    :catch_24
    const-string v1, "MediaBrowserCompat"

    .line 38
    .line 39
    const-string v2, "Remote error unregistering client messenger."

    .line 40
    .line 41
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_2b
    :goto_2b
    iget-object v0, v0, Landroid/support/v4/media/e;->b:Landroid/media/browse/MediaBrowser;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->disconnect()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Landroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public onConnected()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mMediaBrowser:Landroid/support/v4/media/i;

    .line 4
    .line 5
    iget-object v1, v1, Landroid/support/v4/media/i;->a:Landroid/support/v4/media/e;

    .line 6
    .line 7
    iget-object v2, v1, Landroid/support/v4/media/e;->h:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 8
    .line 9
    if-nez v2, :cond_17

    .line 10
    .line 11
    iget-object v2, v1, Landroid/support/v4/media/e;->b:Landroid/media/browse/MediaBrowser;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->q(Landroid/os/Parcelable;Landroid/support/v4/media/session/c;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iput-object v2, v1, Landroid/support/v4/media/e;->h:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 23
    .line 24
    :cond_17
    iget-object v1, v1, Landroid/support/v4/media/e;->h:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 25
    .line 26
    if-eqz v1, :cond_4f

    .line 27
    .line 28
    new-instance v2, Ljava/util/HashSet;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {v2}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    .line 38
    const/16 v3, 0x1d

    .line 39
    .line 40
    if-lt v2, v3, :cond_2f

    .line 41
    .line 42
    new-instance v2, Landroid/support/v4/media/session/f;

    .line 43
    .line 44
    invoke-direct {v2, v0, v1}, Landroid/support/v4/media/session/e;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 45
    .line 46
    .line 47
    goto :goto_34

    .line 48
    :cond_2f
    new-instance v2, Landroid/support/v4/media/session/e;

    .line 49
    .line 50
    invoke-direct {v2, v0, v1}, Landroid/support/v4/media/session/e;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 51
    .line 52
    .line 53
    :goto_34
    iget-object v0, p0, Landroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mIntent:Landroid/content/Intent;

    .line 54
    .line 55
    const-string v1, "android.intent.extra.KEY_EVENT"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroid/view/KeyEvent;

    .line 62
    .line 63
    if-eqz v0, :cond_49

    .line 64
    .line 65
    iget-object v1, v2, Landroid/support/v4/media/session/e;->a:Landroid/media/session/MediaController;

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Landroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->finish()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_49
    const-string v0, "KeyEvent may not be null"

    .line 75
    .line 76
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_4f
    const-string v0, "sessionToken must not be null"

    .line 81
    .line 82
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public onConnectionFailed()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onConnectionSuspended()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setMediaBrowser(Landroid/support/v4/media/i;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mMediaBrowser:Landroid/support/v4/media/i;

    .line 2
    .line 3
    return-void
.end method
