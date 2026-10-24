.class public final enum Lorg/apache/ftpserver/ftplet/FtpletResult;
.super Ljava/lang/Enum;
.source "FtpletResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/ftpserver/ftplet/FtpletResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ftpserver/ftplet/FtpletResult;

.field public static final enum DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

.field public static final enum DISCONNECT:Lorg/apache/ftpserver/ftplet/FtpletResult;

.field public static final enum NO_FTPLET:Lorg/apache/ftpserver/ftplet/FtpletResult;

.field public static final enum SKIP:Lorg/apache/ftpserver/ftplet/FtpletResult;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 35
    new-instance v0, Lorg/apache/ftpserver/ftplet/FtpletResult;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/ftpserver/ftplet/FtpletResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ftpserver/ftplet/FtpletResult;->DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    .line 41
    new-instance v0, Lorg/apache/ftpserver/ftplet/FtpletResult;

    const-string v1, "NO_FTPLET"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/ftpserver/ftplet/FtpletResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ftpserver/ftplet/FtpletResult;->NO_FTPLET:Lorg/apache/ftpserver/ftplet/FtpletResult;

    .line 47
    new-instance v0, Lorg/apache/ftpserver/ftplet/FtpletResult;

    const-string v1, "SKIP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/ftpserver/ftplet/FtpletResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ftpserver/ftplet/FtpletResult;->SKIP:Lorg/apache/ftpserver/ftplet/FtpletResult;

    .line 53
    new-instance v0, Lorg/apache/ftpserver/ftplet/FtpletResult;

    const-string v1, "DISCONNECT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/apache/ftpserver/ftplet/FtpletResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ftpserver/ftplet/FtpletResult;->DISCONNECT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    .line 29
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/ftpserver/ftplet/FtpletResult;

    sget-object v6, Lorg/apache/ftpserver/ftplet/FtpletResult;->DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    aput-object v6, v1, v2

    sget-object v2, Lorg/apache/ftpserver/ftplet/FtpletResult;->NO_FTPLET:Lorg/apache/ftpserver/ftplet/FtpletResult;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/ftpserver/ftplet/FtpletResult;->SKIP:Lorg/apache/ftpserver/ftplet/FtpletResult;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lorg/apache/ftpserver/ftplet/FtpletResult;->$VALUES:[Lorg/apache/ftpserver/ftplet/FtpletResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 29
    const-class v0, Lorg/apache/ftpserver/ftplet/FtpletResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/ftplet/FtpletResult;

    return-object v0
.end method

.method public static values()[Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 1

    .line 29
    sget-object v0, Lorg/apache/ftpserver/ftplet/FtpletResult;->$VALUES:[Lorg/apache/ftpserver/ftplet/FtpletResult;

    invoke-virtual {v0}, [Lorg/apache/ftpserver/ftplet/FtpletResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ftpserver/ftplet/FtpletResult;

    return-object v0
.end method
