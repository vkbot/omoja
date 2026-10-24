.class public final enum Lorg/apache/mina/core/session/IoEventType;
.super Ljava/lang/Enum;
.source "IoEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/mina/core/session/IoEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/mina/core/session/IoEventType;

.field public static final enum CLOSE:Lorg/apache/mina/core/session/IoEventType;

.field public static final enum EVENT:Lorg/apache/mina/core/session/IoEventType;

.field public static final enum EXCEPTION_CAUGHT:Lorg/apache/mina/core/session/IoEventType;

.field public static final enum INPUT_CLOSED:Lorg/apache/mina/core/session/IoEventType;

.field public static final enum MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

.field public static final enum MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

.field public static final enum SESSION_CLOSED:Lorg/apache/mina/core/session/IoEventType;

.field public static final enum SESSION_CREATED:Lorg/apache/mina/core/session/IoEventType;

.field public static final enum SESSION_IDLE:Lorg/apache/mina/core/session/IoEventType;

.field public static final enum SESSION_OPENED:Lorg/apache/mina/core/session/IoEventType;

.field public static final enum WRITE:Lorg/apache/mina/core/session/IoEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 31
    new-instance v0, Lorg/apache/mina/core/session/IoEventType;

    const-string v1, "SESSION_CREATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/core/session/IoEventType;->SESSION_CREATED:Lorg/apache/mina/core/session/IoEventType;

    .line 34
    new-instance v0, Lorg/apache/mina/core/session/IoEventType;

    const-string v1, "SESSION_OPENED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/core/session/IoEventType;->SESSION_OPENED:Lorg/apache/mina/core/session/IoEventType;

    .line 37
    new-instance v0, Lorg/apache/mina/core/session/IoEventType;

    const-string v1, "SESSION_CLOSED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/core/session/IoEventType;->SESSION_CLOSED:Lorg/apache/mina/core/session/IoEventType;

    .line 40
    new-instance v0, Lorg/apache/mina/core/session/IoEventType;

    const-string v1, "MESSAGE_RECEIVED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    .line 43
    new-instance v0, Lorg/apache/mina/core/session/IoEventType;

    const-string v1, "MESSAGE_SENT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    .line 46
    new-instance v0, Lorg/apache/mina/core/session/IoEventType;

    const-string v1, "SESSION_IDLE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/core/session/IoEventType;->SESSION_IDLE:Lorg/apache/mina/core/session/IoEventType;

    .line 49
    new-instance v0, Lorg/apache/mina/core/session/IoEventType;

    const-string v1, "EXCEPTION_CAUGHT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/core/session/IoEventType;->EXCEPTION_CAUGHT:Lorg/apache/mina/core/session/IoEventType;

    .line 52
    new-instance v0, Lorg/apache/mina/core/session/IoEventType;

    const-string v1, "WRITE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/core/session/IoEventType;->WRITE:Lorg/apache/mina/core/session/IoEventType;

    .line 55
    new-instance v0, Lorg/apache/mina/core/session/IoEventType;

    const-string v1, "CLOSE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/core/session/IoEventType;->CLOSE:Lorg/apache/mina/core/session/IoEventType;

    .line 58
    new-instance v0, Lorg/apache/mina/core/session/IoEventType;

    const-string v1, "INPUT_CLOSED"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/core/session/IoEventType;->INPUT_CLOSED:Lorg/apache/mina/core/session/IoEventType;

    .line 61
    new-instance v0, Lorg/apache/mina/core/session/IoEventType;

    const-string v1, "EVENT"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/core/session/IoEventType;->EVENT:Lorg/apache/mina/core/session/IoEventType;

    .line 29
    const/16 v1, 0xb

    new-array v1, v1, [Lorg/apache/mina/core/session/IoEventType;

    sget-object v13, Lorg/apache/mina/core/session/IoEventType;->SESSION_CREATED:Lorg/apache/mina/core/session/IoEventType;

    aput-object v13, v1, v2

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->SESSION_OPENED:Lorg/apache/mina/core/session/IoEventType;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->SESSION_CLOSED:Lorg/apache/mina/core/session/IoEventType;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->SESSION_IDLE:Lorg/apache/mina/core/session/IoEventType;

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->EXCEPTION_CAUGHT:Lorg/apache/mina/core/session/IoEventType;

    aput-object v2, v1, v8

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->WRITE:Lorg/apache/mina/core/session/IoEventType;

    aput-object v2, v1, v9

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->CLOSE:Lorg/apache/mina/core/session/IoEventType;

    aput-object v2, v1, v10

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->INPUT_CLOSED:Lorg/apache/mina/core/session/IoEventType;

    aput-object v2, v1, v11

    aput-object v0, v1, v12

    sput-object v1, Lorg/apache/mina/core/session/IoEventType;->$VALUES:[Lorg/apache/mina/core/session/IoEventType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/mina/core/session/IoEventType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 29
    const-class v0, Lorg/apache/mina/core/session/IoEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/session/IoEventType;

    return-object v0
.end method

.method public static values()[Lorg/apache/mina/core/session/IoEventType;
    .locals 1

    .line 29
    sget-object v0, Lorg/apache/mina/core/session/IoEventType;->$VALUES:[Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0}, [Lorg/apache/mina/core/session/IoEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/mina/core/session/IoEventType;

    return-object v0
.end method
