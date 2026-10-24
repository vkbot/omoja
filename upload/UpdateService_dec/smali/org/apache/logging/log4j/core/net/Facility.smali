.class public final enum Lorg/apache/logging/log4j/core/net/Facility;
.super Ljava/lang/Enum;
.source "Facility.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/net/Facility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/net/Facility;

.field public static final enum AUTH:Lorg/apache/logging/log4j/core/net/Facility;

.field public static final enum AUTHPRIV:Lorg/apache/logging/log4j/core/net/Facility;

.field public static final enum CLOCK:Lorg/apache/logging/log4j/core/net/Facility;

.field public static final enum CRON:Lorg/apache/logging/log4j/core/net/Facility;

.field public static final enum DAEMON:Lorg/apache/logging/log4j/core/net/Facility;

.field public static final enum FTP:Lorg/apache/logging/log4j/core/net/Facility;

.field public static final enum KERN:Lorg/apache/logging/log4j/core/net/Facility;

.field public static final enum LOCAL0:Lorg/apache/logging/log4j/core/net/Facility;

.field public static final enum LOCAL1:Lorg/apache/logging/log4j/core/net/Facility;

.field public static final enum LOCAL2:Lorg/apache/logging/log4j/core/net/Facility;

.field public static final enum LOCAL3:Lorg/apache/logging/log4j/core/net/Facility;

.field public static final enum LOCAL4:Lorg/apache/logging/log4j/core/net/Facility;

.field public static final enum LOCAL5:Lorg/apache/logging/log4j/core/net/Facility;

.field public static final enum LOCAL6:Lorg/apache/logging/log4j/core/net/Facility;

.field public static final enum LOCAL7:Lorg/apache/logging/log4j/core/net/Facility;

.field public static final enum LOG_ALERT:Lorg/apache/logging/log4j/core/net/Facility;

.field public static final enum LOG_AUDIT:Lorg/apache/logging/log4j/core/net/Facility;

.field public static final enum LPR:Lorg/apache/logging/log4j/core/net/Facility;

.field public static final enum MAIL:Lorg/apache/logging/log4j/core/net/Facility;

.field public static final enum NEWS:Lorg/apache/logging/log4j/core/net/Facility;

.field public static final enum NTP:Lorg/apache/logging/log4j/core/net/Facility;

.field public static final enum SYSLOG:Lorg/apache/logging/log4j/core/net/Facility;

.field public static final enum USER:Lorg/apache/logging/log4j/core/net/Facility;

.field public static final enum UUCP:Lorg/apache/logging/log4j/core/net/Facility;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 130
    new-instance v0, Lorg/apache/logging/log4j/core/net/Facility;

    const-string v1, "KERN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/logging/log4j/core/net/Facility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Facility;->KERN:Lorg/apache/logging/log4j/core/net/Facility;

    .line 133
    new-instance v0, Lorg/apache/logging/log4j/core/net/Facility;

    const-string v1, "USER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/apache/logging/log4j/core/net/Facility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Facility;->USER:Lorg/apache/logging/log4j/core/net/Facility;

    .line 136
    new-instance v0, Lorg/apache/logging/log4j/core/net/Facility;

    const-string v1, "MAIL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lorg/apache/logging/log4j/core/net/Facility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Facility;->MAIL:Lorg/apache/logging/log4j/core/net/Facility;

    .line 139
    new-instance v0, Lorg/apache/logging/log4j/core/net/Facility;

    const-string v1, "DAEMON"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lorg/apache/logging/log4j/core/net/Facility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Facility;->DAEMON:Lorg/apache/logging/log4j/core/net/Facility;

    .line 142
    new-instance v0, Lorg/apache/logging/log4j/core/net/Facility;

    const-string v1, "AUTH"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lorg/apache/logging/log4j/core/net/Facility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Facility;->AUTH:Lorg/apache/logging/log4j/core/net/Facility;

    .line 145
    new-instance v0, Lorg/apache/logging/log4j/core/net/Facility;

    const-string v1, "SYSLOG"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lorg/apache/logging/log4j/core/net/Facility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Facility;->SYSLOG:Lorg/apache/logging/log4j/core/net/Facility;

    .line 148
    new-instance v0, Lorg/apache/logging/log4j/core/net/Facility;

    const-string v1, "LPR"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lorg/apache/logging/log4j/core/net/Facility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Facility;->LPR:Lorg/apache/logging/log4j/core/net/Facility;

    .line 151
    new-instance v0, Lorg/apache/logging/log4j/core/net/Facility;

    const-string v1, "NEWS"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lorg/apache/logging/log4j/core/net/Facility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Facility;->NEWS:Lorg/apache/logging/log4j/core/net/Facility;

    .line 154
    new-instance v0, Lorg/apache/logging/log4j/core/net/Facility;

    const-string v1, "UUCP"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lorg/apache/logging/log4j/core/net/Facility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Facility;->UUCP:Lorg/apache/logging/log4j/core/net/Facility;

    .line 157
    new-instance v0, Lorg/apache/logging/log4j/core/net/Facility;

    const-string v1, "CRON"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lorg/apache/logging/log4j/core/net/Facility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Facility;->CRON:Lorg/apache/logging/log4j/core/net/Facility;

    .line 160
    new-instance v0, Lorg/apache/logging/log4j/core/net/Facility;

    const-string v1, "AUTHPRIV"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lorg/apache/logging/log4j/core/net/Facility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Facility;->AUTHPRIV:Lorg/apache/logging/log4j/core/net/Facility;

    .line 163
    new-instance v0, Lorg/apache/logging/log4j/core/net/Facility;

    const-string v1, "FTP"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lorg/apache/logging/log4j/core/net/Facility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Facility;->FTP:Lorg/apache/logging/log4j/core/net/Facility;

    .line 166
    new-instance v0, Lorg/apache/logging/log4j/core/net/Facility;

    const-string v1, "NTP"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lorg/apache/logging/log4j/core/net/Facility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Facility;->NTP:Lorg/apache/logging/log4j/core/net/Facility;

    .line 169
    new-instance v0, Lorg/apache/logging/log4j/core/net/Facility;

    const-string v1, "LOG_AUDIT"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Lorg/apache/logging/log4j/core/net/Facility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Facility;->LOG_AUDIT:Lorg/apache/logging/log4j/core/net/Facility;

    .line 172
    new-instance v0, Lorg/apache/logging/log4j/core/net/Facility;

    const-string v1, "LOG_ALERT"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v15}, Lorg/apache/logging/log4j/core/net/Facility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Facility;->LOG_ALERT:Lorg/apache/logging/log4j/core/net/Facility;

    .line 175
    new-instance v0, Lorg/apache/logging/log4j/core/net/Facility;

    const-string v1, "CLOCK"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v15}, Lorg/apache/logging/log4j/core/net/Facility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Facility;->CLOCK:Lorg/apache/logging/log4j/core/net/Facility;

    .line 178
    new-instance v0, Lorg/apache/logging/log4j/core/net/Facility;

    const-string v1, "LOCAL0"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v15}, Lorg/apache/logging/log4j/core/net/Facility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Facility;->LOCAL0:Lorg/apache/logging/log4j/core/net/Facility;

    .line 181
    new-instance v0, Lorg/apache/logging/log4j/core/net/Facility;

    const-string v1, "LOCAL1"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v15}, Lorg/apache/logging/log4j/core/net/Facility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Facility;->LOCAL1:Lorg/apache/logging/log4j/core/net/Facility;

    .line 184
    new-instance v0, Lorg/apache/logging/log4j/core/net/Facility;

    const-string v1, "LOCAL2"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v15}, Lorg/apache/logging/log4j/core/net/Facility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Facility;->LOCAL2:Lorg/apache/logging/log4j/core/net/Facility;

    .line 187
    new-instance v0, Lorg/apache/logging/log4j/core/net/Facility;

    const-string v1, "LOCAL3"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v15}, Lorg/apache/logging/log4j/core/net/Facility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Facility;->LOCAL3:Lorg/apache/logging/log4j/core/net/Facility;

    .line 190
    new-instance v0, Lorg/apache/logging/log4j/core/net/Facility;

    const-string v1, "LOCAL4"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15, v15}, Lorg/apache/logging/log4j/core/net/Facility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Facility;->LOCAL4:Lorg/apache/logging/log4j/core/net/Facility;

    .line 193
    new-instance v0, Lorg/apache/logging/log4j/core/net/Facility;

    const-string v1, "LOCAL5"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15, v15}, Lorg/apache/logging/log4j/core/net/Facility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Facility;->LOCAL5:Lorg/apache/logging/log4j/core/net/Facility;

    .line 196
    new-instance v0, Lorg/apache/logging/log4j/core/net/Facility;

    const-string v1, "LOCAL6"

    const/16 v15, 0x16

    const/16 v14, 0x16

    invoke-direct {v0, v1, v15, v14}, Lorg/apache/logging/log4j/core/net/Facility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Facility;->LOCAL6:Lorg/apache/logging/log4j/core/net/Facility;

    .line 199
    new-instance v0, Lorg/apache/logging/log4j/core/net/Facility;

    const-string v1, "LOCAL7"

    const/16 v14, 0x17

    const/16 v15, 0x17

    invoke-direct {v0, v1, v14, v15}, Lorg/apache/logging/log4j/core/net/Facility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Facility;->LOCAL7:Lorg/apache/logging/log4j/core/net/Facility;

    .line 127
    const/16 v1, 0x18

    new-array v1, v1, [Lorg/apache/logging/log4j/core/net/Facility;

    sget-object v14, Lorg/apache/logging/log4j/core/net/Facility;->KERN:Lorg/apache/logging/log4j/core/net/Facility;

    aput-object v14, v1, v2

    sget-object v2, Lorg/apache/logging/log4j/core/net/Facility;->USER:Lorg/apache/logging/log4j/core/net/Facility;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/net/Facility;->MAIL:Lorg/apache/logging/log4j/core/net/Facility;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/core/net/Facility;->DAEMON:Lorg/apache/logging/log4j/core/net/Facility;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/logging/log4j/core/net/Facility;->AUTH:Lorg/apache/logging/log4j/core/net/Facility;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/logging/log4j/core/net/Facility;->SYSLOG:Lorg/apache/logging/log4j/core/net/Facility;

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/logging/log4j/core/net/Facility;->LPR:Lorg/apache/logging/log4j/core/net/Facility;

    aput-object v2, v1, v8

    sget-object v2, Lorg/apache/logging/log4j/core/net/Facility;->NEWS:Lorg/apache/logging/log4j/core/net/Facility;

    aput-object v2, v1, v9

    sget-object v2, Lorg/apache/logging/log4j/core/net/Facility;->UUCP:Lorg/apache/logging/log4j/core/net/Facility;

    aput-object v2, v1, v10

    sget-object v2, Lorg/apache/logging/log4j/core/net/Facility;->CRON:Lorg/apache/logging/log4j/core/net/Facility;

    aput-object v2, v1, v11

    sget-object v2, Lorg/apache/logging/log4j/core/net/Facility;->AUTHPRIV:Lorg/apache/logging/log4j/core/net/Facility;

    aput-object v2, v1, v12

    sget-object v2, Lorg/apache/logging/log4j/core/net/Facility;->FTP:Lorg/apache/logging/log4j/core/net/Facility;

    aput-object v2, v1, v13

    sget-object v2, Lorg/apache/logging/log4j/core/net/Facility;->NTP:Lorg/apache/logging/log4j/core/net/Facility;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/net/Facility;->LOG_AUDIT:Lorg/apache/logging/log4j/core/net/Facility;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/net/Facility;->LOG_ALERT:Lorg/apache/logging/log4j/core/net/Facility;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/net/Facility;->CLOCK:Lorg/apache/logging/log4j/core/net/Facility;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/net/Facility;->LOCAL0:Lorg/apache/logging/log4j/core/net/Facility;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/net/Facility;->LOCAL1:Lorg/apache/logging/log4j/core/net/Facility;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/net/Facility;->LOCAL2:Lorg/apache/logging/log4j/core/net/Facility;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/net/Facility;->LOCAL3:Lorg/apache/logging/log4j/core/net/Facility;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/net/Facility;->LOCAL4:Lorg/apache/logging/log4j/core/net/Facility;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/net/Facility;->LOCAL5:Lorg/apache/logging/log4j/core/net/Facility;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/net/Facility;->LOCAL6:Lorg/apache/logging/log4j/core/net/Facility;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const/16 v2, 0x17

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/logging/log4j/core/net/Facility;->$VALUES:[Lorg/apache/logging/log4j/core/net/Facility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "code"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 203
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 204
    iput p3, p0, Lorg/apache/logging/log4j/core/net/Facility;->code:I

    .line 205
    return-void
.end method

.method public static toFacility(Ljava/lang/String;)Lorg/apache/logging/log4j/core/net/Facility;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 214
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/logging/log4j/core/net/Facility;->toFacility(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/Facility;)Lorg/apache/logging/log4j/core/net/Facility;

    move-result-object v0

    return-object v0
.end method

.method public static toFacility(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/Facility;)Lorg/apache/logging/log4j/core/net/Facility;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultFacility"    # Lorg/apache/logging/log4j/core/net/Facility;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "defaultFacility"
        }
    .end annotation

    .line 225
    const-class v0, Lorg/apache/logging/log4j/core/net/Facility;

    invoke-static {v0, p0, p1}, Lorg/apache/logging/log4j/util/EnglishEnums;->valueOf(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/net/Facility;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/net/Facility;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 127
    const-class v0, Lorg/apache/logging/log4j/core/net/Facility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/net/Facility;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/net/Facility;
    .locals 1

    .line 127
    sget-object v0, Lorg/apache/logging/log4j/core/net/Facility;->$VALUES:[Lorg/apache/logging/log4j/core/net/Facility;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/net/Facility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/net/Facility;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 233
    iget v0, p0, Lorg/apache/logging/log4j/core/net/Facility;->code:I

    return v0
.end method

.method public isEqual(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 242
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/net/Facility;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
