.class public final Lokhttp3/MultipartReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/MultipartReader$PartSource;,
        Lokhttp3/MultipartReader$Part;,
        Lokhttp3/MultipartReader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 #2\u00020\u0001:\u0003#$%B\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u001e\u0010\u001fB\u0011\u0008\u0016\u0012\u0006\u0010!\u001a\u00020 \u00a2\u0006\u0004\u0008\u001e\u0010\"J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u0008\u001a\u00020\u0007H\u0016R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u000bR\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0011\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0012R\u001c\u0010\u0015\u001a\u0008\u0018\u00010\u0014R\u00020\u00008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0018\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0017\u0010\u001b\u001a\u00020\u001a8\u0007\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001b\u0010\u001d\u00a8\u0006&"
    }
    d2 = {
        "Lokhttp3/MultipartReader;",
        "Ljava/io/Closeable;",
        "",
        "maxResult",
        "currentPartBytesRemaining",
        "Lokhttp3/MultipartReader$Part;",
        "nextPart",
        "Ln2/b;",
        "close",
        "Lokio/ByteString;",
        "dashDashBoundary",
        "Lokio/ByteString;",
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
        "Lx2/m;",
        "source",
        "Lx2/m;",
        "",
        "boundary",
        "Ljava/lang/String;",
        "()Ljava/lang/String;",
        "<init>",
        "(Lx2/m;Ljava/lang/String;)V",
        "Lokhttp3/ResponseBody;",
        "response",
        "(Lokhttp3/ResponseBody;)V",
        "Companion",
        "Part",
        "PartSource",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/MultipartReader$Companion;

.field private static final afterBoundaryOptions:Lx2/v;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final boundary:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private closed:Z

.field private final crlfDashDashBoundary:Lokio/ByteString;

.field private currentPart:Lokhttp3/MultipartReader$PartSource;

.field private final dashDashBoundary:Lokio/ByteString;

.field private noMoreParts:Z

.field private partCount:I

.field private final source:Lx2/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lokhttp3/MultipartReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/MultipartReader$Companion;-><init>(Lkotlin/jvm/internal/c;)V

    sput-object v0, Lokhttp3/MultipartReader;->Companion:Lokhttp3/MultipartReader$Companion;

    const/4 v0, 0x4

    new-array v0, v0, [Lokio/ByteString;

    sget-object v1, Lokio/ByteString;->Companion:Lx2/n;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "\r\n"

    invoke-static {v1}, Lx2/n;->c(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "--"

    invoke-static {v1}, Lx2/n;->c(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, " "

    invoke-static {v1}, Lx2/n;->c(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "\t"

    invoke-static {v1}, Lx2/n;->c(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/material/slider/h;->P0([Lokio/ByteString;)Lx2/v;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartReader;->afterBoundaryOptions:Lx2/v;

    return-void
.end method

.method public constructor <init>(Lokhttp3/ResponseBody;)V
    .locals 2
    .param p1    # Lokhttp3/ResponseBody;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Lx2/m;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "boundary"

    invoke-virtual {p1, v1}, Lokhttp3/MediaType;->parameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 12
    invoke-direct {p0, v0, p1}, Lokhttp3/MultipartReader;-><init>(Lx2/m;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "expected the Content-Type to have a boundary parameter"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lx2/m;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lx2/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boundary"

    invoke-static {p2, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/MultipartReader;->source:Lx2/m;

    iput-object p2, p0, Lokhttp3/MultipartReader;->boundary:Ljava/lang/String;

    .line 2
    new-instance p1, Lx2/k;

    invoke-direct {p1}, Lx2/k;-><init>()V

    const-string v0, "--"

    .line 3
    invoke-virtual {p1, v0}, Lx2/k;->k0(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, p2}, Lx2/k;->k0(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lx2/k;->k()Lokio/ByteString;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/MultipartReader;->dashDashBoundary:Lokio/ByteString;

    .line 6
    new-instance p1, Lx2/k;

    invoke-direct {p1}, Lx2/k;-><init>()V

    const-string v0, "\r\n--"

    .line 7
    invoke-virtual {p1, v0}, Lx2/k;->k0(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, p2}, Lx2/k;->k0(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lx2/k;->k()Lokio/ByteString;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:Lokio/ByteString;

    return-void
.end method

.method public static final synthetic access$currentPartBytesRemaining(Lokhttp3/MultipartReader;J)J
    .locals 0

    invoke-direct {p0, p1, p2}, Lokhttp3/MultipartReader;->currentPartBytesRemaining(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$getAfterBoundaryOptions$cp()Lx2/v;
    .locals 1

    sget-object v0, Lokhttp3/MultipartReader;->afterBoundaryOptions:Lx2/v;

    return-object v0
.end method

.method public static final synthetic access$getCurrentPart$p(Lokhttp3/MultipartReader;)Lokhttp3/MultipartReader$PartSource;
    .locals 0

    iget-object p0, p0, Lokhttp3/MultipartReader;->currentPart:Lokhttp3/MultipartReader$PartSource;

    return-object p0
.end method

.method public static final synthetic access$getSource$p(Lokhttp3/MultipartReader;)Lx2/m;
    .locals 0

    iget-object p0, p0, Lokhttp3/MultipartReader;->source:Lx2/m;

    return-object p0
.end method

.method public static final synthetic access$setCurrentPart$p(Lokhttp3/MultipartReader;Lokhttp3/MultipartReader$PartSource;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/MultipartReader;->currentPart:Lokhttp3/MultipartReader$PartSource;

    return-void
.end method

.method private final currentPartBytesRemaining(J)J
    .locals 23

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lokhttp3/MultipartReader;->source:Lx2/m;

    iget-object v4, v0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v3, v4, v5}, Lx2/m;->y(J)V

    iget-object v3, v0, Lokhttp3/MultipartReader;->source:Lx2/m;

    invoke-interface {v3}, Lx2/m;->a()Lx2/k;

    move-result-object v3

    iget-object v4, v0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:Lokio/ByteString;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "bytes"

    invoke-static {v4, v5}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v5

    const/4 v6, 0x0

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    if-eqz v5, :cond_a

    iget-object v5, v3, Lx2/k;->b:Lx2/z;

    const-wide/16 v9, 0x1

    if-eqz v5, :cond_8

    iget-wide v11, v3, Lx2/k;->c:J

    const-wide/16 v13, 0x0

    sub-long v15, v11, v13

    cmp-long v15, v15, v13

    if-gez v15, :cond_4

    :goto_1
    cmp-long v15, v11, v13

    if-lez v15, :cond_1

    iget-object v5, v5, Lx2/z;->g:Lx2/z;

    invoke-static {v5}, Lcom/google/android/material/slider/h;->w(Ljava/lang/Object;)V

    iget v15, v5, Lx2/z;->c:I

    iget v7, v5, Lx2/z;->b:I

    sub-int/2addr v15, v7

    int-to-long v7, v15

    sub-long/2addr v11, v7

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v7

    aget-byte v6, v7, v6

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    iget-wide v13, v3, Lx2/k;->c:J

    move-wide/from16 v19, v11

    int-to-long v11, v4

    sub-long/2addr v13, v11

    add-long/2addr v13, v9

    move-wide/from16 v11, v19

    const-wide/16 v17, 0x0

    :goto_2
    cmp-long v3, v11, v13

    if-gez v3, :cond_8

    iget v3, v5, Lx2/z;->c:I

    iget v8, v5, Lx2/z;->b:I

    int-to-long v9, v8

    add-long/2addr v9, v13

    sub-long/2addr v9, v11

    move-wide/from16 v21, v13

    int-to-long v13, v3

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v3, v8

    iget v8, v5, Lx2/z;->b:I

    int-to-long v8, v8

    add-long v8, v8, v17

    sub-long/2addr v8, v11

    long-to-int v8, v8

    :goto_3
    if-ge v8, v3, :cond_3

    iget-object v9, v5, Lx2/z;->a:[B

    aget-byte v9, v9, v8

    if-ne v9, v6, :cond_2

    add-int/lit8 v9, v8, 0x1

    invoke-static {v5, v9, v7, v4}, Ly2/a;->a(Lx2/z;I[BI)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_7

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    iget v3, v5, Lx2/z;->c:I

    iget v8, v5, Lx2/z;->b:I

    sub-int/2addr v3, v8

    int-to-long v8, v3

    add-long v17, v8, v11

    iget-object v5, v5, Lx2/z;->f:Lx2/z;

    invoke-static {v5}, Lcom/google/android/material/slider/h;->w(Ljava/lang/Object;)V

    move-wide/from16 v11, v17

    move-wide/from16 v13, v21

    const-wide/16 v9, 0x1

    goto :goto_2

    :cond_4
    const-wide/16 v7, 0x0

    :goto_4
    iget v9, v5, Lx2/z;->c:I

    iget v10, v5, Lx2/z;->b:I

    sub-int/2addr v9, v10

    int-to-long v9, v9

    add-long/2addr v9, v7

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-lez v13, :cond_7

    invoke-virtual {v4}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v9

    aget-byte v6, v9, v6

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    iget-wide v13, v3, Lx2/k;->c:J

    int-to-long v11, v4

    sub-long/2addr v13, v11

    const-wide/16 v10, 0x1

    add-long/2addr v13, v10

    move-wide v11, v7

    const-wide/16 v17, 0x0

    :goto_5
    cmp-long v3, v11, v13

    if-gez v3, :cond_8

    iget v3, v5, Lx2/z;->c:I

    iget v7, v5, Lx2/z;->b:I

    int-to-long v7, v7

    add-long/2addr v7, v13

    sub-long/2addr v7, v11

    move-wide/from16 v21, v13

    int-to-long v13, v3

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v3, v7

    iget v7, v5, Lx2/z;->b:I

    int-to-long v7, v7

    add-long v7, v7, v17

    sub-long/2addr v7, v11

    long-to-int v7, v7

    move v8, v7

    :goto_6
    if-ge v8, v3, :cond_6

    iget-object v7, v5, Lx2/z;->a:[B

    aget-byte v7, v7, v8

    if-ne v7, v6, :cond_5

    add-int/lit8 v7, v8, 0x1

    invoke-static {v5, v7, v9, v4}, Ly2/a;->a(Lx2/z;I[BI)Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_7
    iget v3, v5, Lx2/z;->b:I

    sub-int/2addr v8, v3

    int-to-long v3, v8

    add-long/2addr v3, v11

    goto :goto_8

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_6
    iget v3, v5, Lx2/z;->c:I

    iget v7, v5, Lx2/z;->b:I

    sub-int/2addr v3, v7

    int-to-long v7, v3

    add-long v17, v11, v7

    iget-object v5, v5, Lx2/z;->f:Lx2/z;

    invoke-static {v5}, Lcom/google/android/material/slider/h;->w(Ljava/lang/Object;)V

    move-wide/from16 v11, v17

    move-wide/from16 v13, v21

    goto :goto_5

    :cond_7
    iget-object v5, v5, Lx2/z;->f:Lx2/z;

    invoke-static {v5}, Lcom/google/android/material/slider/h;->w(Ljava/lang/Object;)V

    move-wide v7, v9

    goto :goto_4

    :cond_8
    const-wide/16 v3, -0x1

    :goto_8
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_9

    iget-object v3, v0, Lokhttp3/MultipartReader;->source:Lx2/m;

    invoke-interface {v3}, Lx2/m;->a()Lx2/k;

    move-result-object v3

    iget-wide v3, v3, Lx2/k;->c:J

    iget-object v5, v0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:Lokio/ByteString;

    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    goto :goto_9

    :cond_9
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :goto_9
    return-wide v1

    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bytes is empty"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final boundary()Ljava/lang/String;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "boundary"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokhttp3/MultipartReader;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokhttp3/MultipartReader;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/MultipartReader;->closed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/MultipartReader;->currentPart:Lokhttp3/MultipartReader$PartSource;

    iget-object v0, p0, Lokhttp3/MultipartReader;->source:Lx2/m;

    invoke-interface {v0}, Ljava/nio/channels/Channel;->close()V

    return-void
.end method

.method public final nextPart()Lokhttp3/MultipartReader$Part;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-boolean v0, p0, Lokhttp3/MultipartReader;->closed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lokhttp3/MultipartReader;->noMoreParts:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    iget v0, p0, Lokhttp3/MultipartReader;->partCount:I

    const-wide/16 v3, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lokhttp3/MultipartReader;->source:Lx2/m;

    iget-object v5, p0, Lokhttp3/MultipartReader;->dashDashBoundary:Lokio/ByteString;

    invoke-interface {v0, v3, v4, v5}, Lx2/m;->F(JLokio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokhttp3/MultipartReader;->source:Lx2/m;

    iget-object v3, p0, Lokhttp3/MultipartReader;->dashDashBoundary:Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lx2/m;->n(J)V

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v5, 0x2000

    invoke-direct {p0, v5, v6}, Lokhttp3/MultipartReader;->currentPartBytesRemaining(J)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_8

    iget-object v0, p0, Lokhttp3/MultipartReader;->source:Lx2/m;

    iget-object v3, p0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lx2/m;->n(J)V

    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lokhttp3/MultipartReader;->source:Lx2/m;

    sget-object v4, Lokhttp3/MultipartReader;->afterBoundaryOptions:Lx2/v;

    invoke-interface {v3, v4}, Lx2/m;->i(Lx2/v;)I

    move-result v3

    const/4 v4, -0x1

    const-string v5, "unexpected characters after boundary"

    if-eq v3, v4, :cond_7

    if-eqz v3, :cond_6

    if-eq v3, v1, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    if-nez v0, :cond_5

    iget v0, p0, Lokhttp3/MultipartReader;->partCount:I

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lokhttp3/MultipartReader;->noMoreParts:Z

    return-object v2

    :cond_4
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "expected at least 1 part"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget v0, p0, Lokhttp3/MultipartReader;->partCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lokhttp3/MultipartReader;->partCount:I

    new-instance v0, Lokhttp3/internal/http1/HeadersReader;

    iget-object v1, p0, Lokhttp3/MultipartReader;->source:Lx2/m;

    invoke-direct {v0, v1}, Lokhttp3/internal/http1/HeadersReader;-><init>(Lx2/m;)V

    invoke-virtual {v0}, Lokhttp3/internal/http1/HeadersReader;->readHeaders()Lokhttp3/Headers;

    move-result-object v0

    new-instance v1, Lokhttp3/MultipartReader$PartSource;

    invoke-direct {v1, p0}, Lokhttp3/MultipartReader$PartSource;-><init>(Lokhttp3/MultipartReader;)V

    iput-object v1, p0, Lokhttp3/MultipartReader;->currentPart:Lokhttp3/MultipartReader$PartSource;

    new-instance v2, Lokhttp3/MultipartReader$Part;

    invoke-static {v1}, Lcom/google/android/material/slider/h;->r(Lx2/d0;)Lx2/y;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lokhttp3/MultipartReader$Part;-><init>(Lokhttp3/Headers;Lx2/m;)V

    return-object v2

    :cond_7
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v0, p0, Lokhttp3/MultipartReader;->source:Lx2/m;

    invoke-interface {v0, v5, v6}, Lx2/m;->n(J)V

    goto :goto_0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
