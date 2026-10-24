.class public Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;
.super Ljava/lang/Object;
.source "ConcurrentLoginPermission.java"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/Authority;


# instance fields
.field private final maxConcurrentLogins:I

.field private final maxConcurrentLoginsPerIP:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "maxConcurrentLogins"    # I
    .param p2, "maxConcurrentLoginsPerIP"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;->maxConcurrentLogins:I

    .line 41
    iput p2, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;->maxConcurrentLoginsPerIP:I

    .line 42
    return-void
.end method


# virtual methods
.method public authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;
    .locals 4
    .param p1, "request"    # Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    .line 48
    instance-of v0, p1, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 49
    move-object v0, p1

    check-cast v0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;

    .line 51
    .local v0, "concurrentLoginRequest":Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;
    iget v2, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;->maxConcurrentLogins:I

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v0}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->getConcurrentLogins()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 54
    return-object v1

    .line 55
    :cond_0
    iget v2, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;->maxConcurrentLoginsPerIP:I

    if-eqz v2, :cond_1

    .line 57
    invoke-virtual {v0}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->getConcurrentLoginsFromThisIP()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 58
    return-object v1

    .line 60
    :cond_1
    iget v1, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;->maxConcurrentLogins:I

    .line 61
    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->setMaxConcurrentLogins(I)V

    .line 62
    iget v1, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;->maxConcurrentLoginsPerIP:I

    .line 63
    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->setMaxConcurrentLoginsPerIP(I)V

    .line 65
    return-object v0

    .line 68
    .end local v0    # "concurrentLoginRequest":Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;
    :cond_2
    return-object v1
.end method

.method public canAuthorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Z
    .locals 1
    .param p1, "request"    # Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    .line 76
    instance-of v0, p1, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;

    return v0
.end method
