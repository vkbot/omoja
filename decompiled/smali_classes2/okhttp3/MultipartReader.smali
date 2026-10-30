.class public final Lokhttp3/MultipartReader;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/MultipartReader$Companion;,
        Lokhttp3/MultipartReader$Part;,
        Lokhttp3/MultipartReader$PartSource;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 &2\u00020\u0001:\u0003&\'(B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B\u0011\u0008\u0016\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0006\u0010\nJ\u0017\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0015R\u0017\u0010\u0005\u001a\u00020\u00048\u0007\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0016\u001a\u0004\u0008\u0005\u0010\u0017R\u0014\u0010\u0019\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010 \u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010!R\u001c\u0010$\u001a\u0008\u0018\u00010#R\u00020\u00008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u0006)"
    }
    d2 = {
        "Lokhttp3/MultipartReader;",
        "Ljava/io/Closeable;",
        "Ll9/n;",
        "source",
        "",
        "boundary",
        "<init>",
        "(Ll9/n;Ljava/lang/String;)V",
        "Lokhttp3/ResponseBody;",
        "response",
        "(Lokhttp3/ResponseBody;)V",
        "",
        "maxResult",
        "currentPartBytesRemaining",
        "(J)J",
        "Lokhttp3/MultipartReader$Part;",
        "nextPart",
        "()Lokhttp3/MultipartReader$Part;",
        "",
        "close",
        "()V",
        "Ll9/n;",
        "Ljava/lang/String;",
        "()Ljava/lang/String;",
        "Ll9/o;",
        "dashDashBoundary",
        "Ll9/o;",
        "crlfDashDashBoundary",
        "",
        "partCount",
        "I",
        "",
        "closed",
        "Z",
        "noMoreParts",
        "Lokhttp3/MultipartReader$PartSource;",
        "currentPart",
        "Lokhttp3/MultipartReader$PartSource;",
        "Companion",
        "Part",
        "PartSource",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMultipartReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultipartReader.kt\nokhttp3/MultipartReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,210:1\n1#2:211\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/MultipartReader$Companion;

.field private static final afterBoundaryOptions:Ll9/w;


# instance fields
.field private final boundary:Ljava/lang/String;

.field private closed:Z

.field private final crlfDashDashBoundary:Ll9/o;

.field private currentPart:Lokhttp3/MultipartReader$PartSource;

.field private final dashDashBoundary:Ll9/o;

.field private noMoreParts:Z

.field private partCount:I

.field private final source:Ll9/n;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lokhttp3/MultipartReader$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lokhttp3/MultipartReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lokhttp3/MultipartReader;->Companion:Lokhttp3/MultipartReader$Companion;

    .line 8
    .line 9
    sget v0, Ll9/w;->d:I

    .line 10
    .line 11
    sget-object v0, Ll9/o;->e:Ll9/o;

    .line 12
    .line 13
    const-string v0, "\r\n"

    .line 14
    .line 15
    invoke-static {v0}, Lw7/c;->k(Ljava/lang/String;)Ll9/o;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "--"

    .line 20
    .line 21
    invoke-static {v1}, Lw7/c;->k(Ljava/lang/String;)Ll9/o;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, " "

    .line 26
    .line 27
    invoke-static {v2}, Lw7/c;->k(Ljava/lang/String;)Ll9/o;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "\t"

    .line 32
    .line 33
    invoke-static {v3}, Lw7/c;->k(Ljava/lang/String;)Ll9/o;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    filled-new-array {v0, v1, v2, v3}, [Ll9/o;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Ll9/b;->f([Ll9/o;)Ll9/w;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lokhttp3/MultipartReader;->afterBoundaryOptions:Ll9/w;

    .line 46
    .line 47
    return-void
.end method

.method public constructor <init>(Ll9/n;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lokhttp3/MultipartReader;->source:Ll9/n;

    .line 11
    .line 12
    iput-object p2, p0, Lokhttp3/MultipartReader;->boundary:Ljava/lang/String;

    .line 13
    .line 14
    new-instance p1, Ll9/l;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v0, "--"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ll9/l;->u0(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ll9/l;->u0(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-wide v0, p1, Ll9/l;->c:J

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Ll9/l;->f(J)Ll9/o;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lokhttp3/MultipartReader;->dashDashBoundary:Ll9/o;

    .line 34
    .line 35
    new-instance p1, Ll9/l;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v0, "\r\n--"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ll9/l;->u0(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Ll9/l;->u0(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-wide v0, p1, Ll9/l;->c:J

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Ll9/l;->f(J)Ll9/o;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:Ll9/o;

    .line 55
    .line 56
    return-void
.end method

.method public constructor <init>(Lokhttp3/ResponseBody;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Ll9/n;

    move-result-object v0

    .line 58
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "boundary"

    invoke-virtual {p1, v1}, Lokhttp3/MediaType;->parameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 59
    invoke-direct {p0, v0, p1}, Lokhttp3/MultipartReader;-><init>(Ll9/n;Ljava/lang/String;)V

    return-void

    .line 60
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "expected the Content-Type to have a boundary parameter"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$currentPartBytesRemaining(Lokhttp3/MultipartReader;J)J
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lokhttp3/MultipartReader;->currentPartBytesRemaining(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic access$getAfterBoundaryOptions$cp()Ll9/w;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/MultipartReader;->afterBoundaryOptions:Ll9/w;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getCurrentPart$p(Lokhttp3/MultipartReader;)Lokhttp3/MultipartReader$PartSource;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/MultipartReader;->currentPart:Lokhttp3/MultipartReader$PartSource;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSource$p(Lokhttp3/MultipartReader;)Ll9/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/MultipartReader;->source:Ll9/n;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$setCurrentPart$p(Lokhttp3/MultipartReader;Lokhttp3/MultipartReader$PartSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/MultipartReader;->currentPart:Lokhttp3/MultipartReader$PartSource;

    .line 2
    .line 3
    return-void
.end method

.method private final currentPartBytesRemaining(J)J
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    iget-object v3, v0, Lokhttp3/MultipartReader;->source:Ll9/n;

    .line 6
    .line 7
    iget-object v4, v0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:Ll9/o;

    .line 8
    .line 9
    invoke-virtual {v4}, Ll9/o;->c()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    int-to-long v4, v4

    .line 14
    invoke-interface {v3, v4, v5}, Ll9/n;->Y(J)V

    .line 15
    .line 16
    .line 17
    iget-object v3, v0, Lokhttp3/MultipartReader;->source:Ll9/n;

    .line 18
    .line 19
    invoke-interface {v3}, Ll9/n;->a()Ll9/l;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v4, v0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:Ll9/o;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Ll9/o;->c()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-lez v5, :cond_a

    .line 36
    .line 37
    iget-object v5, v3, Ll9/l;->b:Ll9/b0;

    .line 38
    .line 39
    if-nez v5, :cond_0

    .line 40
    .line 41
    const-wide/16 v16, 0x1

    .line 42
    .line 43
    const-wide/16 v18, -0x1

    .line 44
    .line 45
    goto/16 :goto_7

    .line 46
    .line 47
    :cond_0
    iget-wide v10, v3, Ll9/l;->c:J

    .line 48
    .line 49
    const-wide/16 v12, 0x0

    .line 50
    .line 51
    cmp-long v14, v10, v12

    .line 52
    .line 53
    const/4 v15, 0x0

    .line 54
    if-gez v14, :cond_4

    .line 55
    .line 56
    :goto_0
    cmp-long v14, v10, v12

    .line 57
    .line 58
    if-lez v14, :cond_1

    .line 59
    .line 60
    iget-object v5, v5, Ll9/b0;->g:Ll9/b0;

    .line 61
    .line 62
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    iget v14, v5, Ll9/b0;->c:I

    .line 66
    .line 67
    const-wide/16 v16, 0x1

    .line 68
    .line 69
    iget v6, v5, Ll9/b0;->b:I

    .line 70
    .line 71
    sub-int/2addr v14, v6

    .line 72
    int-to-long v6, v14

    .line 73
    sub-long/2addr v10, v6

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const-wide/16 v16, 0x1

    .line 76
    .line 77
    invoke-virtual {v4}, Ll9/o;->e()[B

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    aget-byte v7, v6, v15

    .line 82
    .line 83
    invoke-virtual {v4}, Ll9/o;->c()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    iget-wide v14, v3, Ll9/l;->c:J

    .line 88
    .line 89
    const-wide/16 v18, -0x1

    .line 90
    .line 91
    int-to-long v8, v4

    .line 92
    sub-long/2addr v14, v8

    .line 93
    add-long v14, v14, v16

    .line 94
    .line 95
    :goto_1
    cmp-long v3, v10, v14

    .line 96
    .line 97
    if-gez v3, :cond_8

    .line 98
    .line 99
    iget-object v3, v5, Ll9/b0;->a:[B

    .line 100
    .line 101
    iget v8, v5, Ll9/b0;->c:I

    .line 102
    .line 103
    iget v9, v5, Ll9/b0;->b:I

    .line 104
    .line 105
    move-wide/from16 v20, v10

    .line 106
    .line 107
    int-to-long v9, v9

    .line 108
    add-long/2addr v9, v14

    .line 109
    sub-long v9, v9, v20

    .line 110
    .line 111
    move-wide/from16 v22, v12

    .line 112
    .line 113
    int-to-long v11, v8

    .line 114
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 115
    .line 116
    .line 117
    move-result-wide v8

    .line 118
    long-to-int v8, v8

    .line 119
    iget v9, v5, Ll9/b0;->b:I

    .line 120
    .line 121
    int-to-long v9, v9

    .line 122
    add-long v9, v9, v22

    .line 123
    .line 124
    sub-long v9, v9, v20

    .line 125
    .line 126
    long-to-int v9, v9

    .line 127
    :goto_2
    if-ge v9, v8, :cond_3

    .line 128
    .line 129
    aget-byte v10, v3, v9

    .line 130
    .line 131
    if-ne v10, v7, :cond_2

    .line 132
    .line 133
    add-int/lit8 v10, v9, 0x1

    .line 134
    .line 135
    invoke-static {v5, v10, v6, v4}, Lm9/a;->a(Ll9/b0;I[BI)Z

    .line 136
    .line 137
    .line 138
    move-result v10

    .line 139
    if-eqz v10, :cond_2

    .line 140
    .line 141
    iget v3, v5, Ll9/b0;->b:I

    .line 142
    .line 143
    sub-int/2addr v9, v3

    .line 144
    int-to-long v3, v9

    .line 145
    :goto_3
    add-long v3, v3, v20

    .line 146
    .line 147
    goto/16 :goto_8

    .line 148
    .line 149
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_3
    iget v3, v5, Ll9/b0;->c:I

    .line 153
    .line 154
    iget v8, v5, Ll9/b0;->b:I

    .line 155
    .line 156
    sub-int/2addr v3, v8

    .line 157
    int-to-long v8, v3

    .line 158
    add-long v12, v20, v8

    .line 159
    .line 160
    iget-object v5, v5, Ll9/b0;->f:Ll9/b0;

    .line 161
    .line 162
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    move-wide v10, v12

    .line 166
    goto :goto_1

    .line 167
    :cond_4
    const-wide/16 v16, 0x1

    .line 168
    .line 169
    const-wide/16 v18, -0x1

    .line 170
    .line 171
    move-wide v6, v12

    .line 172
    :goto_4
    iget v8, v5, Ll9/b0;->c:I

    .line 173
    .line 174
    iget v9, v5, Ll9/b0;->b:I

    .line 175
    .line 176
    sub-int/2addr v8, v9

    .line 177
    int-to-long v8, v8

    .line 178
    add-long/2addr v8, v6

    .line 179
    cmp-long v10, v8, v12

    .line 180
    .line 181
    if-gtz v10, :cond_5

    .line 182
    .line 183
    iget-object v5, v5, Ll9/b0;->f:Ll9/b0;

    .line 184
    .line 185
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    move-wide v6, v8

    .line 189
    goto :goto_4

    .line 190
    :cond_5
    invoke-virtual {v4}, Ll9/o;->e()[B

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    aget-byte v9, v8, v15

    .line 195
    .line 196
    invoke-virtual {v4}, Ll9/o;->c()I

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    iget-wide v10, v3, Ll9/l;->c:J

    .line 201
    .line 202
    int-to-long v14, v4

    .line 203
    sub-long/2addr v10, v14

    .line 204
    add-long v10, v10, v16

    .line 205
    .line 206
    :goto_5
    cmp-long v3, v6, v10

    .line 207
    .line 208
    if-gez v3, :cond_8

    .line 209
    .line 210
    iget-object v3, v5, Ll9/b0;->a:[B

    .line 211
    .line 212
    iget v14, v5, Ll9/b0;->c:I

    .line 213
    .line 214
    iget v15, v5, Ll9/b0;->b:I

    .line 215
    .line 216
    move-wide/from16 v20, v6

    .line 217
    .line 218
    int-to-long v6, v15

    .line 219
    add-long/2addr v6, v10

    .line 220
    sub-long v6, v6, v20

    .line 221
    .line 222
    int-to-long v14, v14

    .line 223
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 224
    .line 225
    .line 226
    move-result-wide v6

    .line 227
    long-to-int v6, v6

    .line 228
    iget v7, v5, Ll9/b0;->b:I

    .line 229
    .line 230
    int-to-long v14, v7

    .line 231
    add-long/2addr v14, v12

    .line 232
    sub-long v14, v14, v20

    .line 233
    .line 234
    long-to-int v7, v14

    .line 235
    :goto_6
    if-ge v7, v6, :cond_7

    .line 236
    .line 237
    aget-byte v12, v3, v7

    .line 238
    .line 239
    if-ne v12, v9, :cond_6

    .line 240
    .line 241
    add-int/lit8 v12, v7, 0x1

    .line 242
    .line 243
    invoke-static {v5, v12, v8, v4}, Lm9/a;->a(Ll9/b0;I[BI)Z

    .line 244
    .line 245
    .line 246
    move-result v12

    .line 247
    if-eqz v12, :cond_6

    .line 248
    .line 249
    iget v3, v5, Ll9/b0;->b:I

    .line 250
    .line 251
    sub-int/2addr v7, v3

    .line 252
    int-to-long v3, v7

    .line 253
    goto :goto_3

    .line 254
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_7
    iget v3, v5, Ll9/b0;->c:I

    .line 258
    .line 259
    iget v6, v5, Ll9/b0;->b:I

    .line 260
    .line 261
    sub-int/2addr v3, v6

    .line 262
    int-to-long v6, v3

    .line 263
    add-long v12, v20, v6

    .line 264
    .line 265
    iget-object v5, v5, Ll9/b0;->f:Ll9/b0;

    .line 266
    .line 267
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    move-wide v6, v12

    .line 271
    goto :goto_5

    .line 272
    :cond_8
    :goto_7
    move-wide/from16 v3, v18

    .line 273
    .line 274
    :goto_8
    cmp-long v5, v3, v18

    .line 275
    .line 276
    if-nez v5, :cond_9

    .line 277
    .line 278
    iget-object v3, v0, Lokhttp3/MultipartReader;->source:Ll9/n;

    .line 279
    .line 280
    invoke-interface {v3}, Ll9/n;->a()Ll9/l;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    iget-wide v3, v3, Ll9/l;->c:J

    .line 285
    .line 286
    iget-object v5, v0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:Ll9/o;

    .line 287
    .line 288
    invoke-virtual {v5}, Ll9/o;->c()I

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    int-to-long v5, v5

    .line 293
    sub-long/2addr v3, v5

    .line 294
    add-long v3, v3, v16

    .line 295
    .line 296
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 297
    .line 298
    .line 299
    move-result-wide v1

    .line 300
    return-wide v1

    .line 301
    :cond_9
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 302
    .line 303
    .line 304
    move-result-wide v1

    .line 305
    return-wide v1

    .line 306
    :cond_a
    const-string v1, "bytes is empty"

    .line 307
    .line 308
    invoke-static {v1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    const-wide/16 v1, 0x0

    .line 312
    .line 313
    return-wide v1
.end method


# virtual methods
.method public final boundary()Ljava/lang/String;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "boundary"
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/MultipartReader;->boundary:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/MultipartReader;->closed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lokhttp3/MultipartReader;->closed:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lokhttp3/MultipartReader;->currentPart:Lokhttp3/MultipartReader$PartSource;

    .line 11
    .line 12
    iget-object v0, p0, Lokhttp3/MultipartReader;->source:Ll9/n;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final nextPart()Lokhttp3/MultipartReader$Part;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lokhttp3/MultipartReader;->closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_9

    .line 4
    .line 5
    iget-boolean v0, p0, Lokhttp3/MultipartReader;->noMoreParts:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    iget v0, p0, Lokhttp3/MultipartReader;->partCount:I

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lokhttp3/MultipartReader;->source:Ll9/n;

    .line 18
    .line 19
    iget-object v4, p0, Lokhttp3/MultipartReader;->dashDashBoundary:Ll9/o;

    .line 20
    .line 21
    invoke-interface {v0, v2, v3, v4}, Ll9/n;->Q(JLl9/o;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lokhttp3/MultipartReader;->source:Ll9/n;

    .line 28
    .line 29
    iget-object v2, p0, Lokhttp3/MultipartReader;->dashDashBoundary:Ll9/o;

    .line 30
    .line 31
    invoke-virtual {v2}, Ll9/o;->c()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    int-to-long v2, v2

    .line 36
    invoke-interface {v0, v2, v3}, Ll9/n;->skip(J)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    const-wide/16 v4, 0x2000

    .line 41
    .line 42
    invoke-direct {p0, v4, v5}, Lokhttp3/MultipartReader;->currentPartBytesRemaining(J)J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    cmp-long v0, v4, v2

    .line 47
    .line 48
    iget-object v6, p0, Lokhttp3/MultipartReader;->source:Ll9/n;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-interface {v6, v4, v5}, Ll9/n;->skip(J)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-object v0, p0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:Ll9/o;

    .line 57
    .line 58
    invoke-virtual {v0}, Ll9/o;->c()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    int-to-long v2, v0

    .line 63
    invoke-interface {v6, v2, v3}, Ll9/n;->skip(J)V

    .line 64
    .line 65
    .line 66
    :goto_1
    const/4 v0, 0x0

    .line 67
    :goto_2
    iget-object v2, p0, Lokhttp3/MultipartReader;->source:Ll9/n;

    .line 68
    .line 69
    sget-object v3, Lokhttp3/MultipartReader;->afterBoundaryOptions:Ll9/w;

    .line 70
    .line 71
    invoke-interface {v2, v3}, Ll9/n;->P(Ll9/w;)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    const/4 v3, -0x1

    .line 76
    const-string v4, "unexpected characters after boundary"

    .line 77
    .line 78
    if-eq v2, v3, :cond_8

    .line 79
    .line 80
    const/4 v3, 0x1

    .line 81
    if-eqz v2, :cond_7

    .line 82
    .line 83
    if-eq v2, v3, :cond_4

    .line 84
    .line 85
    const/4 v4, 0x2

    .line 86
    if-eq v2, v4, :cond_3

    .line 87
    .line 88
    const/4 v4, 0x3

    .line 89
    if-eq v2, v4, :cond_3

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    move v0, v3

    .line 93
    goto :goto_2

    .line 94
    :cond_4
    if-nez v0, :cond_6

    .line 95
    .line 96
    iget v0, p0, Lokhttp3/MultipartReader;->partCount:I

    .line 97
    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    iput-boolean v3, p0, Lokhttp3/MultipartReader;->noMoreParts:Z

    .line 101
    .line 102
    return-object v1

    .line 103
    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    .line 104
    .line 105
    const-string v1, "expected at least 1 part"

    .line 106
    .line 107
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v0

    .line 111
    :cond_6
    new-instance v0, Ljava/net/ProtocolException;

    .line 112
    .line 113
    invoke-direct {v0, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v0

    .line 117
    :cond_7
    iget v0, p0, Lokhttp3/MultipartReader;->partCount:I

    .line 118
    .line 119
    add-int/2addr v0, v3

    .line 120
    iput v0, p0, Lokhttp3/MultipartReader;->partCount:I

    .line 121
    .line 122
    new-instance v0, Lokhttp3/internal/http1/HeadersReader;

    .line 123
    .line 124
    iget-object v1, p0, Lokhttp3/MultipartReader;->source:Ll9/n;

    .line 125
    .line 126
    invoke-direct {v0, v1}, Lokhttp3/internal/http1/HeadersReader;-><init>(Ll9/n;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Lokhttp3/internal/http1/HeadersReader;->readHeaders()Lokhttp3/Headers;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    new-instance v1, Lokhttp3/MultipartReader$PartSource;

    .line 134
    .line 135
    invoke-direct {v1, p0}, Lokhttp3/MultipartReader$PartSource;-><init>(Lokhttp3/MultipartReader;)V

    .line 136
    .line 137
    .line 138
    iput-object v1, p0, Lokhttp3/MultipartReader;->currentPart:Lokhttp3/MultipartReader$PartSource;

    .line 139
    .line 140
    new-instance v2, Lokhttp3/MultipartReader$Part;

    .line 141
    .line 142
    new-instance v3, Ll9/a0;

    .line 143
    .line 144
    invoke-direct {v3, v1}, Ll9/a0;-><init>(Ll9/g0;)V

    .line 145
    .line 146
    .line 147
    invoke-direct {v2, v0, v3}, Lokhttp3/MultipartReader$Part;-><init>(Lokhttp3/Headers;Ll9/n;)V

    .line 148
    .line 149
    .line 150
    return-object v2

    .line 151
    :cond_8
    new-instance v0, Ljava/net/ProtocolException;

    .line 152
    .line 153
    invoke-direct {v0, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v0

    .line 157
    :cond_9
    const-string v0, "closed"

    .line 158
    .line 159
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const/4 v0, 0x0

    .line 163
    return-object v0
.end method
