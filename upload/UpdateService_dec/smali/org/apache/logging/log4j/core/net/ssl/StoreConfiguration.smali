.class public Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;
.super Ljava/lang/Object;
.source "StoreConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;


# instance fields
.field private location:Ljava/lang/String;

.field private passwordProvider:Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "location",
            "password"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    .local p0, "this":Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;, "Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/net/ssl/MemoryPasswordProvider;

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/net/ssl/MemoryPasswordProvider;-><init>([C)V

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "passwordProvider"    # Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "location",
            "passwordProvider"
        }
    .end annotation

    .line 33
    .local p0, "this":Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;, "Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;->location:Ljava/lang/String;

    .line 35
    const-string v0, "passwordProvider"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;->passwordProvider:Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "location",
            "password"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    .local p0, "this":Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;, "Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/net/ssl/MemoryPasswordProvider;

    invoke-direct {v0, p2}, Lorg/apache/logging/log4j/core/net/ssl/MemoryPasswordProvider;-><init>([C)V

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;)V

    .line 44
    return-void
.end method


# virtual methods
.method public clearSecrets()V
    .locals 1

    .line 58
    .local p0, "this":Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;, "Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;->location:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;->passwordProvider:Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;

    .line 60
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;, "Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 115
    return v0

    .line 117
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 118
    return v1

    .line 120
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 121
    return v1

    .line 123
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;

    .line 124
    .local v2, "other":Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;, "Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration<*>;"
    iget-object v3, p0, Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;->location:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;->location:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 125
    return v1

    .line 127
    :cond_3
    iget-object v3, p0, Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;->passwordProvider:Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;

    invoke-interface {v3}, Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;->getPassword()[C

    move-result-object v3

    iget-object v4, v2, Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;->passwordProvider:Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;

    invoke-interface {v4}, Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;->getPassword()[C

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_4

    .line 128
    return v1

    .line 130
    :cond_4
    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 63
    .local p0, "this":Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;, "Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration<TT;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    .local p0, "this":Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;, "Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration<TT;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;->passwordProvider:Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordAsCharArray()[C
    .locals 1

    .line 80
    .local p0, "this":Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;, "Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration<TT;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;->passwordProvider:Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;->getPassword()[C

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 105
    .local p0, "this":Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;, "Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration<TT;>;"
    const/16 v0, 0x1f

    .line 106
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 107
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;->location:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 108
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;->passwordProvider:Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;

    invoke-interface {v3}, Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;->getPassword()[C

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([C)I

    move-result v3

    add-int/2addr v1, v3

    .line 109
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method protected load()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/logging/log4j/core/net/ssl/StoreConfigurationException;
        }
    .end annotation

    .line 100
    .local p0, "this":Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;, "Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "location"
        }
    .end annotation

    .line 67
    .local p0, "this":Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;, "Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration<TT;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;->location:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "password"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    .local p0, "this":Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;, "Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/net/ssl/MemoryPasswordProvider;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/net/ssl/MemoryPasswordProvider;-><init>([C)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;->passwordProvider:Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;

    .line 94
    return-void
.end method

.method public setPassword([C)V
    .locals 1
    .param p1, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "password"
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;, "Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/net/ssl/MemoryPasswordProvider;

    invoke-direct {v0, p1}, Lorg/apache/logging/log4j/core/net/ssl/MemoryPasswordProvider;-><init>([C)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;->passwordProvider:Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;

    .line 85
    return-void
.end method
