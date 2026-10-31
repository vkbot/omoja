.class public final enum Lorg/apache/commons/net/imap/IMAP$IMAPState;
.super Ljava/lang/Enum;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/imap/IMAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IMAPState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/net/imap/IMAP$IMAPState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/net/imap/IMAP$IMAPState;

.field public static final enum AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

.field public static final enum DISCONNECTED_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

.field public static final enum LOGOUT_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

.field public static final enum NOT_AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;


# direct methods
.method private static synthetic $values()[Lorg/apache/commons/net/imap/IMAP$IMAPState;
    .registers 4

    .line 1
    sget-object v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;->DISCONNECTED_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/commons/net/imap/IMAP$IMAPState;->NOT_AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    .line 4
    .line 5
    sget-object v2, Lorg/apache/commons/net/imap/IMAP$IMAPState;->AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    .line 6
    .line 7
    sget-object v3, Lorg/apache/commons/net/imap/IMAP$IMAPState;->LOGOUT_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/commons/net/imap/IMAP$IMAPState;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;

    .line 2
    .line 3
    const-string v1, "DISCONNECTED_STATE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAP$IMAPState;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;->DISCONNECTED_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    .line 10
    .line 11
    new-instance v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;

    .line 12
    .line 13
    const-string v1, "NOT_AUTH_STATE"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAP$IMAPState;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;->NOT_AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    .line 20
    .line 21
    new-instance v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;

    .line 22
    .line 23
    const-string v1, "AUTH_STATE"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAP$IMAPState;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;->AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    .line 30
    .line 31
    new-instance v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;

    .line 32
    .line 33
    const-string v1, "LOGOUT_STATE"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAP$IMAPState;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;->LOGOUT_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    .line 40
    .line 41
    invoke-static {}, Lorg/apache/commons/net/imap/IMAP$IMAPState;->$values()[Lorg/apache/commons/net/imap/IMAP$IMAPState;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;->$VALUES:[Lorg/apache/commons/net/imap/IMAP$IMAPState;

    .line 46
    .line 47
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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/net/imap/IMAP$IMAPState;
    .registers 2

    .line 1
    const-class v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/apache/commons/net/imap/IMAP$IMAPState;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/apache/commons/net/imap/IMAP$IMAPState;
    .registers 1

    .line 1
    sget-object v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;->$VALUES:[Lorg/apache/commons/net/imap/IMAP$IMAPState;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/apache/commons/net/imap/IMAP$IMAPState;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/apache/commons/net/imap/IMAP$IMAPState;

    .line 8
    .line 9
    return-object v0
.end method
