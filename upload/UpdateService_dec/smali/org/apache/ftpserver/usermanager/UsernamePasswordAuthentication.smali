.class public Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;
.super Ljava/lang/Object;
.source "UsernamePasswordAuthentication.java"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/Authentication;


# instance fields
.field private password:Ljava/lang/String;

.field private userMetadata:Lorg/apache/ftpserver/usermanager/impl/UserMetadata;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;->username:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;->password:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/usermanager/impl/UserMetadata;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userMetadata"    # Lorg/apache/ftpserver/usermanager/impl/UserMetadata;

    .line 65
    invoke-direct {p0, p1, p2}, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iput-object p3, p0, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;->userMetadata:Lorg/apache/ftpserver/usermanager/impl/UserMetadata;

    .line 67
    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUserMetadata()Lorg/apache/ftpserver/usermanager/impl/UserMetadata;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;->userMetadata:Lorg/apache/ftpserver/usermanager/impl/UserMetadata;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;->username:Ljava/lang/String;

    return-object v0
.end method
