.class Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;
.super Ljava/lang/Object;
.source "JeroMqManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JeroMqConfiguration"
.end annotation


# instance fields
.field private final affinity:J

.field private final backlog:J

.field private final delayAttachOnConnect:Z

.field private final endpoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final identity:[B

.field private final ipv4Only:Z

.field private final linger:J

.field private final maxMsgSize:J

.field private final rcvHwm:J

.field private final receiveBufferSize:J

.field private final receiveTimeOut:I

.field private final reconnectIVL:J

.field private final reconnectIVLMax:J

.field private final sendBufferSize:J

.field private final sendTimeOut:I

.field private final sndHwm:J

.field private final tcpKeepAlive:I

.field private final tcpKeepAliveCount:J

.field private final tcpKeepAliveIdle:J

.field private final tcpKeepAliveInterval:J

.field private final xpubVerbose:Z


# direct methods
.method private constructor <init>(JJZ[BZJJJJIJJJIJIJJJZLjava/util/List;)V
    .locals 16
    .param p1, "affinity"    # J
    .param p3, "backlog"    # J
    .param p5, "delayAttachOnConnect"    # Z
    .param p6, "identity"    # [B
    .param p7, "ipv4Only"    # Z
    .param p8, "linger"    # J
    .param p10, "maxMsgSize"    # J
    .param p12, "rcvHwm"    # J
    .param p14, "receiveBufferSize"    # J
    .param p16, "receiveTimeOut"    # I
    .param p17, "reconnectIVL"    # J
    .param p19, "reconnectIVLMax"    # J
    .param p21, "sendBufferSize"    # J
    .param p23, "sendTimeOut"    # I
    .param p24, "sndHwm"    # J
    .param p26, "tcpKeepAlive"    # I
    .param p27, "tcpKeepAliveCount"    # J
    .param p29, "tcpKeepAliveIdle"    # J
    .param p31, "tcpKeepAliveInterval"    # J
    .param p33, "xpubVerbose"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "affinity",
            "backlog",
            "delayAttachOnConnect",
            "identity",
            "ipv4Only",
            "linger",
            "maxMsgSize",
            "rcvHwm",
            "receiveBufferSize",
            "receiveTimeOut",
            "reconnectIVL",
            "reconnectIVLMax",
            "sendBufferSize",
            "sendTimeOut",
            "sndHwm",
            "tcpKeepAlive",
            "tcpKeepAliveCount",
            "tcpKeepAliveIdle",
            "tcpKeepAliveInterval",
            "xpubVerbose",
            "endpoints"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ[BZJJJJIJJJIJIJJJZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 165
    .local p34, "endpoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 166
    move-wide/from16 v1, p1

    iput-wide v1, v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->affinity:J

    .line 167
    move-wide/from16 v3, p3

    iput-wide v3, v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->backlog:J

    .line 168
    move/from16 v5, p5

    iput-boolean v5, v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->delayAttachOnConnect:Z

    .line 169
    move-object/from16 v6, p6

    iput-object v6, v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->identity:[B

    .line 170
    move/from16 v7, p7

    iput-boolean v7, v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->ipv4Only:Z

    .line 171
    move-wide/from16 v8, p8

    iput-wide v8, v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->linger:J

    .line 172
    move-wide/from16 v10, p10

    iput-wide v10, v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->maxMsgSize:J

    .line 173
    move-wide/from16 v12, p12

    iput-wide v12, v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->rcvHwm:J

    .line 174
    move-wide/from16 v14, p14

    iput-wide v14, v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->receiveBufferSize:J

    .line 175
    move/from16 v1, p16

    iput v1, v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->receiveTimeOut:I

    .line 176
    move-wide/from16 v1, p17

    iput-wide v1, v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->reconnectIVL:J

    .line 177
    move-wide/from16 v1, p19

    iput-wide v1, v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->reconnectIVLMax:J

    .line 178
    move-wide/from16 v1, p21

    iput-wide v1, v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->sendBufferSize:J

    .line 179
    move/from16 v1, p23

    iput v1, v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->sendTimeOut:I

    .line 180
    move-wide/from16 v1, p24

    iput-wide v1, v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->sndHwm:J

    .line 181
    move/from16 v1, p26

    iput v1, v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->tcpKeepAlive:I

    .line 182
    move-wide/from16 v1, p27

    iput-wide v1, v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->tcpKeepAliveCount:J

    .line 183
    move-wide/from16 v1, p29

    iput-wide v1, v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->tcpKeepAliveIdle:J

    .line 184
    move-wide/from16 v1, p31

    iput-wide v1, v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->tcpKeepAliveInterval:J

    .line 185
    move/from16 v1, p33

    iput-boolean v1, v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->xpubVerbose:Z

    .line 186
    move-object/from16 v2, p34

    iput-object v2, v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->endpoints:Ljava/util/List;

    .line 187
    return-void
.end method

.method synthetic constructor <init>(JJZ[BZJJJJIJJJIJIJJJZLjava/util/List;Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # Z
    .param p6, "x3"    # [B
    .param p7, "x4"    # Z
    .param p8, "x5"    # J
    .param p10, "x6"    # J
    .param p12, "x7"    # J
    .param p14, "x8"    # J
    .param p16, "x9"    # I
    .param p17, "x10"    # J
    .param p19, "x11"    # J
    .param p21, "x12"    # J
    .param p23, "x13"    # I
    .param p24, "x14"    # J
    .param p26, "x15"    # I
    .param p27, "x16"    # J
    .param p29, "x17"    # J
    .param p31, "x18"    # J
    .param p33, "x19"    # Z
    .param p34, "x20"    # Ljava/util/List;
    .param p35, "x21"    # Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$1;

    .line 135
    invoke-direct/range {p0 .. p34}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;-><init>(JJZ[BZJJJJIJJJIJIJJJZLjava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;

    .line 135
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->affinity:J

    return-wide v0
.end method

.method static synthetic access$1000(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;

    .line 135
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->receiveTimeOut:I

    return v0
.end method

.method static synthetic access$1100(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;

    .line 135
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->reconnectIVL:J

    return-wide v0
.end method

.method static synthetic access$1200(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;

    .line 135
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->reconnectIVLMax:J

    return-wide v0
.end method

.method static synthetic access$1300(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;

    .line 135
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->sendBufferSize:J

    return-wide v0
.end method

.method static synthetic access$1400(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;

    .line 135
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->sendTimeOut:I

    return v0
.end method

.method static synthetic access$1500(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;

    .line 135
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->sndHwm:J

    return-wide v0
.end method

.method static synthetic access$1600(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;

    .line 135
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->tcpKeepAlive:I

    return v0
.end method

.method static synthetic access$1700(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;

    .line 135
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->tcpKeepAliveCount:J

    return-wide v0
.end method

.method static synthetic access$1800(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;

    .line 135
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->tcpKeepAliveIdle:J

    return-wide v0
.end method

.method static synthetic access$1900(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;

    .line 135
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->tcpKeepAliveInterval:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;

    .line 135
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->backlog:J

    return-wide v0
.end method

.method static synthetic access$2000(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;

    .line 135
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->xpubVerbose:Z

    return v0
.end method

.method static synthetic access$2100(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;

    .line 135
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->endpoints:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;

    .line 135
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->delayAttachOnConnect:Z

    return v0
.end method

.method static synthetic access$400(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)[B
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;

    .line 135
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->identity:[B

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;

    .line 135
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->ipv4Only:Z

    return v0
.end method

.method static synthetic access$600(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;

    .line 135
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->linger:J

    return-wide v0
.end method

.method static synthetic access$700(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;

    .line 135
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->maxMsgSize:J

    return-wide v0
.end method

.method static synthetic access$800(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;

    .line 135
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->rcvHwm:J

    return-wide v0
.end method

.method static synthetic access$900(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;

    .line 135
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->receiveBufferSize:J

    return-wide v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JeroMqConfiguration{affinity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->affinity:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", backlog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->backlog:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", delayAttachOnConnect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->delayAttachOnConnect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", identity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->identity:[B

    .line 195
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ipv4Only="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->ipv4Only:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", linger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->linger:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", maxMsgSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->maxMsgSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rcvHwm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->rcvHwm:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", receiveBufferSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->receiveBufferSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", receiveTimeOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->receiveTimeOut:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reconnectIVL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->reconnectIVL:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", reconnectIVLMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->reconnectIVLMax:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sendBufferSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->sendBufferSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sendTimeOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->sendTimeOut:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sndHwm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->sndHwm:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tcpKeepAlive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->tcpKeepAlive:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tcpKeepAliveCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->tcpKeepAliveCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tcpKeepAliveIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->tcpKeepAliveIdle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tcpKeepAliveInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->tcpKeepAliveInterval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", xpubVerbose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->xpubVerbose:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", endpoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->endpoints:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    return-object v0
.end method
