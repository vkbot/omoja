.class public Lorg/apache/ftpserver/usermanager/impl/WritePermission;
.super Ljava/lang/Object;
.source "WritePermission.java"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/Authority;


# instance fields
.field private permissionRoot:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "/"

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/WritePermission;->permissionRoot:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "permissionRoot"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/WritePermission;->permissionRoot:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;
    .locals 4
    .param p1, "request"    # Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    .line 58
    instance-of v0, p1, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 59
    move-object v0, p1

    check-cast v0, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;

    .line 61
    .local v0, "writeRequest":Lorg/apache/ftpserver/usermanager/impl/WriteRequest;
    invoke-virtual {v0}, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;->getFile()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "requestFile":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/ftpserver/usermanager/impl/WritePermission;->permissionRoot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    return-object v0

    .line 66
    :cond_0
    return-object v1

    .line 69
    .end local v0    # "writeRequest":Lorg/apache/ftpserver/usermanager/impl/WriteRequest;
    .end local v2    # "requestFile":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public canAuthorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Z
    .locals 1
    .param p1, "request"    # Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    .line 77
    instance-of v0, p1, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;

    return v0
.end method
