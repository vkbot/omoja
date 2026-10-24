.class public Lorg/apache/ftpserver/message/impl/DefaultMessageResource;
.super Ljava/lang/Object;
.source "DefaultMessageResource.java"

# interfaces
.implements Lorg/apache/ftpserver/message/MessageResource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;
    }
.end annotation


# static fields
.field private static final RESOURCE_PATH:Ljava/lang/String; = "org/apache/ftpserver/message/"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private final languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final messages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/io/File;)V
    .locals 5
    .param p2, "customMessageDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 68
    .local p1, "languages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-class v0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;

    .line 56
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->LOG:Lorg/slf4j/Logger;

    .line 69
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 70
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->languages:Ljava/util/List;

    goto :goto_0

    .line 72
    :cond_0
    iput-object v0, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->languages:Ljava/util/List;

    .line 76
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->messages:Ljava/util/Map;

    .line 77
    if-eqz p1, :cond_1

    .line 78
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 79
    .local v2, "language":Ljava/lang/String;
    invoke-direct {p0, v2, p2}, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->createPropertiesPair(Ljava/lang/String;Ljava/io/File;)Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;

    move-result-object v3

    .line 80
    .local v3, "pair":Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;
    iget-object v4, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->messages:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .end local v2    # "language":Ljava/lang/String;
    .end local v3    # "pair":Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;
    goto :goto_1

    .line 83
    :cond_1
    invoke-direct {p0, v0, p2}, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->createPropertiesPair(Ljava/lang/String;Ljava/io/File;)Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;

    move-result-object v1

    .line 84
    .local v1, "pair":Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;
    iget-object v2, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->messages:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method private createPropertiesPair(Ljava/lang/String;Ljava/io/File;)Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;
    .locals 8
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "customMessageDirectory"    # Ljava/io/File;

    .line 99
    const-string v0, "MessageResourceImpl.createPropertiesPair()"

    new-instance v1, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;-><init>(Lorg/apache/ftpserver/message/impl/DefaultMessageResource$1;)V

    .line 103
    .local v1, "pair":Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;
    if-nez p1, :cond_0

    .line 104
    const-string v2, "org/apache/ftpserver/message/FtpStatus.properties"

    .local v2, "defaultResourceName":Ljava/lang/String;
    goto :goto_0

    .line 106
    .end local v2    # "defaultResourceName":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "org/apache/ftpserver/message/FtpStatus_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".properties"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    .restart local v2    # "defaultResourceName":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    .line 111
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v4

    .line 113
    const-string v4, "\", file not found in classpath"

    const-string v5, "Failed to load messages from \""

    if-eqz v3, :cond_3

    .line 115
    :try_start_1
    iget-object v6, v1, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;->defaultProperties:Ljava/util/Properties;

    invoke-virtual {v6, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    nop

    .line 125
    invoke-static {v3}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    .line 126
    nop

    .line 129
    const/4 v4, 0x0

    .line 130
    .local v4, "resourceFile":Ljava/io/File;
    if-nez p1, :cond_1

    .line 131
    new-instance v5, Ljava/io/File;

    const-string v6, "FtpStatus.gen"

    invoke-direct {v5, p2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v5

    goto :goto_1

    .line 133
    :cond_1
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FtpStatus_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".gen"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v5

    .line 136
    :goto_1
    const/4 v3, 0x0

    .line 138
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 139
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 140
    iget-object v5, v1, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;->customProperties:Ljava/util/Properties;

    invoke-virtual {v5, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    :cond_2
    invoke-static {v3}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    .line 148
    nop

    .line 150
    return-object v1

    .line 147
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 142
    :catch_0
    move-exception v5

    .line 143
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_3
    iget-object v6, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v6, v0, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    new-instance v6, Lorg/apache/ftpserver/FtpServerConfigurationException;

    invoke-direct {v6, v0, v5}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "pair":Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;
    .end local v2    # "defaultResourceName":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "resourceFile":Ljava/io/File;
    .end local p0    # "this":Lorg/apache/ftpserver/message/impl/DefaultMessageResource;
    .end local p1    # "lang":Ljava/lang/String;
    .end local p2    # "customMessageDirectory":Ljava/io/File;
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    .end local v5    # "ex":Ljava/lang/Exception;
    .restart local v1    # "pair":Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;
    .restart local v2    # "defaultResourceName":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "resourceFile":Ljava/io/File;
    .restart local p0    # "this":Lorg/apache/ftpserver/message/impl/DefaultMessageResource;
    .restart local p1    # "lang":Ljava/lang/String;
    .restart local p2    # "customMessageDirectory":Ljava/io/File;
    :goto_2
    invoke-static {v3}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    .line 148
    throw v0

    .line 116
    .end local v4    # "resourceFile":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v6, Lorg/apache/ftpserver/FtpServerConfigurationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pair":Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;
    .end local v2    # "defaultResourceName":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local p0    # "this":Lorg/apache/ftpserver/message/impl/DefaultMessageResource;
    .end local p1    # "lang":Ljava/lang/String;
    .end local p2    # "customMessageDirectory":Ljava/io/File;
    throw v6

    .line 121
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "pair":Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;
    .restart local v2    # "defaultResourceName":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local p0    # "this":Lorg/apache/ftpserver/message/impl/DefaultMessageResource;
    .restart local p1    # "lang":Ljava/lang/String;
    .restart local p2    # "customMessageDirectory":Ljava/io/File;
    :cond_3
    new-instance v0, Lorg/apache/ftpserver/FtpServerConfigurationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pair":Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;
    .end local v2    # "defaultResourceName":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local p0    # "this":Lorg/apache/ftpserver/message/impl/DefaultMessageResource;
    .end local p1    # "lang":Ljava/lang/String;
    .end local p2    # "customMessageDirectory":Ljava/io/File;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 125
    .restart local v1    # "pair":Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;
    .restart local v2    # "defaultResourceName":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local p0    # "this":Lorg/apache/ftpserver/message/impl/DefaultMessageResource;
    .restart local p1    # "lang":Ljava/lang/String;
    .restart local p2    # "customMessageDirectory":Ljava/io/File;
    :catchall_1
    move-exception v0

    invoke-static {v3}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    .line 126
    throw v0
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .line 236
    iget-object v0, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->messages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 237
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 239
    .local v1, "language":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->messages:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;

    .line 240
    .local v2, "pair":Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;
    iget-object v3, v2, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;->customProperties:Ljava/util/Properties;

    invoke-virtual {v3}, Ljava/util/Properties;->clear()V

    .line 241
    iget-object v3, v2, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;->defaultProperties:Ljava/util/Properties;

    invoke-virtual {v3}, Ljava/util/Properties;->clear()V

    .line 242
    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "pair":Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;
    goto :goto_0

    .line 243
    :cond_0
    iget-object v1, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->messages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 244
    return-void
.end method

.method public getAvailableLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->languages:Ljava/util/List;

    if-nez v0, :cond_0

    .line 158
    const/4 v0, 0x0

    return-object v0

    .line 160
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "code"    # I
    .param p2, "subId"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;

    .line 169
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "key":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    :cond_0
    const/4 v1, 0x0

    .line 176
    .local v1, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .line 177
    .local v2, "pair":Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;
    if-eqz p3, :cond_1

    .line 178
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    .line 179
    iget-object v3, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->messages:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;

    .line 180
    if-eqz v2, :cond_1

    .line 181
    iget-object v3, v2, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;->customProperties:Ljava/util/Properties;

    invoke-virtual {v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    if-nez v1, :cond_1

    .line 183
    iget-object v3, v2, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;->defaultProperties:Ljava/util/Properties;

    invoke-virtual {v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    :cond_1
    if-nez v1, :cond_2

    .line 190
    iget-object v3, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->messages:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;

    .line 191
    if-eqz v2, :cond_2

    .line 192
    iget-object v3, v2, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;->customProperties:Ljava/util/Properties;

    invoke-virtual {v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    if-nez v1, :cond_2

    .line 194
    iget-object v3, v2, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;->defaultProperties:Ljava/util/Properties;

    invoke-virtual {v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    :cond_2
    return-object v1
.end method

.method public getMessages(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p1, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 206
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 210
    .local v0, "messages":Ljava/util/Properties;
    iget-object v1, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->messages:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;

    .line 211
    .local v1, "pair":Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;
    if-eqz v1, :cond_0

    .line 212
    iget-object v2, v1, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;->defaultProperties:Ljava/util/Properties;

    invoke-virtual {v0, v2}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 213
    iget-object v2, v1, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;->customProperties:Ljava/util/Properties;

    invoke-virtual {v0, v2}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 215
    :cond_0
    if-eqz p1, :cond_1

    .line 216
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 217
    iget-object v2, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->messages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;

    .line 218
    if-eqz v1, :cond_1

    .line 219
    iget-object v2, v1, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;->defaultProperties:Ljava/util/Properties;

    invoke-virtual {v0, v2}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 220
    iget-object v2, v1, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;->customProperties:Ljava/util/Properties;

    invoke-virtual {v0, v2}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 224
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 225
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 226
    .local v4, "key":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .end local v4    # "key":Ljava/lang/Object;
    goto :goto_0

    .line 229
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    return-object v3
.end method
