.class public Lorg/apache/ftpserver/usermanager/UserFactory;
.super Ljava/lang/Object;
.source "UserFactory.java"


# instance fields
.field private authorities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/ftpserver/ftplet/Authority;",
            ">;"
        }
    .end annotation
.end field

.field private homeDir:Ljava/lang/String;

.field private isEnabled:Z

.field private maxIdleTimeSec:I

.field private name:Ljava/lang/String;

.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->name:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->password:Ljava/lang/String;

    .line 40
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->maxIdleTimeSec:I

    .line 42
    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->homeDir:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->isEnabled:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->authorities:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createUser()Lorg/apache/ftpserver/ftplet/User;
    .locals 2

    .line 53
    new-instance v0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;

    invoke-direct {v0}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;-><init>()V

    .line 54
    .local v0, "user":Lorg/apache/ftpserver/usermanager/impl/BaseUser;
    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setName(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setPassword(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->homeDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setHomeDirectory(Ljava/lang/String;)V

    .line 57
    iget-boolean v1, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->isEnabled:Z

    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setEnabled(Z)V

    .line 58
    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->authorities:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setAuthorities(Ljava/util/List;)V

    .line 59
    iget v1, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->maxIdleTimeSec:I

    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setMaxIdleTime(I)V

    .line 61
    return-object v0
.end method

.method public getAuthorities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/ftpserver/ftplet/Authority;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->authorities:Ljava/util/List;

    return-object v0
.end method

.method public getHomeDirectory()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->homeDir:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxIdleTime()I
    .locals 1

    .line 101
    iget v0, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->maxIdleTimeSec:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->password:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->isEnabled:Z

    return v0
.end method

.method public setAuthorities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/ftpserver/ftplet/Authority;",
            ">;)V"
        }
    .end annotation

    .line 157
    .local p1, "authorities":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ftpserver/ftplet/Authority;>;"
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->authorities:Ljava/util/List;

    .line 158
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .line 141
    iput-boolean p1, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->isEnabled:Z

    .line 142
    return-void
.end method

.method public setHomeDirectory(Ljava/lang/String;)V
    .locals 0
    .param p1, "homeDir"    # Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->homeDir:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 0
    .param p1, "maxIdleTimeSec"    # I

    .line 109
    iput p1, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->maxIdleTimeSec:I

    .line 110
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->name:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->password:Ljava/lang/String;

    .line 94
    return-void
.end method
