.class public Lorg/apache/ftpserver/usermanager/impl/TransferRatePermission;
.super Ljava/lang/Object;
.source "TransferRatePermission.java"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/Authority;


# instance fields
.field private maxDownloadRate:I

.field private maxUploadRate:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "maxDownloadRate"    # I
    .param p2, "maxUploadRate"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lorg/apache/ftpserver/usermanager/impl/TransferRatePermission;->maxDownloadRate:I

    .line 40
    iput p2, p0, Lorg/apache/ftpserver/usermanager/impl/TransferRatePermission;->maxUploadRate:I

    .line 41
    return-void
.end method


# virtual methods
.method public authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;
    .locals 2
    .param p1, "request"    # Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    .line 47
    instance-of v0, p1, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;

    if-eqz v0, :cond_0

    .line 48
    move-object v0, p1

    check-cast v0, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;

    .line 50
    .local v0, "transferRateRequest":Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;
    iget v1, p0, Lorg/apache/ftpserver/usermanager/impl/TransferRatePermission;->maxDownloadRate:I

    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;->setMaxDownloadRate(I)V

    .line 51
    iget v1, p0, Lorg/apache/ftpserver/usermanager/impl/TransferRatePermission;->maxUploadRate:I

    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;->setMaxUploadRate(I)V

    .line 53
    return-object v0

    .line 55
    .end local v0    # "transferRateRequest":Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public canAuthorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Z
    .locals 1
    .param p1, "request"    # Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    .line 63
    instance-of v0, p1, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;

    return v0
.end method
