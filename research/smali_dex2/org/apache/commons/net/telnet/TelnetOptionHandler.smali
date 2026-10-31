.class public abstract Lorg/apache/commons/net/telnet/TelnetOptionHandler;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field private acceptLocal:Z

.field private acceptRemote:Z

.field private doFlag:Z

.field private initialLocal:Z

.field private initialRemote:Z

.field private optionCode:I

.field private willFlag:Z


# direct methods
.method public constructor <init>(IZZZZ)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->optionCode:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialLocal:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialRemote:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptLocal:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptRemote:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public answerSubnegotiation([II)[I
    .registers 3

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public getAcceptLocal()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptLocal:Z

    .line 2
    .line 3
    return v0
.end method

.method public getAcceptRemote()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptRemote:Z

    .line 2
    .line 3
    return v0
.end method

.method public getDo()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->doFlag:Z

    .line 2
    .line 3
    return v0
.end method

.method public getInitLocal()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialLocal:Z

    .line 2
    .line 3
    return v0
.end method

.method public getInitRemote()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialRemote:Z

    .line 2
    .line 3
    return v0
.end method

.method public getOptionCode()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->optionCode:I

    .line 2
    .line 3
    return v0
.end method

.method public getWill()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->willFlag:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAcceptLocal(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptLocal:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAcceptRemote(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptRemote:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDo(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->doFlag:Z

    .line 2
    .line 3
    return-void
.end method

.method public setInitLocal(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialLocal:Z

    .line 2
    .line 3
    return-void
.end method

.method public setInitRemote(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialRemote:Z

    .line 2
    .line 3
    return-void
.end method

.method public setWill(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->willFlag:Z

    .line 2
    .line 3
    return-void
.end method

.method public startSubnegotiationLocal()[I
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public startSubnegotiationRemote()[I
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method
