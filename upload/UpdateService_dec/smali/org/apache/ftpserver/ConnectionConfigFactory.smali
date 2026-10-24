.class public Lorg/apache/ftpserver/ConnectionConfigFactory;
.super Ljava/lang/Object;
.source "ConnectionConfigFactory.java"


# instance fields
.field private anonymousLoginEnabled:Z

.field private loginFailureDelay:I

.field private maxAnonymousLogins:I

.field private maxLoginFailures:I

.field private maxLogins:I

.field private maxThreads:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxLogins:I

    .line 34
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->anonymousLoginEnabled:Z

    .line 36
    iput v0, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxAnonymousLogins:I

    .line 38
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxLoginFailures:I

    .line 40
    const/16 v0, 0x1f4

    iput v0, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->loginFailureDelay:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxThreads:I

    return-void
.end method


# virtual methods
.method public createConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;
    .locals 8

    .line 49
    new-instance v7, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;

    iget-boolean v1, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->anonymousLoginEnabled:Z

    iget v2, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->loginFailureDelay:I

    iget v3, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxLogins:I

    iget v4, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxAnonymousLogins:I

    iget v5, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxLoginFailures:I

    iget v6, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxThreads:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;-><init>(ZIIIII)V

    return-object v7
.end method

.method public getLoginFailureDelay()I
    .locals 1

    .line 61
    iget v0, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->loginFailureDelay:I

    return v0
.end method

.method public getMaxAnonymousLogins()I
    .locals 1

    .line 69
    iget v0, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxAnonymousLogins:I

    return v0
.end method

.method public getMaxLoginFailures()I
    .locals 1

    .line 77
    iget v0, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxLoginFailures:I

    return v0
.end method

.method public getMaxLogins()I
    .locals 1

    .line 85
    iget v0, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxLogins:I

    return v0
.end method

.method public getMaxThreads()I
    .locals 1

    .line 113
    iget v0, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxThreads:I

    return v0
.end method

.method public isAnonymousLoginEnabled()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->anonymousLoginEnabled:Z

    return v0
.end method

.method public setAnonymousLoginEnabled(Z)V
    .locals 0
    .param p1, "anonymousLoginEnabled"    # Z

    .line 133
    iput-boolean p1, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->anonymousLoginEnabled:Z

    .line 134
    return-void
.end method

.method public setLoginFailureDelay(I)V
    .locals 0
    .param p1, "loginFailureDelay"    # I

    .line 159
    iput p1, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->loginFailureDelay:I

    .line 160
    return-void
.end method

.method public setMaxAnonymousLogins(I)V
    .locals 0
    .param p1, "maxAnonymousLogins"    # I

    .line 141
    iput p1, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxAnonymousLogins:I

    .line 142
    return-void
.end method

.method public setMaxLoginFailures(I)V
    .locals 0
    .param p1, "maxLoginFailures"    # I

    .line 149
    iput p1, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxLoginFailures:I

    .line 150
    return-void
.end method

.method public setMaxLogins(I)V
    .locals 0
    .param p1, "maxLogins"    # I

    .line 102
    iput p1, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxLogins:I

    .line 103
    return-void
.end method

.method public setMaxThreads(I)V
    .locals 0
    .param p1, "maxThreads"    # I

    .line 125
    iput p1, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxThreads:I

    .line 126
    return-void
.end method
