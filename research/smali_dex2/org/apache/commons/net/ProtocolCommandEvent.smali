.class public Lorg/apache/commons/net/ProtocolCommandEvent;
.super Ljava/util/EventObject;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field private static final serialVersionUID:J = 0x59a629bebd214a8L


# instance fields
.field private final command:Ljava/lang/String;

.field private final isCommand:Z

.field private final message:Ljava/lang/String;

.field private final replyCode:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILjava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->replyCode:I

    .line 5
    .line 6
    iput-object p3, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->message:Ljava/lang/String;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->isCommand:Z

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->command:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 15
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->replyCode:I

    .line 17
    iput-object p3, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->message:Ljava/lang/String;

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->isCommand:Z

    .line 19
    iput-object p2, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->command:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->command:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReplyCode()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->replyCode:I

    .line 2
    .line 3
    return v0
.end method

.method public isCommand()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->isCommand:Z

    .line 2
    .line 3
    return v0
.end method

.method public isReply()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/ProtocolCommandEvent;->isCommand()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    return v0
.end method
