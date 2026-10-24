.class public Lorg/apache/ftpserver/usermanager/impl/WriteRequest;
.super Ljava/lang/Object;
.source "WriteRequest.java"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/AuthorizationRequest;


# instance fields
.field private file:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    const-string v0, "/"

    invoke-direct {p0, v0}, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;->file:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public getFile()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;->file:Ljava/lang/String;

    return-object v0
.end method
