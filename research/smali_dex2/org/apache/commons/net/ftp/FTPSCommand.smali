.class public final Lorg/apache/commons/net/ftp/FTPSCommand;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ADAT:I = 0x1

.field public static final AUTH:I = 0x0

.field public static final AUTHENTICATION_SECURITY_DATA:I = 0x1

.field public static final AUTHENTICATION_SECURITY_MECHANISM:I = 0x0

.field public static final CCC:I = 0x4

.field public static final CLEAR_COMMAND_CHANNEL:I = 0x4

.field public static final DATA_CHANNEL_PROTECTION_LEVEL:I = 0x3

.field public static final PBSZ:I = 0x2

.field public static final PROT:I = 0x3

.field public static final PROTECTION_BUFFER_SIZE:I = 0x2

.field private static final commands:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    const-string v0, "PROT"

    .line 2
    .line 3
    const-string v1, "CCC"

    .line 4
    .line 5
    const-string v2, "AUTH"

    .line 6
    .line 7
    const-string v3, "ADAT"

    .line 8
    .line 9
    const-string v4, "PBSZ"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lorg/apache/commons/net/ftp/FTPSCommand;->commands:[Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getCommand(I)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPSCommand;->commands:[Ljava/lang/String;

    .line 2
    .line 3
    aget-object p0, v0, p0

    .line 4
    .line 5
    return-object p0
.end method
