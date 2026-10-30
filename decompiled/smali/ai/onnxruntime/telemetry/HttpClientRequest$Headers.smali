.class public final Lai/onnxruntime/telemetry/HttpClientRequest$Headers;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/telemetry/HttpClientRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Headers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lai/onnxruntime/telemetry/HttpClientRequest$HeaderEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final buffer:[B

.field private current:I

.field private final header_lengths:[I

.field public final length:I

.field private offset:I


# direct methods
.method public constructor <init>([I[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lai/onnxruntime/telemetry/HttpClientRequest$Headers;->current:I

    .line 6
    .line 7
    iput v0, p0, Lai/onnxruntime/telemetry/HttpClientRequest$Headers;->offset:I

    .line 8
    .line 9
    array-length v0, p1

    .line 10
    iput v0, p0, Lai/onnxruntime/telemetry/HttpClientRequest$Headers;->length:I

    .line 11
    .line 12
    iput-object p1, p0, Lai/onnxruntime/telemetry/HttpClientRequest$Headers;->header_lengths:[I

    .line 13
    .line 14
    iput-object p2, p0, Lai/onnxruntime/telemetry/HttpClientRequest$Headers;->buffer:[B

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lai/onnxruntime/telemetry/HttpClientRequest$Headers;->current:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iget v1, p0, Lai/onnxruntime/telemetry/HttpClientRequest$Headers;->length:I

    .line 6
    .line 7
    if-gt v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public next()Lai/onnxruntime/telemetry/HttpClientRequest$HeaderEntry;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lai/onnxruntime/telemetry/HttpClientRequest$Headers;->buffer:[B

    .line 4
    .line 5
    iget v2, p0, Lai/onnxruntime/telemetry/HttpClientRequest$Headers;->offset:I

    .line 6
    .line 7
    iget-object v3, p0, Lai/onnxruntime/telemetry/HttpClientRequest$Headers;->header_lengths:[I

    .line 8
    .line 9
    iget v4, p0, Lai/onnxruntime/telemetry/HttpClientRequest$Headers;->current:I

    .line 10
    .line 11
    aget v3, v3, v4

    .line 12
    .line 13
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lai/onnxruntime/telemetry/HttpClientRequest$Headers;->offset:I

    .line 19
    .line 20
    iget-object v2, p0, Lai/onnxruntime/telemetry/HttpClientRequest$Headers;->header_lengths:[I

    .line 21
    .line 22
    iget v3, p0, Lai/onnxruntime/telemetry/HttpClientRequest$Headers;->current:I

    .line 23
    .line 24
    aget v5, v2, v3

    .line 25
    .line 26
    add-int/2addr v1, v5

    .line 27
    iput v1, p0, Lai/onnxruntime/telemetry/HttpClientRequest$Headers;->offset:I

    .line 28
    .line 29
    new-instance v5, Ljava/lang/String;

    .line 30
    .line 31
    iget-object v6, p0, Lai/onnxruntime/telemetry/HttpClientRequest$Headers;->buffer:[B

    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    aget v2, v2, v3

    .line 36
    .line 37
    invoke-direct {v5, v6, v1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 38
    .line 39
    .line 40
    iget v1, p0, Lai/onnxruntime/telemetry/HttpClientRequest$Headers;->offset:I

    .line 41
    .line 42
    iget-object v2, p0, Lai/onnxruntime/telemetry/HttpClientRequest$Headers;->header_lengths:[I

    .line 43
    .line 44
    iget v3, p0, Lai/onnxruntime/telemetry/HttpClientRequest$Headers;->current:I

    .line 45
    .line 46
    add-int/lit8 v4, v3, 0x1

    .line 47
    .line 48
    aget v2, v2, v4

    .line 49
    .line 50
    add-int/2addr v1, v2

    .line 51
    iput v1, p0, Lai/onnxruntime/telemetry/HttpClientRequest$Headers;->offset:I

    .line 52
    .line 53
    add-int/lit8 v3, v3, 0x2

    .line 54
    .line 55
    iput v3, p0, Lai/onnxruntime/telemetry/HttpClientRequest$Headers;->current:I

    .line 56
    .line 57
    new-instance v1, Lai/onnxruntime/telemetry/HttpClientRequest$HeaderEntry;

    .line 58
    .line 59
    invoke-direct {v1, v0, v5}, Lai/onnxruntime/telemetry/HttpClientRequest$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lai/onnxruntime/telemetry/HttpClientRequest$Headers;->next()Lai/onnxruntime/telemetry/HttpClientRequest$HeaderEntry;

    move-result-object v0

    return-object v0
.end method
