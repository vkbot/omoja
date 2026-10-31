.class public final Landroid/support/v4/media/b;
.super Landroid/media/browse/MediaBrowser$ConnectionCallback;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:Landroid/support/v4/media/d;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/b;->a:Landroid/support/v4/media/d;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onConnected()V
    .registers 11

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/b;->a:Landroid/support/v4/media/d;

    .line 2
    .line 3
    iget-object v1, v0, Landroid/support/v4/media/d;->mConnectionCallbackInternal:Landroid/support/v4/media/c;

    .line 4
    .line 5
    if-eqz v1, :cond_c3

    .line 6
    .line 7
    check-cast v1, Landroid/support/v4/media/e;

    .line 8
    .line 9
    const-string v2, "MediaBrowserCompat"

    .line 10
    .line 11
    iget-object v3, v1, Landroid/support/v4/media/e;->d:Landroid/support/v4/media/a;

    .line 12
    .line 13
    iget-object v4, v1, Landroid/support/v4/media/e;->b:Landroid/media/browse/MediaBrowser;

    .line 14
    .line 15
    :try_start_e
    invoke-virtual {v4}, Landroid/media/browse/MediaBrowser;->getExtras()Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object v5
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_12} :catch_bd

    .line 19
    if-nez v5, :cond_16

    .line 20
    .line 21
    goto/16 :goto_c3

    .line 22
    .line 23
    :cond_16
    const-string v6, "extra_service_version"

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    const-string v6, "extra_messenger"

    .line 30
    .line 31
    invoke-static {v5, v6}, Landroidx/core/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    if-eqz v6, :cond_8c

    .line 36
    .line 37
    new-instance v8, Landroid/support/v4/media/h;

    .line 38
    .line 39
    iget-object v9, v1, Landroid/support/v4/media/e;->c:Landroid/os/Bundle;

    .line 40
    .line 41
    invoke-direct {v8, v7, v7}, Landroid/support/v4/media/h;-><init>(IZ)V

    .line 42
    .line 43
    .line 44
    new-instance v7, Landroid/os/Messenger;

    .line 45
    .line 46
    invoke-direct {v7, v6}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 47
    .line 48
    .line 49
    iput-object v7, v8, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 50
    .line 51
    iput-object v9, v8, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 52
    .line 53
    iput-object v8, v1, Landroid/support/v4/media/e;->f:Landroid/support/v4/media/h;

    .line 54
    .line 55
    new-instance v6, Landroid/os/Messenger;

    .line 56
    .line 57
    invoke-direct {v6, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 58
    .line 59
    .line 60
    iput-object v6, v1, Landroid/support/v4/media/e;->g:Landroid/os/Messenger;

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    new-instance v7, Ljava/lang/ref/WeakReference;

    .line 66
    .line 67
    invoke-direct {v7, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iput-object v7, v3, Landroid/support/v4/media/a;->b:Ljava/lang/ref/WeakReference;

    .line 71
    .line 72
    :try_start_47
    iget-object v3, v1, Landroid/support/v4/media/e;->f:Landroid/support/v4/media/h;

    .line 73
    .line 74
    iget-object v6, v1, Landroid/support/v4/media/e;->a:Landroid/content/Context;

    .line 75
    .line 76
    iget-object v7, v1, Landroid/support/v4/media/e;->g:Landroid/os/Messenger;

    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    new-instance v8, Landroid/os/Bundle;

    .line 82
    .line 83
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v9, "data_package_name"

    .line 87
    .line 88
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {v8, v9, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string v6, "data_calling_pid"

    .line 96
    .line 97
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    invoke-virtual {v8, v6, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    const-string v6, "data_root_hints"

    .line 105
    .line 106
    iget-object v9, v3, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v9, Landroid/os/Bundle;

    .line 109
    .line 110
    invoke-virtual {v8, v6, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 111
    .line 112
    .line 113
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    const/4 v9, 0x6

    .line 118
    iput v9, v6, Landroid/os/Message;->what:I

    .line 119
    .line 120
    const/4 v9, 0x1

    .line 121
    iput v9, v6, Landroid/os/Message;->arg1:I

    .line 122
    .line 123
    invoke-virtual {v6, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 124
    .line 125
    .line 126
    iput-object v7, v6, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 127
    .line 128
    iget-object v3, v3, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v3, Landroid/os/Messenger;

    .line 131
    .line 132
    invoke-virtual {v3, v6}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_86} :catch_87

    .line 133
    .line 134
    .line 135
    goto :goto_8c

    .line 136
    :catch_87
    const-string v3, "Remote error registering client messenger."

    .line 137
    .line 138
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    :cond_8c
    :goto_8c
    const-string v2, "extra_session_binder"

    .line 142
    .line 143
    invoke-static {v5, v2}, Landroidx/core/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    sget v3, Landroid/support/v4/media/session/b;->c:I

    .line 148
    .line 149
    if-nez v2, :cond_98

    .line 150
    .line 151
    const/4 v2, 0x0

    .line 152
    goto :goto_b0

    .line 153
    :cond_98
    const-string v3, "android.support.v4.media.session.c"

    .line 154
    .line 155
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    if-eqz v3, :cond_a8

    .line 160
    .line 161
    instance-of v5, v3, Landroid/support/v4/media/session/c;

    .line 162
    .line 163
    if-eqz v5, :cond_a8

    .line 164
    .line 165
    move-object v2, v3

    .line 166
    check-cast v2, Landroid/support/v4/media/session/c;

    .line 167
    .line 168
    goto :goto_b0

    .line 169
    :cond_a8
    new-instance v3, Landroid/support/v4/media/session/a;

    .line 170
    .line 171
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 172
    .line 173
    .line 174
    iput-object v2, v3, Landroid/support/v4/media/session/a;->c:Landroid/os/IBinder;

    .line 175
    .line 176
    move-object v2, v3

    .line 177
    :goto_b0
    if-eqz v2, :cond_c3

    .line 178
    .line 179
    invoke-virtual {v4}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-static {v3, v2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->q(Landroid/os/Parcelable;Landroid/support/v4/media/session/c;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    iput-object v2, v1, Landroid/support/v4/media/e;->h:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 188
    .line 189
    goto :goto_c3

    .line 190
    :catch_bd
    move-exception v1

    .line 191
    const-string v3, "Unexpected IllegalStateException"

    .line 192
    .line 193
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .line 195
    .line 196
    :cond_c3
    :goto_c3
    invoke-virtual {v0}, Landroid/support/v4/media/d;->onConnected()V

    .line 197
    .line 198
    .line 199
    return-void
.end method

.method public final onConnectionFailed()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/b;->a:Landroid/support/v4/media/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/support/v4/media/d;->onConnectionFailed()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onConnectionSuspended()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/b;->a:Landroid/support/v4/media/d;

    .line 2
    .line 3
    iget-object v1, v0, Landroid/support/v4/media/d;->mConnectionCallbackInternal:Landroid/support/v4/media/c;

    .line 4
    .line 5
    if-eqz v1, :cond_1b

    .line 6
    .line 7
    check-cast v1, Landroid/support/v4/media/e;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v1, Landroid/support/v4/media/e;->f:Landroid/support/v4/media/h;

    .line 11
    .line 12
    iput-object v2, v1, Landroid/support/v4/media/e;->g:Landroid/os/Messenger;

    .line 13
    .line 14
    iput-object v2, v1, Landroid/support/v4/media/e;->h:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 15
    .line 16
    iget-object v1, v1, Landroid/support/v4/media/e;->d:Landroid/support/v4/media/a;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-object v3, v1, Landroid/support/v4/media/a;->b:Ljava/lang/ref/WeakReference;

    .line 27
    .line 28
    :cond_1b
    invoke-virtual {v0}, Landroid/support/v4/media/d;->onConnectionSuspended()V

    .line 29
    .line 30
    .line 31
    return-void
.end method
