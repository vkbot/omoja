.class public final Ly5/g;
.super Lcom/google/protobuf/y;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final ALREADY_SEEN_CAMPAIGNS_FIELD_NUMBER:I = 0x3

.field public static final CLIENT_SIGNALS_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Ly5/g;

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/x0;"
        }
    .end annotation
.end field

.field public static final PROJECT_NUMBER_FIELD_NUMBER:I = 0x1

.field public static final REQUESTING_CLIENT_APP_FIELD_NUMBER:I = 0x2


# instance fields
.field private alreadySeenCampaigns_:Lcom/google/protobuf/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/a0;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private clientSignals_:Ln4/b;

.field private projectNumber_:Ljava/lang/String;

.field private requestingClientApp_:Ly5/e;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ly5/g;

    .line 2
    .line 3
    invoke-direct {v0}, Ly5/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ly5/g;->DEFAULT_INSTANCE:Ly5/g;

    .line 7
    .line 8
    const-class v1, Ly5/g;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/protobuf/y;->l(Ljava/lang/Class;Lcom/google/protobuf/y;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/y;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Ly5/g;->projectNumber_:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, Lcom/google/protobuf/z0;->e:Lcom/google/protobuf/z0;

    .line 9
    .line 10
    iput-object v0, p0, Ly5/g;->alreadySeenCampaigns_:Lcom/google/protobuf/a0;

    .line 11
    .line 12
    return-void
.end method

.method public static n(Ly5/g;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ly5/g;->projectNumber_:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public static o(Ly5/g;Lcom/google/protobuf/a0;)V
    .registers 7

    .line 1
    iget-object v0, p0, Ly5/g;->alreadySeenCampaigns_:Lcom/google/protobuf/a0;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/protobuf/b;

    .line 5
    .line 6
    iget-boolean v1, v1, Lcom/google/protobuf/b;->b:Z

    .line 7
    .line 8
    if-nez v1, :cond_1a

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_12

    .line 15
    .line 16
    const/16 v1, 0xa

    .line 17
    .line 18
    goto :goto_14

    .line 19
    :cond_12
    mul-int/lit8 v1, v1, 0x2

    .line 20
    .line 21
    :goto_14
    invoke-interface {v0, v1}, Lcom/google/protobuf/a0;->c(I)Lcom/google/protobuf/a0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Ly5/g;->alreadySeenCampaigns_:Lcom/google/protobuf/a0;

    .line 26
    .line 27
    :cond_1a
    iget-object p0, p0, Ly5/g;->alreadySeenCampaigns_:Lcom/google/protobuf/a0;

    .line 28
    .line 29
    sget-object v0, Lcom/google/protobuf/b0;->a:Ljava/nio/charset/Charset;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    instance-of v0, p1, Lcom/google/protobuf/g0;

    .line 35
    .line 36
    const-string v1, " is null."

    .line 37
    .line 38
    const-string v2, "Element at index "

    .line 39
    .line 40
    if-eqz v0, :cond_7c

    .line 41
    .line 42
    check-cast p1, Lcom/google/protobuf/g0;

    .line 43
    .line 44
    invoke-interface {p1}, Lcom/google/protobuf/g0;->y()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    move-object v0, p0

    .line 49
    check-cast v0, Lcom/google/protobuf/g0;

    .line 50
    .line 51
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :goto_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_cd

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    if-nez v3, :cond_6c

    .line 70
    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    sub-int/2addr v2, p0

    .line 81
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    add-int/lit8 v1, v1, -0x1

    .line 96
    .line 97
    :goto_60
    if-lt v1, p0, :cond_68

    .line 98
    .line 99
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    add-int/lit8 v1, v1, -0x1

    .line 103
    .line 104
    goto :goto_60

    .line 105
    :cond_68
    invoke-static {p1}, Ln0/b;->n(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_6c
    instance-of v4, v3, Lcom/google/protobuf/g;

    .line 110
    .line 111
    if-eqz v4, :cond_76

    .line 112
    .line 113
    check-cast v3, Lcom/google/protobuf/g;

    .line 114
    .line 115
    invoke-interface {v0, v3}, Lcom/google/protobuf/g0;->b(Lcom/google/protobuf/g;)V

    .line 116
    .line 117
    .line 118
    goto :goto_3a

    .line 119
    :cond_76
    check-cast v3, Ljava/lang/String;

    .line 120
    .line 121
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_3a

    .line 125
    :cond_7c
    instance-of v0, p0, Ljava/util/ArrayList;

    .line 126
    .line 127
    if-eqz v0, :cond_8f

    .line 128
    .line 129
    move-object v0, p0

    .line 130
    check-cast v0, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    add-int/2addr v4, v3

    .line 141
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 142
    .line 143
    .line 144
    :cond_8f
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    :goto_97
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-eqz v3, :cond_cd

    .line 157
    .line 158
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    if-nez v3, :cond_c9

    .line 163
    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    sub-int/2addr v2, v0

    .line 174
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    add-int/lit8 v1, v1, -0x1

    .line 189
    .line 190
    :goto_bd
    if-lt v1, v0, :cond_c5

    .line 191
    .line 192
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    add-int/lit8 v1, v1, -0x1

    .line 196
    .line 197
    goto :goto_bd

    .line 198
    :cond_c5
    invoke-static {p1}, Ln0/b;->n(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :cond_c9
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    goto :goto_97

    .line 206
    :cond_cd
    return-void
.end method

.method public static p(Ly5/g;Ln4/b;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly5/g;->clientSignals_:Ln4/b;

    .line 5
    .line 6
    iget p1, p0, Ly5/g;->bitField0_:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x2

    .line 9
    .line 10
    iput p1, p0, Ly5/g;->bitField0_:I

    .line 11
    .line 12
    return-void
.end method

.method public static q(Ly5/g;Ly5/e;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly5/g;->requestingClientApp_:Ly5/e;

    .line 5
    .line 6
    iget p1, p0, Ly5/g;->bitField0_:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    iput p1, p0, Ly5/g;->bitField0_:I

    .line 11
    .line 12
    return-void
.end method

.method public static r()Ly5/g;
    .registers 1

    .line 1
    sget-object v0, Ly5/g;->DEFAULT_INSTANCE:Ly5/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public static s()Ly5/f;
    .registers 1

    .line 1
    sget-object v0, Ly5/g;->DEFAULT_INSTANCE:Ly5/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/y;->d()Lcom/google/protobuf/w;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ly5/f;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final e(I)Ljava/lang/Object;
    .registers 8

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/g;->c(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    packed-switch p1, :pswitch_data_5c

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroidx/navigation/b;->a()V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :pswitch_c
    sget-object p1, Ly5/g;->PARSER:Lcom/google/protobuf/x0;

    .line 14
    .line 15
    if-nez p1, :cond_28

    .line 16
    .line 17
    const-class v1, Ly5/g;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_13
    sget-object p1, Ly5/g;->PARSER:Lcom/google/protobuf/x0;

    .line 21
    .line 22
    if-nez p1, :cond_24

    .line 23
    .line 24
    new-instance p1, Lcom/google/protobuf/x;

    .line 25
    .line 26
    sget-object v0, Ly5/g;->DEFAULT_INSTANCE:Ly5/g;

    .line 27
    .line 28
    invoke-direct {p1, v0}, Lcom/google/protobuf/x;-><init>(Lcom/google/protobuf/y;)V

    .line 29
    .line 30
    .line 31
    sput-object p1, Ly5/g;->PARSER:Lcom/google/protobuf/x0;

    .line 32
    .line 33
    goto :goto_24

    .line 34
    :catchall_21
    move-exception v0

    .line 35
    move-object p1, v0

    .line 36
    goto :goto_26

    .line 37
    :cond_24
    :goto_24
    monitor-exit v1

    .line 38
    return-object p1

    .line 39
    :goto_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_21

    .line 40
    throw p1

    .line 41
    :cond_28
    return-object p1

    .line 42
    :pswitch_29
    sget-object p1, Ly5/g;->DEFAULT_INSTANCE:Ly5/g;

    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_2c
    new-instance p1, Ly5/f;

    .line 46
    .line 47
    sget-object v0, Ly5/g;->DEFAULT_INSTANCE:Ly5/g;

    .line 48
    .line 49
    invoke-direct {p1, v0}, Lcom/google/protobuf/w;-><init>(Lcom/google/protobuf/y;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_34
    new-instance p1, Ly5/g;

    .line 54
    .line 55
    invoke-direct {p1}, Ly5/g;-><init>()V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :pswitch_3a
    const-string v0, "bitField0_"

    .line 60
    .line 61
    const-string v1, "projectNumber_"

    .line 62
    .line 63
    const-string v2, "requestingClientApp_"

    .line 64
    .line 65
    const-string v3, "alreadySeenCampaigns_"

    .line 66
    .line 67
    const-class v4, Ly5/a;

    .line 68
    .line 69
    const-string v5, "clientSignals_"

    .line 70
    .line 71
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string v0, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u0208\u0002\u1009\u0000\u0003\u001b\u0004\u1009\u0001"

    .line 76
    .line 77
    sget-object v1, Ly5/g;->DEFAULT_INSTANCE:Ly5/g;

    .line 78
    .line 79
    new-instance v2, Lcom/google/protobuf/a1;

    .line 80
    .line 81
    invoke-direct {v2, v1, v0, p1}, Lcom/google/protobuf/a1;-><init>(Lcom/google/protobuf/a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-object v2

    .line 85
    :pswitch_54
    const/4 p1, 0x0

    .line 86
    return-object p1

    .line 87
    :pswitch_56
    const/4 p1, 0x1

    .line 88
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    return-object p1

    .line 93
    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_56
        :pswitch_54
        :pswitch_3a
        :pswitch_34
        :pswitch_2c
        :pswitch_29
        :pswitch_c
    .end packed-switch
.end method
