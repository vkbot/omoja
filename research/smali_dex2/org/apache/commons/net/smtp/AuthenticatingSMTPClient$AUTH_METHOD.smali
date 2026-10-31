.class public final enum Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;
.super Ljava/lang/Enum;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AUTH_METHOD"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

.field public static final enum CRAM_MD5:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

.field public static final enum LOGIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

.field public static final enum PLAIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

.field public static final enum XOAUTH:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

.field public static final enum XOAUTH2:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;


# direct methods
.method private static synthetic $values()[Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;
    .registers 5

    .line 1
    sget-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->PLAIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->CRAM_MD5:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 4
    .line 5
    sget-object v2, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->LOGIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 6
    .line 7
    sget-object v3, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->XOAUTH:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 8
    .line 9
    sget-object v4, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->XOAUTH2:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 2
    .line 3
    const-string v1, "PLAIN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->PLAIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 10
    .line 11
    new-instance v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 12
    .line 13
    const-string v1, "CRAM_MD5"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->CRAM_MD5:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 20
    .line 21
    new-instance v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 22
    .line 23
    const-string v1, "LOGIN"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->LOGIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 30
    .line 31
    new-instance v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 32
    .line 33
    const-string v1, "XOAUTH"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->XOAUTH:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 40
    .line 41
    new-instance v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 42
    .line 43
    const-string v1, "XOAUTH2"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->XOAUTH2:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 50
    .line 51
    invoke-static {}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->$values()[Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->$VALUES:[Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 56
    .line 57
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

.method public static getAuthName(Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->PLAIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_b

    .line 8
    .line 9
    const-string p0, "PLAIN"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_b
    sget-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->CRAM_MD5:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_16

    .line 19
    .line 20
    const-string p0, "CRAM-MD5"

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_16
    sget-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->LOGIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_21

    .line 30
    .line 31
    const-string p0, "LOGIN"

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_21
    sget-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->XOAUTH:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2c

    .line 41
    .line 42
    const-string p0, "XOAUTH"

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_2c
    sget-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->XOAUTH2:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_37

    .line 52
    .line 53
    const-string p0, "XOAUTH2"

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_37
    const/4 p0, 0x0

    .line 57
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;
    .registers 2

    .line 1
    const-class v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;
    .registers 1

    .line 1
    sget-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->$VALUES:[Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 8
    .line 9
    return-object v0
.end method
