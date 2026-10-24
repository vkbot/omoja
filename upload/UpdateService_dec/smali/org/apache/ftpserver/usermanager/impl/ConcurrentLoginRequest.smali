.class public Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;
.super Ljava/lang/Object;
.source "ConcurrentLoginRequest.java"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/AuthorizationRequest;


# instance fields
.field private final concurrentLogins:I

.field private final concurrentLoginsFromThisIP:I

.field private maxConcurrentLogins:I

.field private maxConcurrentLoginsPerIP:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "concurrentLogins"    # I
    .param p2, "concurrentLoginsFromThisIP"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->maxConcurrentLogins:I

    .line 39
    iput v0, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->maxConcurrentLoginsPerIP:I

    .line 48
    iput p1, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->concurrentLogins:I

    .line 49
    iput p2, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->concurrentLoginsFromThisIP:I

    .line 50
    return-void
.end method


# virtual methods
.method public getConcurrentLogins()I
    .locals 1

    .line 58
    iget v0, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->concurrentLogins:I

    return v0
.end method

.method public getConcurrentLoginsFromThisIP()I
    .locals 1

    .line 68
    iget v0, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->concurrentLoginsFromThisIP:I

    return v0
.end method

.method public getMaxConcurrentLogins()I
    .locals 1

    .line 78
    iget v0, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->maxConcurrentLogins:I

    return v0
.end method

.method public getMaxConcurrentLoginsPerIP()I
    .locals 1

    .line 99
    iget v0, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->maxConcurrentLoginsPerIP:I

    return v0
.end method

.method setMaxConcurrentLogins(I)V
    .locals 0
    .param p1, "maxConcurrentLogins"    # I

    .line 88
    iput p1, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->maxConcurrentLogins:I

    .line 89
    return-void
.end method

.method setMaxConcurrentLoginsPerIP(I)V
    .locals 0
    .param p1, "maxConcurrentLoginsPerIP"    # I

    .line 109
    iput p1, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->maxConcurrentLoginsPerIP:I

    .line 110
    return-void
.end method
