.class public Lkotlin/io/encoding/Base64;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/io/encoding/Base64$Default;,
        Lkotlin/io/encoding/Base64$PaddingOption;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0012\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\r\n\u0002\u0008\u0013\n\u0002\u0010\u0002\n\u0002\u0008\t\u0008\u0017\u0018\u0000 B2\u00020\u0001:\u0002ABB)\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0008H\u0007J\"\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0006J4\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0006J\"\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0006J=\u0010\u001f\u001a\u0002H \"\u000c\u0008\u0000\u0010 *\u00060!j\u0002`\"2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u0002H 2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0006\u00a2\u0006\u0002\u0010#J\"\u0010$\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0006J4\u0010%\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0006J\"\u0010$\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020&2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0006J4\u0010%\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020&2\u0006\u0010\u001b\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0006J%\u0010\'\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008(J5\u0010)\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008*J\u0015\u0010+\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008-J\u0008\u0010.\u001a\u00020\u0003H\u0002J0\u0010/\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0002J%\u00100\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u00081J%\u00102\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020&2\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u00083J\u0015\u00104\u001a\u00020\u001e2\u0006\u0010\u0017\u001a\u00020\u0016H\u0000\u00a2\u0006\u0002\u00085J(\u00106\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u00107\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u00108\u001a\u00020\u0006H\u0002J\u0010\u00109\u001a\u00020:2\u0006\u00107\u001a\u00020\u0006H\u0002J \u0010;\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0002J%\u0010<\u001a\u00020:2\u0006\u0010,\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008=J \u0010>\u001a\u00020:2\u0006\u0010?\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010@\u001a\u00020\u0006H\u0002R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0004\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0007\u001a\u00020\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006C"
    }
    d2 = {
        "Lkotlin/io/encoding/Base64;",
        "",
        "isUrlSafe",
        "",
        "isMimeScheme",
        "mimeLineLength",
        "",
        "paddingOption",
        "Lkotlin/io/encoding/Base64$PaddingOption;",
        "<init>",
        "(ZZILkotlin/io/encoding/Base64$PaddingOption;)V",
        "isUrlSafe$kotlin_stdlib",
        "()Z",
        "isMimeScheme$kotlin_stdlib",
        "getMimeLineLength$kotlin_stdlib",
        "()I",
        "getPaddingOption$kotlin_stdlib",
        "()Lkotlin/io/encoding/Base64$PaddingOption;",
        "mimeGroupsPerLine",
        "withPadding",
        "option",
        "encodeToByteArray",
        "",
        "source",
        "startIndex",
        "endIndex",
        "encodeIntoByteArray",
        "destination",
        "destinationOffset",
        "encode",
        "",
        "encodeToAppendable",
        "A",
        "Ljava/lang/Appendable;",
        "Lkotlin/text/Appendable;",
        "([BLjava/lang/Appendable;II)Ljava/lang/Appendable;",
        "decode",
        "decodeIntoByteArray",
        "",
        "encodeToByteArrayImpl",
        "encodeToByteArrayImpl$kotlin_stdlib",
        "encodeIntoByteArrayImpl",
        "encodeIntoByteArrayImpl$kotlin_stdlib",
        "encodeSize",
        "sourceSize",
        "encodeSize$kotlin_stdlib",
        "shouldPadOnEncode",
        "decodeImpl",
        "decodeSize",
        "decodeSize$kotlin_stdlib",
        "charsToBytesImpl",
        "charsToBytesImpl$kotlin_stdlib",
        "bytesToStringImpl",
        "bytesToStringImpl$kotlin_stdlib",
        "handlePaddingSymbol",
        "padIndex",
        "byteStart",
        "checkPaddingIsAllowed",
        "",
        "skipIllegalSymbolsIfMime",
        "checkSourceBounds",
        "checkSourceBounds$kotlin_stdlib",
        "checkDestinationBounds",
        "destinationSize",
        "capacityNeeded",
        "PaddingOption",
        "Default",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "2.2"
.end annotation

.annotation build Lkotlin/WasExperimental;
    markerClass = {
        Lkotlin/io/encoding/ExperimentalEncodingApi;
    }
.end annotation


# static fields
.field public static final Default:Lkotlin/io/encoding/Base64$Default;

.field private static final Mime:Lkotlin/io/encoding/Base64;

.field private static final Pem:Lkotlin/io/encoding/Base64;

.field private static final UrlSafe:Lkotlin/io/encoding/Base64;

.field private static final bitsPerByte:I = 0x8

.field private static final bitsPerSymbol:I = 0x6

.field public static final bytesPerGroup:I = 0x3

.field private static final lineLengthMime:I = 0x4c

.field private static final lineLengthPem:I = 0x40

.field private static final mimeLineSeparatorSymbols:[B

.field public static final padSymbol:B = 0x3dt

.field public static final symbolsPerGroup:I = 0x4


# instance fields
.field private final isMimeScheme:Z

.field private final isUrlSafe:Z

.field private final mimeGroupsPerLine:I

.field private final mimeLineLength:I

.field private final paddingOption:Lkotlin/io/encoding/Base64$PaddingOption;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lkotlin/io/encoding/Base64$Default;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lkotlin/io/encoding/Base64$Default;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lkotlin/io/encoding/Base64;->Default:Lkotlin/io/encoding/Base64$Default;

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    fill-array-data v0, :array_30

    .line 13
    .line 14
    .line 15
    sput-object v0, Lkotlin/io/encoding/Base64;->mimeLineSeparatorSymbols:[B

    .line 16
    .line 17
    new-instance v0, Lkotlin/io/encoding/Base64;

    .line 18
    .line 19
    sget-object v1, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT:Lkotlin/io/encoding/Base64$PaddingOption;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, -0x1

    .line 24
    invoke-direct {v0, v2, v3, v4, v1}, Lkotlin/io/encoding/Base64;-><init>(ZZILkotlin/io/encoding/Base64$PaddingOption;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lkotlin/io/encoding/Base64;->UrlSafe:Lkotlin/io/encoding/Base64;

    .line 28
    .line 29
    new-instance v0, Lkotlin/io/encoding/Base64;

    .line 30
    .line 31
    const/16 v4, 0x4c

    .line 32
    .line 33
    invoke-direct {v0, v3, v2, v4, v1}, Lkotlin/io/encoding/Base64;-><init>(ZZILkotlin/io/encoding/Base64$PaddingOption;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lkotlin/io/encoding/Base64;->Mime:Lkotlin/io/encoding/Base64;

    .line 37
    .line 38
    new-instance v0, Lkotlin/io/encoding/Base64;

    .line 39
    .line 40
    const/16 v4, 0x40

    .line 41
    .line 42
    invoke-direct {v0, v3, v2, v4, v1}, Lkotlin/io/encoding/Base64;-><init>(ZZILkotlin/io/encoding/Base64$PaddingOption;)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lkotlin/io/encoding/Base64;->Pem:Lkotlin/io/encoding/Base64;

    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :array_30
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method private constructor <init>(ZZILkotlin/io/encoding/Base64$PaddingOption;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lkotlin/io/encoding/Base64;->isUrlSafe:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    .line 7
    .line 8
    iput p3, p0, Lkotlin/io/encoding/Base64;->mimeLineLength:I

    .line 9
    .line 10
    iput-object p4, p0, Lkotlin/io/encoding/Base64;->paddingOption:Lkotlin/io/encoding/Base64$PaddingOption;

    .line 11
    .line 12
    if-eqz p1, :cond_17

    .line 13
    .line 14
    if-nez p2, :cond_10

    .line 15
    .line 16
    goto :goto_17

    .line 17
    :cond_10
    const-string p1, "Failed requirement."

    .line 18
    .line 19
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    throw p1

    .line 24
    :cond_17
    :goto_17
    div-int/lit8 p3, p3, 0x4

    .line 25
    .line 26
    iput p3, p0, Lkotlin/io/encoding/Base64;->mimeGroupsPerLine:I

    .line 27
    .line 28
    return-void
.end method

.method public synthetic constructor <init>(ZZILkotlin/io/encoding/Base64$PaddingOption;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/io/encoding/Base64;-><init>(ZZILkotlin/io/encoding/Base64$PaddingOption;)V

    return-void
.end method

.method public static final synthetic access$getMime$cp()Lkotlin/io/encoding/Base64;
    .registers 1

    .line 1
    sget-object v0, Lkotlin/io/encoding/Base64;->Mime:Lkotlin/io/encoding/Base64;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getMimeLineSeparatorSymbols$cp()[B
    .registers 1

    .line 1
    sget-object v0, Lkotlin/io/encoding/Base64;->mimeLineSeparatorSymbols:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getPem$cp()Lkotlin/io/encoding/Base64;
    .registers 1

    .line 1
    sget-object v0, Lkotlin/io/encoding/Base64;->Pem:Lkotlin/io/encoding/Base64;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getUrlSafe$cp()Lkotlin/io/encoding/Base64;
    .registers 1

    .line 1
    sget-object v0, Lkotlin/io/encoding/Base64;->UrlSafe:Lkotlin/io/encoding/Base64;

    .line 2
    .line 3
    return-object v0
.end method

.method private final checkDestinationBounds(III)V
    .registers 7

    .line 1
    const-string v0, ", destination size: "

    .line 2
    .line 3
    if-ltz p2, :cond_19

    .line 4
    .line 5
    if-gt p2, p1, :cond_19

    .line 6
    .line 7
    add-int v1, p2, p3

    .line 8
    .line 9
    if-ltz v1, :cond_d

    .line 10
    .line 11
    if-gt v1, p1, :cond_d

    .line 12
    .line 13
    return-void

    .line 14
    :cond_d
    const-string v1, "The destination array does not have enough capacity, destination offset: "

    .line 15
    .line 16
    const-string v2, ", capacity needed: "

    .line 17
    .line 18
    invoke-static {v1, p2, p1, v0, v2}, Lai/onnxruntime/a;->v(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1, p3}, Lkotlin/text/b;->a(Ljava/lang/StringBuilder;I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_19
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    .line 27
    .line 28
    const-string v1, "destination offset: "

    .line 29
    .line 30
    invoke-static {p2, v1, v0, p1}, Lai/onnxruntime/a;->g(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p3
.end method

.method private final checkPaddingIsAllowed(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lkotlin/io/encoding/Base64;->paddingOption:Lkotlin/io/encoding/Base64$PaddingOption;

    .line 2
    .line 3
    sget-object v1, Lkotlin/io/encoding/Base64$PaddingOption;->ABSENT:Lkotlin/io/encoding/Base64$PaddingOption;

    .line 4
    .line 5
    if-eq v0, v1, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    const-string v0, "The padding option is set to ABSENT, but the input has a pad character at index "

    .line 9
    .line 10
    invoke-static {p1, v0}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic decode$default(Lkotlin/io/encoding/Base64;Ljava/lang/CharSequence;IIILjava/lang/Object;)[B
    .registers 6

    .line 1
    if-nez p5, :cond_14

    .line 2
    .line 3
    and-int/lit8 p5, p4, 0x2

    .line 4
    .line 5
    if-eqz p5, :cond_7

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_7
    and-int/lit8 p4, p4, 0x4

    .line 9
    .line 10
    if-eqz p4, :cond_f

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    :cond_f
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->decode(Ljava/lang/CharSequence;II)[B

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_14
    const-string p0, "Super calls with default arguments not supported in this target, function: decode"

    .line 22
    .line 23
    invoke-static {p0}, Landroidx/navigation/b;->g(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public static synthetic decode$default(Lkotlin/io/encoding/Base64;[BIIILjava/lang/Object;)[B
    .registers 6

    if-nez p5, :cond_11

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_7

    const/4 p2, 0x0

    :cond_7
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_c

    .line 28
    array-length p3, p1

    :cond_c
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->decode([BII)[B

    move-result-object p0

    return-object p0

    :cond_11
    const-string p0, "Super calls with default arguments not supported in this target, function: decode"

    invoke-static {p0}, Landroidx/navigation/b;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private final decodeImpl([B[BIII)I
    .registers 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p5

    .line 6
    .line 7
    iget-boolean v3, v0, Lkotlin/io/encoding/Base64;->isUrlSafe:Z

    .line 8
    .line 9
    if-eqz v3, :cond_f

    .line 10
    .line 11
    # getter for: Lkotlin/io/encoding/Base64Kt;->base64UrlDecodeMap:[I
    invoke-static {}, Lkotlin/io/encoding/Base64Kt;->access$getBase64UrlDecodeMap$p()[I

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    goto :goto_13

    .line 16
    :cond_f
    # getter for: Lkotlin/io/encoding/Base64Kt;->base64DecodeMap:[I
    invoke-static {}, Lkotlin/io/encoding/Base64Kt;->access$getBase64DecodeMap$p()[I

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    :goto_13
    const/4 v5, -0x8

    .line 21
    move/from16 v9, p3

    .line 22
    .line 23
    move/from16 v6, p4

    .line 24
    .line 25
    move v7, v5

    .line 26
    const/4 v8, 0x0

    .line 27
    :goto_1a
    const-string v10, ") at index "

    .line 28
    .line 29
    const-string v11, "\'("

    .line 30
    .line 31
    const/4 v12, -0x2

    .line 32
    if-ge v6, v2, :cond_d2

    .line 33
    .line 34
    if-ne v7, v5, :cond_6c

    .line 35
    .line 36
    add-int/lit8 v15, v6, 0x3

    .line 37
    .line 38
    if-ge v15, v2, :cond_6c

    .line 39
    .line 40
    add-int/lit8 v15, v6, 0x1

    .line 41
    .line 42
    aget-byte v4, v1, v6

    .line 43
    .line 44
    and-int/lit16 v4, v4, 0xff

    .line 45
    .line 46
    aget v4, v3, v4

    .line 47
    .line 48
    add-int/lit8 v16, v6, 0x2

    .line 49
    .line 50
    aget-byte v15, v1, v15

    .line 51
    .line 52
    and-int/lit16 v15, v15, 0xff

    .line 53
    .line 54
    aget v15, v3, v15

    .line 55
    .line 56
    add-int/lit8 v17, v6, 0x3

    .line 57
    .line 58
    const/16 p4, 0x8

    .line 59
    .line 60
    aget-byte v13, v1, v16

    .line 61
    .line 62
    and-int/lit16 v13, v13, 0xff

    .line 63
    .line 64
    aget v13, v3, v13

    .line 65
    .line 66
    add-int/lit8 v16, v6, 0x4

    .line 67
    .line 68
    const/16 v18, 0x1

    .line 69
    .line 70
    aget-byte v14, v1, v17

    .line 71
    .line 72
    and-int/lit16 v14, v14, 0xff

    .line 73
    .line 74
    aget v14, v3, v14

    .line 75
    .line 76
    shl-int/lit8 v4, v4, 0x12

    .line 77
    .line 78
    shl-int/lit8 v15, v15, 0xc

    .line 79
    .line 80
    or-int/2addr v4, v15

    .line 81
    shl-int/lit8 v13, v13, 0x6

    .line 82
    .line 83
    or-int/2addr v4, v13

    .line 84
    or-int/2addr v4, v14

    .line 85
    if-ltz v4, :cond_70

    .line 86
    .line 87
    add-int/lit8 v6, v9, 0x1

    .line 88
    .line 89
    shr-int/lit8 v10, v4, 0x10

    .line 90
    .line 91
    int-to-byte v10, v10

    .line 92
    aput-byte v10, p2, v9

    .line 93
    .line 94
    add-int/lit8 v10, v9, 0x2

    .line 95
    .line 96
    shr-int/lit8 v11, v4, 0x8

    .line 97
    .line 98
    int-to-byte v11, v11

    .line 99
    aput-byte v11, p2, v6

    .line 100
    .line 101
    add-int/lit8 v9, v9, 0x3

    .line 102
    .line 103
    int-to-byte v4, v4

    .line 104
    aput-byte v4, p2, v10

    .line 105
    .line 106
    move/from16 v6, v16

    .line 107
    .line 108
    goto :goto_1a

    .line 109
    :cond_6c
    const/16 p4, 0x8

    .line 110
    .line 111
    const/16 v18, 0x1

    .line 112
    .line 113
    :cond_70
    aget-byte v4, v1, v6

    .line 114
    .line 115
    and-int/lit16 v4, v4, 0xff

    .line 116
    .line 117
    aget v13, v3, v4

    .line 118
    .line 119
    if-gez v13, :cond_b4

    .line 120
    .line 121
    if-ne v13, v12, :cond_81

    .line 122
    .line 123
    invoke-direct {v0, v1, v6, v2, v7}, Lkotlin/io/encoding/Base64;->handlePaddingSymbol([BIII)I

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    move/from16 v4, v18

    .line 128
    .line 129
    goto :goto_d7

    .line 130
    :cond_81
    iget-boolean v12, v0, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    .line 131
    .line 132
    if-eqz v12, :cond_88

    .line 133
    .line 134
    add-int/lit8 v6, v6, 0x1

    .line 135
    .line 136
    goto :goto_1a

    .line 137
    :cond_88
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 138
    .line 139
    int-to-char v2, v4

    .line 140
    invoke-static/range {p4 .. p4}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    invoke-static {v4, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v5, "Invalid symbol \'"

    .line 154
    .line 155
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw v1

    .line 181
    :cond_b4
    add-int/lit8 v6, v6, 0x1

    .line 182
    .line 183
    shl-int/lit8 v4, v8, 0x6

    .line 184
    .line 185
    or-int v8, v4, v13

    .line 186
    .line 187
    add-int/lit8 v4, v7, 0x6

    .line 188
    .line 189
    if-ltz v4, :cond_cf

    .line 190
    .line 191
    add-int/lit8 v10, v9, 0x1

    .line 192
    .line 193
    ushr-int v11, v8, v4

    .line 194
    .line 195
    int-to-byte v11, v11

    .line 196
    aput-byte v11, p2, v9

    .line 197
    .line 198
    shl-int v4, v18, v4

    .line 199
    .line 200
    add-int/lit8 v4, v4, -0x1

    .line 201
    .line 202
    and-int/2addr v8, v4

    .line 203
    add-int/lit8 v7, v7, -0x2

    .line 204
    .line 205
    move v9, v10

    .line 206
    goto/16 :goto_1a

    .line 207
    .line 208
    :cond_cf
    move v7, v4

    .line 209
    goto/16 :goto_1a

    .line 210
    .line 211
    :cond_d2
    const/16 p4, 0x8

    .line 212
    .line 213
    const/16 v18, 0x1

    .line 214
    .line 215
    const/4 v4, 0x0

    .line 216
    :goto_d7
    if-eq v7, v12, :cond_133

    .line 217
    .line 218
    if-eq v7, v5, :cond_eb

    .line 219
    .line 220
    if-nez v4, :cond_eb

    .line 221
    .line 222
    iget-object v3, v0, Lkotlin/io/encoding/Base64;->paddingOption:Lkotlin/io/encoding/Base64$PaddingOption;

    .line 223
    .line 224
    sget-object v4, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT:Lkotlin/io/encoding/Base64$PaddingOption;

    .line 225
    .line 226
    if-eq v3, v4, :cond_e4

    .line 227
    .line 228
    goto :goto_eb

    .line 229
    :cond_e4
    const-string v1, "The padding option is set to PRESENT, but the input is not properly padded"

    .line 230
    .line 231
    invoke-static {v1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    :goto_e9
    const/4 v1, 0x0

    .line 235
    return v1

    .line 236
    :cond_eb
    :goto_eb
    if-nez v8, :cond_12d

    .line 237
    .line 238
    invoke-direct {v0, v1, v6, v2}, Lkotlin/io/encoding/Base64;->skipIllegalSymbolsIfMime([BII)I

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    if-lt v3, v2, :cond_f6

    .line 243
    .line 244
    sub-int v9, v9, p3

    .line 245
    .line 246
    return v9

    .line 247
    :cond_f6
    aget-byte v1, v1, v3

    .line 248
    .line 249
    and-int/lit16 v1, v1, 0xff

    .line 250
    .line 251
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 252
    .line 253
    int-to-char v4, v1

    .line 254
    invoke-static/range {p4 .. p4}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    invoke-static {v1, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    add-int/lit8 v3, v3, -0x1

    .line 266
    .line 267
    new-instance v5, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    const-string v6, "Symbol \'"

    .line 270
    .line 271
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    const-string v1, " is prohibited after the pad character"

    .line 290
    .line 291
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw v2

    .line 302
    :cond_12d
    const-string v1, "The pad bits must be zeros"

    .line 303
    .line 304
    invoke-static {v1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    goto :goto_e9

    .line 308
    :cond_133
    const-string v1, "The last unit of input does not have enough bits"

    .line 309
    .line 310
    invoke-static {v1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    goto :goto_e9
.end method

.method public static synthetic decodeIntoByteArray$default(Lkotlin/io/encoding/Base64;Ljava/lang/CharSequence;[BIIIILjava/lang/Object;)I
    .registers 9

    .line 1
    if-nez p7, :cond_1a

    .line 2
    .line 3
    and-int/lit8 p7, p6, 0x4

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p7, :cond_8

    .line 7
    .line 8
    move p3, v0

    .line 9
    :cond_8
    and-int/lit8 p7, p6, 0x8

    .line 10
    .line 11
    if-eqz p7, :cond_d

    .line 12
    .line 13
    move p4, v0

    .line 14
    :cond_d
    and-int/lit8 p6, p6, 0x10

    .line 15
    .line 16
    if-eqz p6, :cond_15

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result p5

    .line 22
    :cond_15
    invoke-virtual/range {p0 .. p5}, Lkotlin/io/encoding/Base64;->decodeIntoByteArray(Ljava/lang/CharSequence;[BIII)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_1a
    const-string p0, "Super calls with default arguments not supported in this target, function: decodeIntoByteArray"

    .line 28
    .line 29
    invoke-static {p0}, Landroidx/navigation/b;->g(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method public static synthetic decodeIntoByteArray$default(Lkotlin/io/encoding/Base64;[B[BIIIILjava/lang/Object;)I
    .registers 9

    if-nez p7, :cond_17

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_8

    move p3, v0

    :cond_8
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_d

    move p4, v0

    :cond_d
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_12

    .line 34
    array-length p5, p1

    .line 35
    :cond_12
    invoke-virtual/range {p0 .. p5}, Lkotlin/io/encoding/Base64;->decodeIntoByteArray([B[BIII)I

    move-result p0

    return p0

    :cond_17
    const-string p0, "Super calls with default arguments not supported in this target, function: decodeIntoByteArray"

    invoke-static {p0}, Landroidx/navigation/b;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic encode$default(Lkotlin/io/encoding/Base64;[BIIILjava/lang/Object;)Ljava/lang/String;
    .registers 6

    .line 1
    if-nez p5, :cond_11

    .line 2
    .line 3
    and-int/lit8 p5, p4, 0x2

    .line 4
    .line 5
    if-eqz p5, :cond_7

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_7
    and-int/lit8 p4, p4, 0x4

    .line 9
    .line 10
    if-eqz p4, :cond_c

    .line 11
    .line 12
    array-length p3, p1

    .line 13
    :cond_c
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->encode([BII)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_11
    const-string p0, "Super calls with default arguments not supported in this target, function: encode"

    .line 19
    .line 20
    invoke-static {p0}, Landroidx/navigation/b;->g(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public static synthetic encodeIntoByteArray$default(Lkotlin/io/encoding/Base64;[B[BIIIILjava/lang/Object;)I
    .registers 9

    .line 1
    if-nez p7, :cond_17

    .line 2
    .line 3
    and-int/lit8 p7, p6, 0x4

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p7, :cond_8

    .line 7
    .line 8
    move p3, v0

    .line 9
    :cond_8
    and-int/lit8 p7, p6, 0x8

    .line 10
    .line 11
    if-eqz p7, :cond_d

    .line 12
    .line 13
    move p4, v0

    .line 14
    :cond_d
    and-int/lit8 p6, p6, 0x10

    .line 15
    .line 16
    if-eqz p6, :cond_12

    .line 17
    .line 18
    array-length p5, p1

    .line 19
    :cond_12
    invoke-virtual/range {p0 .. p5}, Lkotlin/io/encoding/Base64;->encodeIntoByteArray([B[BIII)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_17
    const-string p0, "Super calls with default arguments not supported in this target, function: encodeIntoByteArray"

    .line 25
    .line 26
    invoke-static {p0}, Landroidx/navigation/b;->g(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public static synthetic encodeToAppendable$default(Lkotlin/io/encoding/Base64;[BLjava/lang/Appendable;IIILjava/lang/Object;)Ljava/lang/Appendable;
    .registers 7

    .line 1
    if-nez p6, :cond_11

    .line 2
    .line 3
    and-int/lit8 p6, p5, 0x4

    .line 4
    .line 5
    if-eqz p6, :cond_7

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    :cond_7
    and-int/lit8 p5, p5, 0x8

    .line 9
    .line 10
    if-eqz p5, :cond_c

    .line 11
    .line 12
    array-length p4, p1

    .line 13
    :cond_c
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlin/io/encoding/Base64;->encodeToAppendable([BLjava/lang/Appendable;II)Ljava/lang/Appendable;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_11
    const-string p0, "Super calls with default arguments not supported in this target, function: encodeToAppendable"

    .line 19
    .line 20
    invoke-static {p0}, Landroidx/navigation/b;->g(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public static synthetic encodeToByteArray$default(Lkotlin/io/encoding/Base64;[BIIILjava/lang/Object;)[B
    .registers 6

    .line 1
    if-nez p5, :cond_11

    .line 2
    .line 3
    and-int/lit8 p5, p4, 0x2

    .line 4
    .line 5
    if-eqz p5, :cond_7

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_7
    and-int/lit8 p4, p4, 0x4

    .line 9
    .line 10
    if-eqz p4, :cond_c

    .line 11
    .line 12
    array-length p3, p1

    .line 13
    :cond_c
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->encodeToByteArray([BII)[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_11
    const-string p0, "Super calls with default arguments not supported in this target, function: encodeToByteArray"

    .line 19
    .line 20
    invoke-static {p0}, Landroidx/navigation/b;->g(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method private final handlePaddingSymbol([BIII)I
    .registers 6

    .line 1
    const/4 v0, -0x8

    .line 2
    if-eq p4, v0, :cond_3a

    .line 3
    .line 4
    const/4 v0, -0x6

    .line 5
    if-eq p4, v0, :cond_34

    .line 6
    .line 7
    const/4 v0, -0x4

    .line 8
    if-eq p4, v0, :cond_16

    .line 9
    .line 10
    const/4 p1, -0x2

    .line 11
    if-ne p4, p1, :cond_f

    .line 12
    .line 13
    add-int/lit8 p2, p2, 0x1

    .line 14
    .line 15
    return p2

    .line 16
    :cond_f
    const-string p1, "Unreachable"

    .line 17
    .line 18
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_14
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_16
    invoke-direct {p0, p2}, Lkotlin/io/encoding/Base64;->checkPaddingIsAllowed(I)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 p2, p2, 0x1

    .line 27
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->skipIllegalSymbolsIfMime([BII)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eq p2, p3, :cond_2a

    .line 33
    .line 34
    aget-byte p1, p1, p2

    .line 35
    .line 36
    const/16 p3, 0x3d

    .line 37
    .line 38
    if-ne p1, p3, :cond_2a

    .line 39
    .line 40
    add-int/lit8 p2, p2, 0x1

    .line 41
    .line 42
    return p2

    .line 43
    :cond_2a
    const-string p1, "Missing one pad character at index "

    .line 44
    .line 45
    invoke-static {p2, p1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_14

    .line 53
    :cond_34
    invoke-direct {p0, p2}, Lkotlin/io/encoding/Base64;->checkPaddingIsAllowed(I)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 p2, p2, 0x1

    .line 57
    .line 58
    return p2

    .line 59
    :cond_3a
    const-string p1, "Redundant pad character at index "

    .line 60
    .line 61
    invoke-static {p2, p1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_14
.end method

.method private final shouldPadOnEncode()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lkotlin/io/encoding/Base64;->paddingOption:Lkotlin/io/encoding/Base64$PaddingOption;

    .line 2
    .line 3
    sget-object v1, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT:Lkotlin/io/encoding/Base64$PaddingOption;

    .line 4
    .line 5
    if-eq v0, v1, :cond_d

    .line 6
    .line 7
    sget-object v1, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT_OPTIONAL:Lkotlin/io/encoding/Base64$PaddingOption;

    .line 8
    .line 9
    if-ne v0, v1, :cond_b

    .line 10
    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method private final skipIllegalSymbolsIfMime([BII)I
    .registers 6

    .line 1
    iget-boolean v0, p0, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    return p2

    .line 6
    :cond_5
    :goto_5
    if-ge p2, p3, :cond_18

    .line 7
    .line 8
    aget-byte v0, p1, p2

    .line 9
    .line 10
    and-int/lit16 v0, v0, 0xff

    .line 11
    .line 12
    # getter for: Lkotlin/io/encoding/Base64Kt;->base64DecodeMap:[I
    invoke-static {}, Lkotlin/io/encoding/Base64Kt;->access$getBase64DecodeMap$p()[I

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    aget v0, v1, v0

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    if-eq v0, v1, :cond_15

    .line 20
    .line 21
    goto :goto_18

    .line 22
    :cond_15
    add-int/lit8 p2, p2, 0x1

    .line 23
    .line 24
    goto :goto_5

    .line 25
    :cond_18
    :goto_18
    return p2
.end method


# virtual methods
.method public final bytesToStringImpl$kotlin_stdlib([B)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    array-length v1, p1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    array-length v1, p1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_b
    if-ge v2, v1, :cond_16

    .line 13
    .line 14
    aget-byte v3, p1, v2

    .line 15
    .line 16
    int-to-char v3, v3

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_b

    .line 23
    :cond_16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public final charsToBytesImpl$kotlin_stdlib(Ljava/lang/CharSequence;II)[B
    .registers 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0, v0, p2, p3}, Lkotlin/io/encoding/Base64;->checkSourceBounds$kotlin_stdlib(III)V

    .line 9
    .line 10
    .line 11
    sub-int v0, p3, p2

    .line 12
    .line 13
    new-array v0, v0, [B

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_f
    if-ge p2, p3, :cond_2a

    .line 17
    .line 18
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/16 v3, 0xff

    .line 23
    .line 24
    if-gt v2, v3, :cond_20

    .line 25
    .line 26
    add-int/lit8 v3, v1, 0x1

    .line 27
    .line 28
    int-to-byte v2, v2

    .line 29
    aput-byte v2, v0, v1

    .line 30
    .line 31
    move v1, v3

    .line 32
    goto :goto_27

    .line 33
    :cond_20
    add-int/lit8 v2, v1, 0x1

    .line 34
    .line 35
    const/16 v3, 0x3f

    .line 36
    .line 37
    aput-byte v3, v0, v1

    .line 38
    .line 39
    move v1, v2

    .line 40
    :goto_27
    add-int/lit8 p2, p2, 0x1

    .line 41
    .line 42
    goto :goto_f

    .line 43
    :cond_2a
    return-object v0
.end method

.method public final checkSourceBounds$kotlin_stdlib(III)V
    .registers 5

    .line 1
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p3, p1}, Lkotlin/collections/AbstractList$Companion;->checkBoundsIndexes$kotlin_stdlib(III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final decode(Ljava/lang/CharSequence;II)[B
    .registers 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v0, :cond_1f

    .line 7
    .line 8
    check-cast p1, Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0, v0, p2, p3}, Lkotlin/io/encoding/Base64;->checkSourceBounds$kotlin_stdlib(III)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object p2, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    :goto_1d
    move-object v1, p1

    .line 31
    goto :goto_24

    .line 32
    :cond_1f
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->charsToBytesImpl$kotlin_stdlib(Ljava/lang/CharSequence;II)[B

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_1d

    .line 37
    :goto_24
    const/4 v4, 0x6

    .line 38
    const/4 v5, 0x0

    .line 39
    const/4 v2, 0x0

    .line 40
    const/4 v3, 0x0

    .line 41
    move-object v0, p0

    .line 42
    invoke-static/range {v0 .. v5}, Lkotlin/io/encoding/Base64;->decode$default(Lkotlin/io/encoding/Base64;[BIIILjava/lang/Object;)[B

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1
.end method

.method public final decode([BII)[B
    .registers 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    array-length v0, p1

    invoke-virtual {p0, v0, p2, p3}, Lkotlin/io/encoding/Base64;->checkSourceBounds$kotlin_stdlib(III)V

    .line 48
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->decodeSize$kotlin_stdlib([BII)I

    move-result v0

    .line 49
    new-array v3, v0, [B

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move v6, p3

    .line 50
    invoke-direct/range {v1 .. v6}, Lkotlin/io/encoding/Base64;->decodeImpl([B[BIII)I

    move-result p1

    if-ne p1, v0, :cond_19

    return-object v3

    .line 51
    :cond_19
    const-string p1, "Check failed."

    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final decodeIntoByteArray(Ljava/lang/CharSequence;[BIII)I
    .registers 14

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    instance-of v0, p1, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_22

    .line 10
    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0, v0, p4, p5}, Lkotlin/io/encoding/Base64;->checkSourceBounds$kotlin_stdlib(III)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p4, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget-object p4, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 25
    .line 26
    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    :goto_20
    move-object v1, p1

    .line 34
    goto :goto_27

    .line 35
    :cond_22
    invoke-virtual {p0, p1, p4, p5}, Lkotlin/io/encoding/Base64;->charsToBytesImpl$kotlin_stdlib(Ljava/lang/CharSequence;II)[B

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_20

    .line 40
    :goto_27
    const/16 v6, 0x18

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v4, 0x0

    .line 44
    const/4 v5, 0x0

    .line 45
    move-object v0, p0

    .line 46
    move-object v2, p2

    .line 47
    move v3, p3

    .line 48
    invoke-static/range {v0 .. v7}, Lkotlin/io/encoding/Base64;->decodeIntoByteArray$default(Lkotlin/io/encoding/Base64;[B[BIIIILjava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    return p1
.end method

.method public final decodeIntoByteArray([B[BIII)I
    .registers 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    array-length v0, p1

    invoke-virtual {p0, v0, p4, p5}, Lkotlin/io/encoding/Base64;->checkSourceBounds$kotlin_stdlib(III)V

    .line 54
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p5}, Lkotlin/io/encoding/Base64;->decodeSize$kotlin_stdlib([BII)I

    move-result v1

    invoke-direct {p0, v0, p3, v1}, Lkotlin/io/encoding/Base64;->checkDestinationBounds(III)V

    .line 55
    invoke-direct/range {p0 .. p5}, Lkotlin/io/encoding/Base64;->decodeImpl([B[BIII)I

    move-result p1

    return p1
.end method

.method public final decodeSize$kotlin_stdlib([BII)I
    .registers 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sub-int v0, p3, p2

    .line 5
    .line 6
    if-nez v0, :cond_9

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return p1

    .line 10
    :cond_9
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_47

    .line 12
    .line 13
    iget-boolean v1, p0, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    .line 14
    .line 15
    if-eqz v1, :cond_29

    .line 16
    .line 17
    :goto_10
    if-ge p2, p3, :cond_3d

    .line 18
    .line 19
    aget-byte v1, p1, p2

    .line 20
    .line 21
    and-int/lit16 v1, v1, 0xff

    .line 22
    .line 23
    # getter for: Lkotlin/io/encoding/Base64Kt;->base64DecodeMap:[I
    invoke-static {}, Lkotlin/io/encoding/Base64Kt;->access$getBase64DecodeMap$p()[I

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    aget v1, v2, v1

    .line 28
    .line 29
    if-gez v1, :cond_26

    .line 30
    .line 31
    const/4 v2, -0x2

    .line 32
    if-ne v1, v2, :cond_24

    .line 33
    .line 34
    sub-int/2addr p3, p2

    .line 35
    sub-int/2addr v0, p3

    .line 36
    goto :goto_3d

    .line 37
    :cond_24
    add-int/lit8 v0, v0, -0x1

    .line 38
    .line 39
    :cond_26
    add-int/lit8 p2, p2, 0x1

    .line 40
    .line 41
    goto :goto_10

    .line 42
    :cond_29
    add-int/lit8 p2, p3, -0x1

    .line 43
    .line 44
    aget-byte p2, p1, p2

    .line 45
    .line 46
    const/16 v1, 0x3d

    .line 47
    .line 48
    if-ne p2, v1, :cond_3d

    .line 49
    .line 50
    add-int/lit8 p2, v0, -0x1

    .line 51
    .line 52
    add-int/lit8 p3, p3, -0x2

    .line 53
    .line 54
    aget-byte p1, p1, p3

    .line 55
    .line 56
    if-ne p1, v1, :cond_3c

    .line 57
    .line 58
    add-int/lit8 v0, v0, -0x2

    .line 59
    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    move v0, p2

    .line 62
    :cond_3d
    :goto_3d
    int-to-long p1, v0

    .line 63
    const/4 p3, 0x6

    .line 64
    int-to-long v0, p3

    .line 65
    mul-long/2addr p1, v0

    .line 66
    const/16 p3, 0x8

    .line 67
    .line 68
    int-to-long v0, p3

    .line 69
    div-long/2addr p1, v0

    .line 70
    long-to-int p1, p1

    .line 71
    return p1

    .line 72
    :cond_47
    const-string p1, "Input should have at least 2 symbols for Base64 decoding, startIndex: "

    .line 73
    .line 74
    const-string v0, ", endIndex: "

    .line 75
    .line 76
    invoke-static {p2, p1, v0, p3}, Lai/onnxruntime/a;->g(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    return p1
.end method

.method public final encode([BII)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->encodeToByteArrayImpl$kotlin_stdlib([BII)[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance p2, Ljava/lang/String;

    .line 9
    .line 10
    sget-object p3, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 13
    .line 14
    .line 15
    return-object p2
.end method

.method public final encodeIntoByteArray([B[BIII)I
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p0 .. p5}, Lkotlin/io/encoding/Base64;->encodeIntoByteArrayImpl$kotlin_stdlib([B[BIII)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final encodeIntoByteArrayImpl$kotlin_stdlib([B[BIII)I
    .registers 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    move/from16 v5, p5

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    array-length v6, v1

    .line 20
    invoke-virtual {v0, v6, v4, v5}, Lkotlin/io/encoding/Base64;->checkSourceBounds$kotlin_stdlib(III)V

    .line 21
    .line 22
    .line 23
    array-length v6, v2

    .line 24
    sub-int v7, v5, v4

    .line 25
    .line 26
    invoke-virtual {v0, v7}, Lkotlin/io/encoding/Base64;->encodeSize$kotlin_stdlib(I)I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    invoke-direct {v0, v6, v3, v7}, Lkotlin/io/encoding/Base64;->checkDestinationBounds(III)V

    .line 31
    .line 32
    .line 33
    iget-boolean v6, v0, Lkotlin/io/encoding/Base64;->isUrlSafe:Z

    .line 34
    .line 35
    if-eqz v6, :cond_29

    .line 36
    .line 37
    # getter for: Lkotlin/io/encoding/Base64Kt;->base64UrlEncodeMap:[B
    invoke-static {}, Lkotlin/io/encoding/Base64Kt;->access$getBase64UrlEncodeMap$p()[B

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    goto :goto_2d

    .line 42
    :cond_29
    # getter for: Lkotlin/io/encoding/Base64Kt;->base64EncodeMap:[B
    invoke-static {}, Lkotlin/io/encoding/Base64Kt;->access$getBase64EncodeMap$p()[B

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    :goto_2d
    iget-boolean v7, v0, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    .line 47
    .line 48
    if-eqz v7, :cond_34

    .line 49
    .line 50
    iget v7, v0, Lkotlin/io/encoding/Base64;->mimeGroupsPerLine:I

    .line 51
    .line 52
    goto :goto_37

    .line 53
    :cond_34
    const v7, 0x7fffffff

    .line 54
    .line 55
    .line 56
    :goto_37
    move v8, v3

    .line 57
    :cond_38
    :goto_38
    add-int/lit8 v9, v4, 0x2

    .line 58
    .line 59
    const/4 v10, 0x1

    .line 60
    if-ge v9, v5, :cond_9b

    .line 61
    .line 62
    sub-int v9, v5, v4

    .line 63
    .line 64
    div-int/lit8 v9, v9, 0x3

    .line 65
    .line 66
    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    const/4 v11, 0x0

    .line 71
    move v12, v11

    .line 72
    :goto_47
    if-ge v12, v9, :cond_88

    .line 73
    .line 74
    add-int/lit8 v13, v4, 0x1

    .line 75
    .line 76
    aget-byte v14, v1, v4

    .line 77
    .line 78
    and-int/lit16 v14, v14, 0xff

    .line 79
    .line 80
    add-int/lit8 v15, v4, 0x2

    .line 81
    .line 82
    aget-byte v13, v1, v13

    .line 83
    .line 84
    and-int/lit16 v13, v13, 0xff

    .line 85
    .line 86
    add-int/lit8 v4, v4, 0x3

    .line 87
    .line 88
    aget-byte v15, v1, v15

    .line 89
    .line 90
    and-int/lit16 v15, v15, 0xff

    .line 91
    .line 92
    shl-int/lit8 v14, v14, 0x10

    .line 93
    .line 94
    shl-int/lit8 v13, v13, 0x8

    .line 95
    .line 96
    or-int/2addr v13, v14

    .line 97
    or-int/2addr v13, v15

    .line 98
    add-int/lit8 v14, v8, 0x1

    .line 99
    .line 100
    ushr-int/lit8 v15, v13, 0x12

    .line 101
    .line 102
    aget-byte v15, v6, v15

    .line 103
    .line 104
    aput-byte v15, v2, v8

    .line 105
    .line 106
    add-int/lit8 v15, v8, 0x2

    .line 107
    .line 108
    ushr-int/lit8 v16, v13, 0xc

    .line 109
    .line 110
    and-int/lit8 v16, v16, 0x3f

    .line 111
    .line 112
    aget-byte v16, v6, v16

    .line 113
    .line 114
    aput-byte v16, v2, v14

    .line 115
    .line 116
    add-int/lit8 v14, v8, 0x3

    .line 117
    .line 118
    ushr-int/lit8 v16, v13, 0x6

    .line 119
    .line 120
    and-int/lit8 v16, v16, 0x3f

    .line 121
    .line 122
    aget-byte v16, v6, v16

    .line 123
    .line 124
    aput-byte v16, v2, v15

    .line 125
    .line 126
    add-int/lit8 v8, v8, 0x4

    .line 127
    .line 128
    and-int/lit8 v13, v13, 0x3f

    .line 129
    .line 130
    aget-byte v13, v6, v13

    .line 131
    .line 132
    aput-byte v13, v2, v14

    .line 133
    .line 134
    add-int/lit8 v12, v12, 0x1

    .line 135
    .line 136
    goto :goto_47

    .line 137
    :cond_88
    if-ne v9, v7, :cond_38

    .line 138
    .line 139
    if-eq v4, v5, :cond_38

    .line 140
    .line 141
    add-int/lit8 v9, v8, 0x1

    .line 142
    .line 143
    sget-object v12, Lkotlin/io/encoding/Base64;->mimeLineSeparatorSymbols:[B

    .line 144
    .line 145
    aget-byte v11, v12, v11

    .line 146
    .line 147
    aput-byte v11, v2, v8

    .line 148
    .line 149
    add-int/lit8 v8, v8, 0x2

    .line 150
    .line 151
    aget-byte v10, v12, v10

    .line 152
    .line 153
    aput-byte v10, v2, v9

    .line 154
    .line 155
    goto :goto_38

    .line 156
    :cond_9b
    sub-int v7, v5, v4

    .line 157
    .line 158
    const/16 v9, 0x3d

    .line 159
    .line 160
    if-eq v7, v10, :cond_dc

    .line 161
    .line 162
    const/4 v10, 0x2

    .line 163
    if-eq v7, v10, :cond_a5

    .line 164
    .line 165
    goto :goto_106

    .line 166
    :cond_a5
    add-int/lit8 v7, v4, 0x1

    .line 167
    .line 168
    aget-byte v11, v1, v4

    .line 169
    .line 170
    and-int/lit16 v11, v11, 0xff

    .line 171
    .line 172
    add-int/lit8 v4, v4, 0x2

    .line 173
    .line 174
    aget-byte v1, v1, v7

    .line 175
    .line 176
    and-int/lit16 v1, v1, 0xff

    .line 177
    .line 178
    shl-int/lit8 v7, v11, 0xa

    .line 179
    .line 180
    shl-int/2addr v1, v10

    .line 181
    or-int/2addr v1, v7

    .line 182
    add-int/lit8 v7, v8, 0x1

    .line 183
    .line 184
    ushr-int/lit8 v10, v1, 0xc

    .line 185
    .line 186
    aget-byte v10, v6, v10

    .line 187
    .line 188
    aput-byte v10, v2, v8

    .line 189
    .line 190
    add-int/lit8 v10, v8, 0x2

    .line 191
    .line 192
    ushr-int/lit8 v11, v1, 0x6

    .line 193
    .line 194
    and-int/lit8 v11, v11, 0x3f

    .line 195
    .line 196
    aget-byte v11, v6, v11

    .line 197
    .line 198
    aput-byte v11, v2, v7

    .line 199
    .line 200
    add-int/lit8 v7, v8, 0x3

    .line 201
    .line 202
    and-int/lit8 v1, v1, 0x3f

    .line 203
    .line 204
    aget-byte v1, v6, v1

    .line 205
    .line 206
    aput-byte v1, v2, v10

    .line 207
    .line 208
    invoke-direct {v0}, Lkotlin/io/encoding/Base64;->shouldPadOnEncode()Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-eqz v1, :cond_da

    .line 213
    .line 214
    add-int/lit8 v8, v8, 0x4

    .line 215
    .line 216
    aput-byte v9, v2, v7

    .line 217
    .line 218
    goto :goto_106

    .line 219
    :cond_da
    move v8, v7

    .line 220
    goto :goto_106

    .line 221
    :cond_dc
    add-int/lit8 v7, v4, 0x1

    .line 222
    .line 223
    aget-byte v1, v1, v4

    .line 224
    .line 225
    and-int/lit16 v1, v1, 0xff

    .line 226
    .line 227
    shl-int/lit8 v1, v1, 0x4

    .line 228
    .line 229
    add-int/lit8 v4, v8, 0x1

    .line 230
    .line 231
    ushr-int/lit8 v10, v1, 0x6

    .line 232
    .line 233
    aget-byte v10, v6, v10

    .line 234
    .line 235
    aput-byte v10, v2, v8

    .line 236
    .line 237
    add-int/lit8 v10, v8, 0x2

    .line 238
    .line 239
    and-int/lit8 v1, v1, 0x3f

    .line 240
    .line 241
    aget-byte v1, v6, v1

    .line 242
    .line 243
    aput-byte v1, v2, v4

    .line 244
    .line 245
    invoke-direct {v0}, Lkotlin/io/encoding/Base64;->shouldPadOnEncode()Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-eqz v1, :cond_104

    .line 250
    .line 251
    add-int/lit8 v1, v8, 0x3

    .line 252
    .line 253
    aput-byte v9, v2, v10

    .line 254
    .line 255
    add-int/lit8 v8, v8, 0x4

    .line 256
    .line 257
    aput-byte v9, v2, v1

    .line 258
    .line 259
    move v4, v7

    .line 260
    goto :goto_106

    .line 261
    :cond_104
    move v4, v7

    .line 262
    move v8, v10

    .line 263
    :goto_106
    if-ne v4, v5, :cond_10a

    .line 264
    .line 265
    sub-int/2addr v8, v3

    .line 266
    return v8

    .line 267
    :cond_10a
    const-string v1, "Check failed."

    .line 268
    .line 269
    invoke-static {v1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    const/4 v1, 0x0

    .line 273
    return v1
.end method

.method public final encodeSize$kotlin_stdlib(I)I
    .registers 5

    .line 1
    div-int/lit8 v0, p1, 0x3

    .line 2
    .line 3
    rem-int/lit8 p1, p1, 0x3

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    mul-int/2addr v0, v1

    .line 7
    if-eqz p1, :cond_12

    .line 8
    .line 9
    invoke-direct {p0}, Lkotlin/io/encoding/Base64;->shouldPadOnEncode()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_f

    .line 14
    .line 15
    goto :goto_11

    .line 16
    :cond_f
    add-int/lit8 v1, p1, 0x1

    .line 17
    .line 18
    :goto_11
    add-int/2addr v0, v1

    .line 19
    :cond_12
    const-string p1, "Input is too big"

    .line 20
    .line 21
    if-ltz v0, :cond_2a

    .line 22
    .line 23
    iget-boolean v1, p0, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    .line 24
    .line 25
    if-eqz v1, :cond_22

    .line 26
    .line 27
    add-int/lit8 v1, v0, -0x1

    .line 28
    .line 29
    iget v2, p0, Lkotlin/io/encoding/Base64;->mimeLineLength:I

    .line 30
    .line 31
    div-int/2addr v1, v2

    .line 32
    mul-int/lit8 v1, v1, 0x2

    .line 33
    .line 34
    add-int/2addr v0, v1

    .line 35
    :cond_22
    if-ltz v0, :cond_25

    .line 36
    .line 37
    return v0

    .line 38
    :cond_25
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_28
    const/4 p1, 0x0

    .line 42
    return p1

    .line 43
    :cond_2a
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_28
.end method

.method public final encodeToAppendable([BLjava/lang/Appendable;II)Ljava/lang/Appendable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">([BTA;II)TA;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p3, p4}, Lkotlin/io/encoding/Base64;->encodeToByteArrayImpl$kotlin_stdlib([BII)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance p3, Ljava/lang/String;

    .line 12
    .line 13
    sget-object p4, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-direct {p3, p1, p4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 19
    .line 20
    .line 21
    return-object p2
.end method

.method public final encodeToByteArray([BII)[B
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->encodeToByteArrayImpl$kotlin_stdlib([BII)[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public final encodeToByteArrayImpl$kotlin_stdlib([BII)[B
    .registers 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    invoke-virtual {p0, v0, p2, p3}, Lkotlin/io/encoding/Base64;->checkSourceBounds$kotlin_stdlib(III)V

    .line 6
    .line 7
    .line 8
    sub-int v0, p3, p2

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lkotlin/io/encoding/Base64;->encodeSize$kotlin_stdlib(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    new-array v3, v0, [B

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    move-object v1, p0

    .line 18
    move-object v2, p1

    .line 19
    move v5, p2

    .line 20
    move v6, p3

    .line 21
    invoke-virtual/range {v1 .. v6}, Lkotlin/io/encoding/Base64;->encodeIntoByteArrayImpl$kotlin_stdlib([B[BIII)I

    .line 22
    .line 23
    .line 24
    return-object v3
.end method

.method public final getMimeLineLength$kotlin_stdlib()I
    .registers 2

    .line 1
    iget v0, p0, Lkotlin/io/encoding/Base64;->mimeLineLength:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPaddingOption$kotlin_stdlib()Lkotlin/io/encoding/Base64$PaddingOption;
    .registers 2

    .line 1
    iget-object v0, p0, Lkotlin/io/encoding/Base64;->paddingOption:Lkotlin/io/encoding/Base64$PaddingOption;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isMimeScheme$kotlin_stdlib()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isUrlSafe$kotlin_stdlib()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lkotlin/io/encoding/Base64;->isUrlSafe:Z

    .line 2
    .line 3
    return v0
.end method

.method public final withPadding(Lkotlin/io/encoding/Base64$PaddingOption;)Lkotlin/io/encoding/Base64;
    .registers 6
    .annotation build Lkotlin/SinceKotlin;
        version = "2.0"
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lkotlin/io/encoding/Base64;->paddingOption:Lkotlin/io/encoding/Base64$PaddingOption;

    .line 5
    .line 6
    if-ne v0, p1, :cond_8

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_8
    new-instance v0, Lkotlin/io/encoding/Base64;

    .line 10
    .line 11
    iget-boolean v1, p0, Lkotlin/io/encoding/Base64;->isUrlSafe:Z

    .line 12
    .line 13
    iget-boolean v2, p0, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    .line 14
    .line 15
    iget v3, p0, Lkotlin/io/encoding/Base64;->mimeLineLength:I

    .line 16
    .line 17
    invoke-direct {v0, v1, v2, v3, p1}, Lkotlin/io/encoding/Base64;-><init>(ZZILkotlin/io/encoding/Base64$PaddingOption;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method
