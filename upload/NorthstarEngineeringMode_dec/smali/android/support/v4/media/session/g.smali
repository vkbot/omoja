.class public final Landroid/support/v4/media/session/g;
.super Landroid/media/session/MediaController$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/session/f;",
        ">",
        "Landroid/media/session/MediaController$Callback;"
    }
.end annotation


# instance fields
.field public final a:Landroid/support/v4/media/session/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/c$a;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/session/g;->a:Landroid/support/v4/media/session/f;

    return-void
.end method


# virtual methods
.method public final onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 3

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v1

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    :goto_0
    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    iget-object p0, p0, Landroid/support/v4/media/session/g;->a:Landroid/support/v4/media/session/f;

    check-cast p0, Landroid/support/v4/media/session/c$a;

    iget-object p0, p0, Landroid/support/v4/media/session/c$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/session/c;

    return-void
.end method

.method public final onExtrasChanged(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    iget-object p0, p0, Landroid/support/v4/media/session/g;->a:Landroid/support/v4/media/session/f;

    check-cast p0, Landroid/support/v4/media/session/c$a;

    iget-object p0, p0, Landroid/support/v4/media/session/c$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/session/c;

    return-void
.end method

.method public final onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 1

    iget-object p0, p0, Landroid/support/v4/media/session/g;->a:Landroid/support/v4/media/session/f;

    check-cast p0, Landroid/support/v4/media/session/c$a;

    iget-object p0, p0, Landroid/support/v4/media/session/c$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/session/c;

    if-eqz p0, :cond_0

    sget-object p0, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/media/MediaMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object p1, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/media/session/g;->a:Landroid/support/v4/media/session/f;

    check-cast v0, Landroid/support/v4/media/session/c$a;

    iget-object v0, v0, Landroid/support/v4/media/session/c$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    if-eqz v0, :cond_4

    iget-object v0, v0, Landroid/support/v4/media/session/c;->a:Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$a;

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getCustomActions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    move-object v5, v3

    check-cast v5, Landroid/media/session/PlaybackState$CustomAction;

    invoke-virtual {v5}, Landroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/media/session/PlaybackState$CustomAction;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5}, Landroid/media/session/PlaybackState$CustomAction;->getIcon()I

    move-result v8

    invoke-virtual {v5}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v4, v6, v7, v8, v5}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;)V

    iput-object v3, v4, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->Z:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object/from16 v17, v2

    goto :goto_2

    :cond_3
    move-object/from16 v17, v1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    new-instance v5, Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getBufferedPosition()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v15

    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getActiveQueueItemId()J

    move-result-wide v18

    invoke-direct/range {v5 .. v20}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJLjava/lang/CharSequence;JLjava/util/ArrayList;JLandroid/os/Bundle;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final onQueueChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroid/support/v4/media/session/g;->a:Landroid/support/v4/media/session/f;

    check-cast p0, Landroid/support/v4/media/session/c$a;

    iget-object p0, p0, Landroid/support/v4/media/session/c$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/session/c;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/media/session/MediaSession$QueueItem;

    invoke-virtual {v1}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/media/MediaDescriptionCompat;->a(Ljava/lang/Object;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v2

    invoke-virtual {v1}, Landroid/media/session/MediaSession$QueueItem;->getQueueId()J

    move-result-wide v3

    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Ljava/lang/Object;Landroid/support/v4/media/MediaDescriptionCompat;J)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Landroid/support/v4/media/session/g;->a:Landroid/support/v4/media/session/f;

    check-cast p0, Landroid/support/v4/media/session/c$a;

    iget-object p0, p0, Landroid/support/v4/media/session/c$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/session/c;

    return-void
.end method

.method public final onSessionDestroyed()V
    .locals 0

    iget-object p0, p0, Landroid/support/v4/media/session/g;->a:Landroid/support/v4/media/session/f;

    check-cast p0, Landroid/support/v4/media/session/c$a;

    iget-object p0, p0, Landroid/support/v4/media/session/c$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/session/c;

    return-void
.end method

.method public final onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    iget-object p0, p0, Landroid/support/v4/media/session/g;->a:Landroid/support/v4/media/session/f;

    check-cast p0, Landroid/support/v4/media/session/c$a;

    iget-object p0, p0, Landroid/support/v4/media/session/c$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/session/c;

    return-void
.end method
