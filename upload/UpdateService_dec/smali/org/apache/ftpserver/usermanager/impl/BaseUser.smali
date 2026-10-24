.class public Lorg/apache/ftpserver/usermanager/impl/BaseUser;
.super Ljava/lang/Object;
.source "BaseUser.java"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/User;


# instance fields
.field private authorities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
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

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->name:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->password:Ljava/lang/String;

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->maxIdleTimeSec:I

    .line 56
    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->homeDir:Ljava/lang/String;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->isEnabled:Z

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->authorities:Ljava/util/List;

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/apache/ftpserver/ftplet/User;)V
    .locals 2
    .param p1, "user"    # Lorg/apache/ftpserver/ftplet/User;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->name:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->password:Ljava/lang/String;

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->maxIdleTimeSec:I

    .line 56
    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->homeDir:Ljava/lang/String;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->isEnabled:Z

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->authorities:Ljava/util/List;

    .line 72
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->name:Ljava/lang/String;

    .line 73
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->password:Ljava/lang/String;

    .line 74
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getAuthorities()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->authorities:Ljava/util/List;

    .line 75
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getMaxIdleTime()I

    move-result v0

    iput v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->maxIdleTimeSec:I

    .line 76
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getHomeDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->homeDir:Ljava/lang/String;

    .line 77
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->isEnabled:Z

    .line 78
    return-void
.end method


# virtual methods
.method public authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;
    .locals 5
    .param p1, "request"    # Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    .line 182
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->authorities:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 183
    return-object v1

    .line 186
    :cond_0
    const/4 v2, 0x0

    .line 187
    .local v2, "someoneCouldAuthorize":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ftpserver/ftplet/Authority;

    .line 188
    .local v3, "authority":Lorg/apache/ftpserver/ftplet/Authority;
    invoke-interface {v3, p1}, Lorg/apache/ftpserver/ftplet/Authority;->canAuthorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 189
    const/4 v2, 0x1

    .line 191
    invoke-interface {v3, p1}, Lorg/apache/ftpserver/ftplet/Authority;->authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    move-result-object p1

    .line 194
    if-nez p1, :cond_1

    .line 195
    return-object v1

    .line 199
    .end local v3    # "authority":Lorg/apache/ftpserver/ftplet/Authority;
    :cond_1
    goto :goto_0

    .line 201
    :cond_2
    if-eqz v2, :cond_3

    .line 202
    return-object p1

    .line 204
    :cond_3
    return-object v1
.end method

.method public getAuthorities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/ftpserver/ftplet/Authority;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->authorities:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 110
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthorities(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/ftpserver/ftplet/Authority;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/ftpserver/ftplet/Authority;",
            ">;"
        }
    .end annotation

    .line 212
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/ftpserver/ftplet/Authority;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v0, "selected":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ftpserver/ftplet/Authority;>;"
    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->authorities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ftpserver/ftplet/Authority;

    .line 215
    .local v2, "authority":Lorg/apache/ftpserver/ftplet/Authority;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    .end local v2    # "authority":Lorg/apache/ftpserver/ftplet/Authority;
    :cond_0
    goto :goto_0

    .line 220
    :cond_1
    return-object v0
.end method

.method public getEnabled()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->isEnabled:Z

    return v0
.end method

.method public getHomeDirectory()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->homeDir:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxIdleTime()I
    .locals 1

    .line 128
    iget v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->maxIdleTimeSec:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->password:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthorities(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/ftpserver/ftplet/Authority;",
            ">;)V"
        }
    .end annotation

    .line 117
    .local p1, "authorities":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ftpserver/ftplet/Authority;>;"
    if-eqz p1, :cond_0

    .line 118
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->authorities:Ljava/util/List;

    goto :goto_0

    .line 120
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->authorities:Ljava/util/List;

    .line 122
    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enb"    # Z

    .line 152
    iput-boolean p1, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->isEnabled:Z

    .line 153
    return-void
.end method

.method public setHomeDirectory(Ljava/lang/String;)V
    .locals 0
    .param p1, "home"    # Ljava/lang/String;

    .line 166
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->homeDir:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 1
    .param p1, "idleSec"    # I

    .line 135
    iput p1, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->maxIdleTimeSec:I

    .line 136
    if-gez p1, :cond_0

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->maxIdleTimeSec:I

    .line 139
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->name:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "pass"    # Ljava/lang/String;

    .line 105
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->password:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->name:Ljava/lang/String;

    return-object v0
.end method
