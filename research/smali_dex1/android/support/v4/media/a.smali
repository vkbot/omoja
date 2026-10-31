.class public final Landroid/support/v4/media/a;
.super Landroid/os/Handler;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/e;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/support/v4/media/a;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 12

    .line 1
    const-string v0, "MediaBrowserCompat"

    .line 2
    .line 3
    const-string v1, "\n  Client version: 1\n  Service version: "

    .line 4
    .line 5
    const-string v2, "Unhandled message: "

    .line 6
    .line 7
    iget-object v3, p0, Landroid/support/v4/media/a;->b:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    if-eqz v3, :cond_c0

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    if-eqz v3, :cond_c0

    .line 16
    .line 17
    iget-object v3, p0, Landroid/support/v4/media/a;->a:Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    if-nez v4, :cond_1a

    .line 24
    .line 25
    goto/16 :goto_c0

    .line 26
    .line 27
    :cond_1a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {v4}, Landroid/support/v4/media/session/h;->a(Landroid/os/Bundle;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Landroid/support/v4/media/e;

    .line 39
    .line 40
    iget-object v5, p0, Landroid/support/v4/media/a;->b:Ljava/lang/ref/WeakReference;

    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Landroid/os/Messenger;

    .line 47
    .line 48
    const/4 v6, 0x1

    .line 49
    :try_start_30
    iget v7, p1, Landroid/os/Message;->what:I
    :try_end_32
    .catch Landroid/os/BadParcelableException; {:try_start_30 .. :try_end_32} :catch_b4

    .line 50
    .line 51
    const-string v8, "data_media_item_id"

    .line 52
    .line 53
    if-eq v7, v6, :cond_9c

    .line 54
    .line 55
    const/4 v9, 0x2

    .line 56
    if-eq v7, v9, :cond_98

    .line 57
    .line 58
    const/4 v9, 0x3

    .line 59
    if-eq v7, v9, :cond_54

    .line 60
    .line 61
    :try_start_3c
    new-instance v4, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 73
    .line 74
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_54
    const-string v1, "data_options"

    .line 86
    .line 87
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v1}, Landroid/support/v4/media/session/h;->a(Landroid/os/Bundle;)V

    .line 92
    .line 93
    .line 94
    const-string v1, "data_notify_children_changed_options"

    .line 95
    .line 96
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v1}, Landroid/support/v4/media/session/h;->a(Landroid/os/Bundle;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const-string v2, "data_media_item_list"

    .line 108
    .line 109
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 110
    .line 111
    .line 112
    iget-object v2, v3, Landroid/support/v4/media/e;->g:Landroid/os/Messenger;

    .line 113
    .line 114
    if-eq v2, v5, :cond_74

    .line 115
    .line 116
    goto :goto_c0

    .line 117
    :cond_74
    iget-object v2, v3, Landroid/support/v4/media/e;->e:Landroidx/collection/ArrayMap;

    .line 118
    .line 119
    invoke-virtual {v2, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    if-nez v2, :cond_92

    .line 124
    .line 125
    sget-boolean v2, Landroid/support/v4/media/i;->b:Z

    .line 126
    .line 127
    if-eqz v2, :cond_c0

    .line 128
    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v4, "onLoadChildren for id that isn\'t subscribed id="

    .line 132
    .line 133
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_92
    new-instance v1, Ljava/lang/ClassCastException;

    .line 148
    .line 149
    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    .line 150
    .line 151
    .line 152
    throw v1

    .line 153
    :cond_98
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_9c
    const-string v1, "data_root_hints"

    .line 158
    .line 159
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-static {v1}, Landroid/support/v4/media/session/h;->a(Landroid/os/Bundle;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    const-string v1, "data_media_session_token"

    .line 170
    .line 171
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    check-cast v1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_b3
    .catch Landroid/os/BadParcelableException; {:try_start_3c .. :try_end_b3} :catch_b4

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :catch_b4
    const-string v1, "Could not unparcel the data."

    .line 182
    .line 183
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    iget p1, p1, Landroid/os/Message;->what:I

    .line 187
    .line 188
    if-ne p1, v6, :cond_c0

    .line 189
    .line 190
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    :cond_c0
    :goto_c0
    return-void
.end method
