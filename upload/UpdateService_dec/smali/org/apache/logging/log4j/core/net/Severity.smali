.class public final enum Lorg/apache/logging/log4j/core/net/Severity;
.super Ljava/lang/Enum;
.source "Severity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/net/Severity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/net/Severity;

.field public static final enum ALERT:Lorg/apache/logging/log4j/core/net/Severity;

.field public static final enum CRITICAL:Lorg/apache/logging/log4j/core/net/Severity;

.field public static final enum DEBUG:Lorg/apache/logging/log4j/core/net/Severity;

.field public static final enum EMERG:Lorg/apache/logging/log4j/core/net/Severity;

.field public static final enum ERROR:Lorg/apache/logging/log4j/core/net/Severity;

.field public static final enum INFO:Lorg/apache/logging/log4j/core/net/Severity;

.field public static final enum NOTICE:Lorg/apache/logging/log4j/core/net/Severity;

.field public static final enum WARNING:Lorg/apache/logging/log4j/core/net/Severity;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 65
    new-instance v0, Lorg/apache/logging/log4j/core/net/Severity;

    const-string v1, "EMERG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/logging/log4j/core/net/Severity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Severity;->EMERG:Lorg/apache/logging/log4j/core/net/Severity;

    .line 67
    new-instance v0, Lorg/apache/logging/log4j/core/net/Severity;

    const-string v1, "ALERT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/apache/logging/log4j/core/net/Severity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Severity;->ALERT:Lorg/apache/logging/log4j/core/net/Severity;

    .line 69
    new-instance v0, Lorg/apache/logging/log4j/core/net/Severity;

    const-string v1, "CRITICAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lorg/apache/logging/log4j/core/net/Severity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Severity;->CRITICAL:Lorg/apache/logging/log4j/core/net/Severity;

    .line 71
    new-instance v0, Lorg/apache/logging/log4j/core/net/Severity;

    const-string v1, "ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lorg/apache/logging/log4j/core/net/Severity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Severity;->ERROR:Lorg/apache/logging/log4j/core/net/Severity;

    .line 73
    new-instance v0, Lorg/apache/logging/log4j/core/net/Severity;

    const-string v1, "WARNING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lorg/apache/logging/log4j/core/net/Severity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Severity;->WARNING:Lorg/apache/logging/log4j/core/net/Severity;

    .line 75
    new-instance v0, Lorg/apache/logging/log4j/core/net/Severity;

    const-string v1, "NOTICE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lorg/apache/logging/log4j/core/net/Severity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Severity;->NOTICE:Lorg/apache/logging/log4j/core/net/Severity;

    .line 77
    new-instance v0, Lorg/apache/logging/log4j/core/net/Severity;

    const-string v1, "INFO"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lorg/apache/logging/log4j/core/net/Severity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Severity;->INFO:Lorg/apache/logging/log4j/core/net/Severity;

    .line 79
    new-instance v0, Lorg/apache/logging/log4j/core/net/Severity;

    const-string v1, "DEBUG"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lorg/apache/logging/log4j/core/net/Severity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Severity;->DEBUG:Lorg/apache/logging/log4j/core/net/Severity;

    .line 63
    const/16 v1, 0x8

    new-array v1, v1, [Lorg/apache/logging/log4j/core/net/Severity;

    sget-object v10, Lorg/apache/logging/log4j/core/net/Severity;->EMERG:Lorg/apache/logging/log4j/core/net/Severity;

    aput-object v10, v1, v2

    sget-object v2, Lorg/apache/logging/log4j/core/net/Severity;->ALERT:Lorg/apache/logging/log4j/core/net/Severity;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/net/Severity;->CRITICAL:Lorg/apache/logging/log4j/core/net/Severity;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/core/net/Severity;->ERROR:Lorg/apache/logging/log4j/core/net/Severity;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/logging/log4j/core/net/Severity;->WARNING:Lorg/apache/logging/log4j/core/net/Severity;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/logging/log4j/core/net/Severity;->NOTICE:Lorg/apache/logging/log4j/core/net/Severity;

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/logging/log4j/core/net/Severity;->INFO:Lorg/apache/logging/log4j/core/net/Severity;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lorg/apache/logging/log4j/core/net/Severity;->$VALUES:[Lorg/apache/logging/log4j/core/net/Severity;

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

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    iput p3, p0, Lorg/apache/logging/log4j/core/net/Severity;->code:I

    .line 85
    return-void
.end method

.method public static getSeverity(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/net/Severity;
    .locals 2
    .param p0, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    .line 110
    sget-object v0, Lorg/apache/logging/log4j/core/net/Severity$1;->$SwitchMap$org$apache$logging$log4j$spi$StandardLevel:[I

    invoke-virtual {p0}, Lorg/apache/logging/log4j/Level;->getStandardLevel()Lorg/apache/logging/log4j/spi/StandardLevel;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/StandardLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 128
    sget-object v0, Lorg/apache/logging/log4j/core/net/Severity;->DEBUG:Lorg/apache/logging/log4j/core/net/Severity;

    return-object v0

    .line 126
    :pswitch_0
    sget-object v0, Lorg/apache/logging/log4j/core/net/Severity;->EMERG:Lorg/apache/logging/log4j/core/net/Severity;

    return-object v0

    .line 124
    :pswitch_1
    sget-object v0, Lorg/apache/logging/log4j/core/net/Severity;->ALERT:Lorg/apache/logging/log4j/core/net/Severity;

    return-object v0

    .line 122
    :pswitch_2
    sget-object v0, Lorg/apache/logging/log4j/core/net/Severity;->ERROR:Lorg/apache/logging/log4j/core/net/Severity;

    return-object v0

    .line 120
    :pswitch_3
    sget-object v0, Lorg/apache/logging/log4j/core/net/Severity;->WARNING:Lorg/apache/logging/log4j/core/net/Severity;

    return-object v0

    .line 118
    :pswitch_4
    sget-object v0, Lorg/apache/logging/log4j/core/net/Severity;->INFO:Lorg/apache/logging/log4j/core/net/Severity;

    return-object v0

    .line 116
    :pswitch_5
    sget-object v0, Lorg/apache/logging/log4j/core/net/Severity;->DEBUG:Lorg/apache/logging/log4j/core/net/Severity;

    return-object v0

    .line 114
    :pswitch_6
    sget-object v0, Lorg/apache/logging/log4j/core/net/Severity;->DEBUG:Lorg/apache/logging/log4j/core/net/Severity;

    return-object v0

    .line 112
    :pswitch_7
    sget-object v0, Lorg/apache/logging/log4j/core/net/Severity;->DEBUG:Lorg/apache/logging/log4j/core/net/Severity;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/net/Severity;
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

    .line 63
    const-class v0, Lorg/apache/logging/log4j/core/net/Severity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/net/Severity;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/net/Severity;
    .locals 1

    .line 63
    sget-object v0, Lorg/apache/logging/log4j/core/net/Severity;->$VALUES:[Lorg/apache/logging/log4j/core/net/Severity;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/net/Severity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/net/Severity;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 92
    iget v0, p0, Lorg/apache/logging/log4j/core/net/Severity;->code:I

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

    .line 101
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/net/Severity;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
