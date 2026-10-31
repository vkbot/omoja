.class Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;
.super Landroid/os/ResultReceiver;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public b:Ljava/lang/ref/WeakReference;


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .registers 9

    .line 1
    iget-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->b:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/support/v4/media/session/e;

    .line 8
    .line 9
    if-eqz p1, :cond_83

    .line 10
    .line 11
    if-nez p2, :cond_e

    .line 12
    .line 13
    goto/16 :goto_83

    .line 14
    .line 15
    :cond_e
    iget-object v0, p1, Landroid/support/v4/media/session/e;->b:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_11
    iget-object v1, p1, Landroid/support/v4/media/session/e;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 19
    .line 20
    const-string v2, "android.support.v4.media.session.EXTRA_BINDER"

    .line 21
    .line 22
    invoke-static {p2, v2}, Landroidx/core/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    sget v3, Landroid/support/v4/media/session/b;->c:I

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    if-nez v2, :cond_20

    .line 30
    .line 31
    move-object v4, v3

    .line 32
    goto :goto_36

    .line 33
    :cond_20
    const-string v4, "android.support.v4.media.session.c"

    .line 34
    .line 35
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    if-eqz v4, :cond_2f

    .line 40
    .line 41
    instance-of v5, v4, Landroid/support/v4/media/session/c;

    .line 42
    .line 43
    if-eqz v5, :cond_2f

    .line 44
    .line 45
    check-cast v4, Landroid/support/v4/media/session/c;

    .line 46
    .line 47
    goto :goto_36

    .line 48
    :cond_2f
    new-instance v4, Landroid/support/v4/media/session/a;

    .line 49
    .line 50
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v2, v4, Landroid/support/v4/media/session/a;->c:Landroid/os/IBinder;

    .line 54
    .line 55
    :goto_36
    iget-object v2, v1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->b:Ljava/lang/Object;

    .line 56
    .line 57
    monitor-enter v2
    :try_end_39
    .catchall {:try_start_11 .. :try_end_39} :catchall_6e

    .line 58
    :try_start_39
    iput-object v4, v1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->d:Landroid/support/v4/media/session/c;

    .line 59
    .line 60
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_7e

    .line 61
    :try_start_3c
    iget-object v1, p1, Landroid/support/v4/media/session/e;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 62
    .line 63
    const-string v2, "android.support.v4.media.session.SESSION_TOKEN2"

    .line 64
    .line 65
    invoke-static {p2, v2}, Landroidx/versionedparcelable/ParcelUtils;->getVersionedParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/versionedparcelable/VersionedParcelable;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    iget-object v2, v1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->b:Ljava/lang/Object;

    .line 70
    .line 71
    monitor-enter v2
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_6e

    .line 72
    :try_start_47
    iput-object p2, v1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->e:Landroidx/versionedparcelable/VersionedParcelable;

    .line 73
    .line 74
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_7b

    .line 75
    :try_start_4a
    iget-object p2, p1, Landroid/support/v4/media/session/e;->c:Ljava/util/ArrayList;

    .line 76
    .line 77
    iget-object v1, p1, Landroid/support/v4/media/session/e;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->r()Landroid/support/v4/media/session/c;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-nez v1, :cond_55

    .line 84
    .line 85
    goto :goto_6c

    .line 86
    :cond_55
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-nez v2, :cond_63

    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 97
    .line 98
    .line 99
    goto :goto_6c

    .line 100
    :cond_63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    if-eqz p2, :cond_70

    .line 105
    .line 106
    invoke-static {}, Ln0/b;->a()V

    .line 107
    .line 108
    .line 109
    :goto_6c
    monitor-exit v0

    .line 110
    return-void

    .line 111
    :catchall_6e
    move-exception p1

    .line 112
    goto :goto_81

    .line 113
    :cond_70
    new-instance p2, Landroid/support/v4/media/session/d;

    .line 114
    .line 115
    invoke-direct {p2}, Landroid/support/v4/media/session/d;-><init>()V

    .line 116
    .line 117
    .line 118
    iget-object p1, p1, Landroid/support/v4/media/session/e;->d:Ljava/util/HashMap;

    .line 119
    .line 120
    invoke-virtual {p1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    throw v3
    :try_end_7b
    .catchall {:try_start_4a .. :try_end_7b} :catchall_6e

    .line 124
    :catchall_7b
    move-exception p1

    .line 125
    :try_start_7c
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    .line 126
    :try_start_7d
    throw p1
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_6e

    .line 127
    :catchall_7e
    move-exception p1

    .line 128
    :try_start_7f
    monitor-exit v2
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    .line 129
    :try_start_80
    throw p1

    .line 130
    :goto_81
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_80 .. :try_end_82} :catchall_6e

    .line 131
    throw p1

    .line 132
    :cond_83
    :goto_83
    return-void
.end method
