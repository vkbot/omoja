.class public Lorg/apache/ftpserver/impl/DefaultConnectionConfig;
.super Ljava/lang/Object;
.source "DefaultConnectionConfig.java"

# interfaces
.implements Lorg/apache/ftpserver/ConnectionConfig;


# instance fields
.field private final anonymousLoginEnabled:Z

.field private final loginFailureDelay:I

.field private final maxAnonymousLogins:I

.field private final maxLoginFailures:I

.field private final maxLogins:I

.field private final maxThreads:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 46
    const/4 v1, 0x1

    const/16 v2, 0x1f4

    const/16 v3, 0xa

    const/16 v4, 0xa

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;-><init>(ZIIIII)V

    .line 47
    return-void
.end method

.method public constructor <init>(ZIIIII)V
    .locals 0
    .param p1, "anonymousLoginEnabled"    # Z
    .param p2, "loginFailureDelay"    # I
    .param p3, "maxLogins"    # I
    .param p4, "maxAnonymousLogins"    # I
    .param p5, "maxLoginFailures"    # I
    .param p6, "maxThreads"    # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean p1, p0, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;->anonymousLoginEnabled:Z

    .line 56
    iput p2, p0, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;->loginFailureDelay:I

    .line 57
    iput p3, p0, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;->maxLogins:I

    .line 58
    iput p4, p0, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;->maxAnonymousLogins:I

    .line 59
    iput p5, p0, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;->maxLoginFailures:I

    .line 60
    iput p6, p0, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;->maxThreads:I

    .line 61
    return-void
.end method


# virtual methods
.method public getLoginFailureDelay()I
    .locals 1

    .line 64
    iget v0, p0, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;->loginFailureDelay:I

    return v0
.end method

.method public getMaxAnonymousLogins()I
    .locals 1

    .line 68
    iget v0, p0, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;->maxAnonymousLogins:I

    return v0
.end method

.method public getMaxLoginFailures()I
    .locals 1

    .line 72
    iget v0, p0, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;->maxLoginFailures:I

    return v0
.end method

.method public getMaxLogins()I
    .locals 1

    .line 76
    iget v0, p0, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;->maxLogins:I

    return v0
.end method

.method public getMaxThreads()I
    .locals 1

    .line 84
    iget v0, p0, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;->maxThreads:I

    return v0
.end method

.method public isAnonymousLoginEnabled()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;->anonymousLoginEnabled:Z

    return v0
.end method
