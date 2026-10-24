.class public final Lokhttp3/internal/ws/WebSocketProtocol;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0014\n\u0002\u0010\t\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008(\u0010)J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\u0008J\u000e\u0010\u000c\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008J\u000e\u0010\r\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\nR\u0014\u0010\u000e\u001a\u00020\n8\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00088\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u00088\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u00088\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u00088\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00088\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00088\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0011R\u0014\u0010\u0017\u001a\u00020\u00088\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0011R\u0014\u0010\u0018\u001a\u00020\u00088\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0011R\u0014\u0010\u0019\u001a\u00020\u00088\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u0011R\u0014\u0010\u001a\u001a\u00020\u00088\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u0011R\u0014\u0010\u001b\u001a\u00020\u00088\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0011R\u0014\u0010\u001c\u001a\u00020\u00088\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u0011R\u0014\u0010\u001d\u001a\u00020\u00088\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u0011R\u0014\u0010\u001e\u001a\u00020\u00088\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u0011R\u0014\u0010 \u001a\u00020\u001f8\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0014\u0010\"\u001a\u00020\u001f8\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\"\u0010!R\u0014\u0010#\u001a\u00020\u00088\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008#\u0010\u0011R\u0014\u0010$\u001a\u00020\u001f8\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008$\u0010!R\u0014\u0010%\u001a\u00020\u00088\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008%\u0010\u0011R\u0014\u0010&\u001a\u00020\u00088\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008&\u0010\u0011R\u0014\u0010\'\u001a\u00020\u00088\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\'\u0010\u0011\u00a8\u0006*"
    }
    d2 = {
        "Lokhttp3/internal/ws/WebSocketProtocol;",
        "",
        "Lp2/h;",
        "cursor",
        "",
        "key",
        "Lf2/b;",
        "toggleMask",
        "",
        "code",
        "",
        "closeCodeExceptionMessage",
        "validateCloseCode",
        "acceptHeader",
        "ACCEPT_MAGIC",
        "Ljava/lang/String;",
        "B0_FLAG_FIN",
        "I",
        "B0_FLAG_RSV1",
        "B0_FLAG_RSV2",
        "B0_FLAG_RSV3",
        "B0_MASK_OPCODE",
        "OPCODE_FLAG_CONTROL",
        "B1_FLAG_MASK",
        "B1_MASK_LENGTH",
        "OPCODE_CONTINUATION",
        "OPCODE_TEXT",
        "OPCODE_BINARY",
        "OPCODE_CONTROL_CLOSE",
        "OPCODE_CONTROL_PING",
        "OPCODE_CONTROL_PONG",
        "",
        "PAYLOAD_BYTE_MAX",
        "J",
        "CLOSE_MESSAGE_MAX",
        "PAYLOAD_SHORT",
        "PAYLOAD_SHORT_MAX",
        "PAYLOAD_LONG",
        "CLOSE_CLIENT_GOING_AWAY",
        "CLOSE_NO_STATUS_CODE",
        "<init>",
        "()V",
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
.field public static final ACCEPT_MAGIC:Ljava/lang/String; = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final B0_FLAG_FIN:I = 0x80

.field public static final B0_FLAG_RSV1:I = 0x40

.field public static final B0_FLAG_RSV2:I = 0x20

.field public static final B0_FLAG_RSV3:I = 0x10

.field public static final B0_MASK_OPCODE:I = 0xf

.field public static final B1_FLAG_MASK:I = 0x80

.field public static final B1_MASK_LENGTH:I = 0x7f

.field public static final CLOSE_CLIENT_GOING_AWAY:I = 0x3e9

.field public static final CLOSE_MESSAGE_MAX:J = 0x7bL

.field public static final CLOSE_NO_STATUS_CODE:I = 0x3ed

.field public static final INSTANCE:Lokhttp3/internal/ws/WebSocketProtocol;

.field public static final OPCODE_BINARY:I = 0x2

.field public static final OPCODE_CONTINUATION:I = 0x0

.field public static final OPCODE_CONTROL_CLOSE:I = 0x8

.field public static final OPCODE_CONTROL_PING:I = 0x9

.field public static final OPCODE_CONTROL_PONG:I = 0xa

.field public static final OPCODE_FLAG_CONTROL:I = 0x8

.field public static final OPCODE_TEXT:I = 0x1

.field public static final PAYLOAD_BYTE_MAX:J = 0x7dL

.field public static final PAYLOAD_LONG:I = 0x7f

.field public static final PAYLOAD_SHORT:I = 0x7e

.field public static final PAYLOAD_SHORT_MAX:J = 0xffffL


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/internal/ws/WebSocketProtocol;

    invoke-direct {v0}, Lokhttp3/internal/ws/WebSocketProtocol;-><init>()V

    sput-object v0, Lokhttp3/internal/ws/WebSocketProtocol;->INSTANCE:Lokhttp3/internal/ws/WebSocketProtocol;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "key"

    invoke-static {p1, p0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lokio/ByteString;->Companion:Lp2/n;

    const-string v0, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lp2/n;->c(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->sha1()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final closeCodeExceptionMessage(I)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/16 p0, 0x3e8

    if-lt p1, p0, :cond_5

    const/16 p0, 0x1388

    if-lt p1, p0, :cond_0

    goto :goto_1

    :cond_0
    const/16 p0, 0x3ec

    if-gt p0, p1, :cond_1

    const/16 p0, 0x3ee

    if-ge p0, p1, :cond_3

    :cond_1
    const/16 p0, 0x3f7

    if-le p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p0, 0xbb7

    if-lt p0, p1, :cond_4

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Code "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is reserved and may not be used."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    :goto_0
    const/4 p0, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const-string p0, "Code must be in range [1000,5000): "

    invoke-static {p0, p1}, La/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public final toggleMask(Lp2/h;[B)V
    .locals 8
    .param p1    # Lp2/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "cursor"

    invoke-static {p1, p0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "key"

    invoke-static {p2, p0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    iget-object v2, p1, Lp2/h;->e:[B

    iget v3, p1, Lp2/h;->f:I

    iget v4, p1, Lp2/h;->g:I

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    :goto_0
    if-ge v3, v4, :cond_1

    rem-int/2addr v1, p0

    aget-byte v6, v2, v3

    aget-byte v7, p2, v1

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v5

    goto :goto_0

    :cond_1
    iget-wide v2, p1, Lp2/h;->d:J

    iget-object v4, p1, Lp2/h;->a:Lp2/k;

    invoke-static {v4}, Ly1/l;->w(Ljava/lang/Object;)V

    iget-wide v6, v4, Lp2/k;->b:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v5, v0

    :goto_1
    if-eqz v5, :cond_4

    iget-wide v2, p1, Lp2/h;->d:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_3
    iget v4, p1, Lp2/h;->g:I

    iget v5, p1, Lp2/h;->f:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    :goto_2
    invoke-virtual {p1, v2, v3}, Lp2/h;->g(J)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no more bytes"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final validateCloseCode(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lokhttp3/internal/ws/WebSocketProtocol;->closeCodeExceptionMessage(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Ly1/l;->w(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
