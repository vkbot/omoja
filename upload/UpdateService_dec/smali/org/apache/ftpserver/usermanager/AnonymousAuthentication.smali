.class public Lorg/apache/ftpserver/usermanager/AnonymousAuthentication;
.super Ljava/lang/Object;
.source "AnonymousAuthentication.java"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/Authentication;


# instance fields
.field private userMetadata:Lorg/apache/ftpserver/usermanager/impl/UserMetadata;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/apache/ftpserver/usermanager/impl/UserMetadata;)V
    .locals 0
    .param p1, "userMetadata"    # Lorg/apache/ftpserver/usermanager/impl/UserMetadata;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/AnonymousAuthentication;->userMetadata:Lorg/apache/ftpserver/usermanager/impl/UserMetadata;

    .line 49
    return-void
.end method


# virtual methods
.method public getUserMetadata()Lorg/apache/ftpserver/usermanager/impl/UserMetadata;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/AnonymousAuthentication;->userMetadata:Lorg/apache/ftpserver/usermanager/impl/UserMetadata;

    return-object v0
.end method
