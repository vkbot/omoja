.class public final enum Lai/onnxruntime/OrtLoggingLevel;
.super Ljava/lang/Enum;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/OrtLoggingLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/OrtLoggingLevel;

.field public static final enum ORT_LOGGING_LEVEL_ERROR:Lai/onnxruntime/OrtLoggingLevel;

.field public static final enum ORT_LOGGING_LEVEL_FATAL:Lai/onnxruntime/OrtLoggingLevel;

.field public static final enum ORT_LOGGING_LEVEL_INFO:Lai/onnxruntime/OrtLoggingLevel;

.field public static final enum ORT_LOGGING_LEVEL_VERBOSE:Lai/onnxruntime/OrtLoggingLevel;

.field public static final enum ORT_LOGGING_LEVEL_WARNING:Lai/onnxruntime/OrtLoggingLevel;

.field private static final logger:Ljava/util/logging/Logger;

.field private static final values:[Lai/onnxruntime/OrtLoggingLevel;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lai/onnxruntime/OrtLoggingLevel;
    .locals 5

    .line 1
    sget-object v0, Lai/onnxruntime/OrtLoggingLevel;->ORT_LOGGING_LEVEL_VERBOSE:Lai/onnxruntime/OrtLoggingLevel;

    .line 2
    .line 3
    sget-object v1, Lai/onnxruntime/OrtLoggingLevel;->ORT_LOGGING_LEVEL_INFO:Lai/onnxruntime/OrtLoggingLevel;

    .line 4
    .line 5
    sget-object v2, Lai/onnxruntime/OrtLoggingLevel;->ORT_LOGGING_LEVEL_WARNING:Lai/onnxruntime/OrtLoggingLevel;

    .line 6
    .line 7
    sget-object v3, Lai/onnxruntime/OrtLoggingLevel;->ORT_LOGGING_LEVEL_ERROR:Lai/onnxruntime/OrtLoggingLevel;

    .line 8
    .line 9
    sget-object v4, Lai/onnxruntime/OrtLoggingLevel;->ORT_LOGGING_LEVEL_FATAL:Lai/onnxruntime/OrtLoggingLevel;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Lai/onnxruntime/OrtLoggingLevel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lai/onnxruntime/OrtLoggingLevel;

    .line 2
    .line 3
    const-string v1, "ORT_LOGGING_LEVEL_VERBOSE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/OrtLoggingLevel;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lai/onnxruntime/OrtLoggingLevel;->ORT_LOGGING_LEVEL_VERBOSE:Lai/onnxruntime/OrtLoggingLevel;

    .line 10
    .line 11
    new-instance v0, Lai/onnxruntime/OrtLoggingLevel;

    .line 12
    .line 13
    const-string v1, "ORT_LOGGING_LEVEL_INFO"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v0, v1, v3, v3}, Lai/onnxruntime/OrtLoggingLevel;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lai/onnxruntime/OrtLoggingLevel;->ORT_LOGGING_LEVEL_INFO:Lai/onnxruntime/OrtLoggingLevel;

    .line 20
    .line 21
    new-instance v0, Lai/onnxruntime/OrtLoggingLevel;

    .line 22
    .line 23
    const-string v1, "ORT_LOGGING_LEVEL_WARNING"

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    invoke-direct {v0, v1, v3, v3}, Lai/onnxruntime/OrtLoggingLevel;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lai/onnxruntime/OrtLoggingLevel;->ORT_LOGGING_LEVEL_WARNING:Lai/onnxruntime/OrtLoggingLevel;

    .line 30
    .line 31
    new-instance v0, Lai/onnxruntime/OrtLoggingLevel;

    .line 32
    .line 33
    const-string v1, "ORT_LOGGING_LEVEL_ERROR"

    .line 34
    .line 35
    const/4 v3, 0x3

    .line 36
    invoke-direct {v0, v1, v3, v3}, Lai/onnxruntime/OrtLoggingLevel;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lai/onnxruntime/OrtLoggingLevel;->ORT_LOGGING_LEVEL_ERROR:Lai/onnxruntime/OrtLoggingLevel;

    .line 40
    .line 41
    new-instance v0, Lai/onnxruntime/OrtLoggingLevel;

    .line 42
    .line 43
    const-string v1, "ORT_LOGGING_LEVEL_FATAL"

    .line 44
    .line 45
    const/4 v3, 0x4

    .line 46
    invoke-direct {v0, v1, v3, v3}, Lai/onnxruntime/OrtLoggingLevel;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lai/onnxruntime/OrtLoggingLevel;->ORT_LOGGING_LEVEL_FATAL:Lai/onnxruntime/OrtLoggingLevel;

    .line 50
    .line 51
    invoke-static {}, Lai/onnxruntime/OrtLoggingLevel;->$values()[Lai/onnxruntime/OrtLoggingLevel;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lai/onnxruntime/OrtLoggingLevel;->$VALUES:[Lai/onnxruntime/OrtLoggingLevel;

    .line 56
    .line 57
    const-class v0, Lai/onnxruntime/OrtLoggingLevel;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sput-object v0, Lai/onnxruntime/OrtLoggingLevel;->logger:Ljava/util/logging/Logger;

    .line 68
    .line 69
    const/4 v0, 0x5

    .line 70
    new-array v0, v0, [Lai/onnxruntime/OrtLoggingLevel;

    .line 71
    .line 72
    sput-object v0, Lai/onnxruntime/OrtLoggingLevel;->values:[Lai/onnxruntime/OrtLoggingLevel;

    .line 73
    .line 74
    invoke-static {}, Lai/onnxruntime/OrtLoggingLevel;->values()[Lai/onnxruntime/OrtLoggingLevel;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    array-length v1, v0

    .line 79
    :goto_0
    if-ge v2, v1, :cond_0

    .line 80
    .line 81
    aget-object v3, v0, v2

    .line 82
    .line 83
    sget-object v4, Lai/onnxruntime/OrtLoggingLevel;->values:[Lai/onnxruntime/OrtLoggingLevel;

    .line 84
    .line 85
    iget v5, v3, Lai/onnxruntime/OrtLoggingLevel;->value:I

    .line 86
    .line 87
    aput-object v3, v4, v5

    .line 88
    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lai/onnxruntime/OrtLoggingLevel;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static mapFromInt(I)Lai/onnxruntime/OrtLoggingLevel;
    .locals 3

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lai/onnxruntime/OrtLoggingLevel;->values:[Lai/onnxruntime/OrtLoggingLevel;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-ge p0, v1, :cond_0

    .line 7
    .line 8
    aget-object p0, v0, p0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    sget-object v0, Lai/onnxruntime/OrtLoggingLevel;->logger:Ljava/util/logging/Logger;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "Unknown logging level "

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, " setting to ORT_LOGGING_LEVEL_VERBOSE"

    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lai/onnxruntime/OrtLoggingLevel;->ORT_LOGGING_LEVEL_VERBOSE:Lai/onnxruntime/OrtLoggingLevel;

    .line 36
    .line 37
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/OrtLoggingLevel;
    .locals 1

    .line 1
    const-class v0, Lai/onnxruntime/OrtLoggingLevel;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lai/onnxruntime/OrtLoggingLevel;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lai/onnxruntime/OrtLoggingLevel;
    .locals 1

    .line 1
    sget-object v0, Lai/onnxruntime/OrtLoggingLevel;->$VALUES:[Lai/onnxruntime/OrtLoggingLevel;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lai/onnxruntime/OrtLoggingLevel;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lai/onnxruntime/OrtLoggingLevel;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lai/onnxruntime/OrtLoggingLevel;->value:I

    .line 2
    .line 3
    return v0
.end method
