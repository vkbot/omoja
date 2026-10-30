.class public final enum Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;
.super Ljava/lang/Enum;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/pop3/ExtendedPOP3Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AUTH_METHOD"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

.field public static final enum CRAM_MD5:Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

.field public static final enum PLAIN:Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;


# instance fields
.field private final methodName:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->PLAIN:Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->CRAM_MD5:Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    .line 2
    .line 3
    const-string v1, "PLAIN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v1}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->PLAIN:Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    .line 10
    .line 11
    new-instance v0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const-string v2, "CRAM-MD5"

    .line 15
    .line 16
    const-string v3, "CRAM_MD5"

    .line 17
    .line 18
    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->CRAM_MD5:Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    .line 22
    .line 23
    invoke-static {}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->$values()[Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->$VALUES:[Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    .line 28
    .line 29
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->methodName:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->$VALUES:[Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getAuthName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->methodName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
