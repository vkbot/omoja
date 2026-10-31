.class public final Landroid/support/v4/media/session/d;
.super Landroid/os/Binder;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public final c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroid/support/v4/media/session/d;->c:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .registers 1

    .line 1
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    .line 1
    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_d

    .line 5
    .line 6
    const v2, 0xffffff

    .line 7
    .line 8
    .line 9
    if-gt p1, v2, :cond_d

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_d
    const v2, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-ne p1, v2, :cond_16

    .line 18
    .line 19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_16
    packed-switch p1, :pswitch_data_dc

    .line 24
    .line 25
    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :pswitch_1e
    iget-object p1, p0, Landroid/support/v4/media/session/d;->c:Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_28

    .line 38
    .line 39
    goto/16 :goto_d6

    .line 40
    .line 41
    :cond_28
    invoke-static {}, Ln0/b;->a()V

    .line 42
    .line 43
    .line 44
    :goto_2b
    const/4 p1, 0x0

    .line 45
    return p1

    .line 46
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Landroid/support/v4/media/session/d;->c:Ljava/lang/ref/WeakReference;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-nez p1, :cond_3a

    .line 56
    .line 57
    goto/16 :goto_d6

    .line 58
    .line 59
    :cond_3a
    invoke-static {}, Ln0/b;->a()V

    .line 60
    .line 61
    .line 62
    goto :goto_2b

    .line 63
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Landroid/support/v4/media/session/d;->c:Ljava/lang/ref/WeakReference;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-nez p1, :cond_4b

    .line 73
    .line 74
    goto/16 :goto_d6

    .line 75
    .line 76
    :cond_4b
    invoke-static {}, Ln0/b;->a()V

    .line 77
    .line 78
    .line 79
    goto :goto_2b

    .line 80
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 81
    .line 82
    .line 83
    return v1

    .line 84
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Landroid/support/v4/media/session/d;->c:Ljava/lang/ref/WeakReference;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-nez p1, :cond_60

    .line 94
    .line 95
    goto/16 :goto_d6

    .line 96
    .line 97
    :cond_60
    invoke-static {}, Ln0/b;->a()V

    .line 98
    .line 99
    .line 100
    goto :goto_2b

    .line 101
    :pswitch_64
    sget-object p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 102
    .line 103
    invoke-static {p2, p1}, Lo4/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    .line 108
    .line 109
    new-instance p1, Ljava/lang/AssertionError;

    .line 110
    .line 111
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 112
    .line 113
    .line 114
    throw p1

    .line 115
    :pswitch_72
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 116
    .line 117
    invoke-static {p2, p1}, Lo4/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Landroid/os/Bundle;

    .line 122
    .line 123
    new-instance p1, Ljava/lang/AssertionError;

    .line 124
    .line 125
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 126
    .line 127
    .line 128
    throw p1

    .line 129
    :pswitch_80
    sget-object p1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 130
    .line 131
    invoke-static {p2, p1}, Lo4/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Ljava/lang/CharSequence;

    .line 136
    .line 137
    new-instance p1, Ljava/lang/AssertionError;

    .line 138
    .line 139
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 140
    .line 141
    .line 142
    throw p1

    .line 143
    :pswitch_8e
    sget-object p1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 144
    .line 145
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 146
    .line 147
    .line 148
    new-instance p1, Ljava/lang/AssertionError;

    .line 149
    .line 150
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 151
    .line 152
    .line 153
    throw p1

    .line 154
    :pswitch_99
    sget-object p1, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 155
    .line 156
    invoke-static {p2, p1}, Lo4/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    check-cast p1, Landroid/support/v4/media/MediaMetadataCompat;

    .line 161
    .line 162
    new-instance p1, Ljava/lang/AssertionError;

    .line 163
    .line 164
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 165
    .line 166
    .line 167
    throw p1

    .line 168
    :pswitch_a7
    sget-object p1, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 169
    .line 170
    invoke-static {p2, p1}, Lo4/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    check-cast p1, Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 175
    .line 176
    iget-object p1, p0, Landroid/support/v4/media/session/d;->c:Ljava/lang/ref/WeakReference;

    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    if-nez p1, :cond_b8

    .line 183
    .line 184
    goto :goto_d6

    .line 185
    :cond_b8
    invoke-static {}, Ln0/b;->a()V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_2b

    .line 189
    .line 190
    :pswitch_bd
    new-instance p1, Ljava/lang/AssertionError;

    .line 191
    .line 192
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 193
    .line 194
    .line 195
    throw p1

    .line 196
    :pswitch_c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 200
    .line 201
    invoke-static {p2, p1}, Lo4/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    check-cast p1, Landroid/os/Bundle;

    .line 206
    .line 207
    iget-object p1, p0, Landroid/support/v4/media/session/d;->c:Ljava/lang/ref/WeakReference;

    .line 208
    .line 209
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    if-nez p1, :cond_d7

    .line 214
    .line 215
    :goto_d6
    return v1

    .line 216
    :cond_d7
    invoke-static {}, Ln0/b;->a()V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_2b

    .line 220
    .line 221
    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_c3
        :pswitch_bd
        :pswitch_a7
        :pswitch_99
        :pswitch_8e
        :pswitch_80
        :pswitch_72
        :pswitch_64
        :pswitch_53
        :pswitch_4f
        :pswitch_3e
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
