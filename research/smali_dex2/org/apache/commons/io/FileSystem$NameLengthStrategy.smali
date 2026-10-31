.class abstract enum Lorg/apache/commons/io/FileSystem$NameLengthStrategy;
.super Ljava/lang/Enum;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/FileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "NameLengthStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/io/FileSystem$NameLengthStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/io/FileSystem$NameLengthStrategy;

.field public static final enum BYTES:Lorg/apache/commons/io/FileSystem$NameLengthStrategy;

.field public static final enum UTF16_CODE_UNITS:Lorg/apache/commons/io/FileSystem$NameLengthStrategy;


# direct methods
.method private static synthetic $values()[Lorg/apache/commons/io/FileSystem$NameLengthStrategy;
    .registers 2

    .line 1
    sget-object v0, Lorg/apache/commons/io/FileSystem$NameLengthStrategy;->BYTES:Lorg/apache/commons/io/FileSystem$NameLengthStrategy;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/commons/io/FileSystem$NameLengthStrategy;->UTF16_CODE_UNITS:Lorg/apache/commons/io/FileSystem$NameLengthStrategy;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lorg/apache/commons/io/FileSystem$NameLengthStrategy;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/commons/io/FileSystem$NameLengthStrategy$1;

    .line 2
    .line 3
    const-string v1, "BYTES"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/io/FileSystem$NameLengthStrategy$1;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/apache/commons/io/FileSystem$NameLengthStrategy;->BYTES:Lorg/apache/commons/io/FileSystem$NameLengthStrategy;

    .line 10
    .line 11
    new-instance v0, Lorg/apache/commons/io/FileSystem$NameLengthStrategy$2;

    .line 12
    .line 13
    const-string v1, "UTF16_CODE_UNITS"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/io/FileSystem$NameLengthStrategy$2;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lorg/apache/commons/io/FileSystem$NameLengthStrategy;->UTF16_CODE_UNITS:Lorg/apache/commons/io/FileSystem$NameLengthStrategy;

    .line 20
    .line 21
    invoke-static {}, Lorg/apache/commons/io/FileSystem$NameLengthStrategy;->$values()[Lorg/apache/commons/io/FileSystem$NameLengthStrategy;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lorg/apache/commons/io/FileSystem$NameLengthStrategy;->$VALUES:[Lorg/apache/commons/io/FileSystem$NameLengthStrategy;

    .line 26
    .line 27
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILorg/apache/commons/io/FileSystem$1;)V
    .registers 4

    .line 5
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/FileSystem$NameLengthStrategy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/io/FileSystem$NameLengthStrategy;
    .registers 2

    .line 1
    const-class v0, Lorg/apache/commons/io/FileSystem$NameLengthStrategy;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/apache/commons/io/FileSystem$NameLengthStrategy;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/apache/commons/io/FileSystem$NameLengthStrategy;
    .registers 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/FileSystem$NameLengthStrategy;->$VALUES:[Lorg/apache/commons/io/FileSystem$NameLengthStrategy;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/apache/commons/io/FileSystem$NameLengthStrategy;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/apache/commons/io/FileSystem$NameLengthStrategy;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public abstract getLength(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I
.end method

.method public final isWithinLimit(Ljava/lang/CharSequence;ILjava/nio/charset/Charset;)Z
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/io/FileSystem$NameLengthStrategy;->getLength(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-gt p1, p2, :cond_8

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_8
    const/4 p1, 0x0

    .line 10
    return p1
.end method

.method public abstract truncate(Ljava/lang/CharSequence;ILjava/nio/charset/Charset;)Ljava/lang/CharSequence;
.end method
