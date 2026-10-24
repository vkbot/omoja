.class public Lorg/apache/ftpserver/util/BaseProperties;
.super Ljava/util/Properties;
.source "BaseProperties.java"


# static fields
.field private static final serialVersionUID:J = 0x4d56033860a65171L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 0
    .param p1, "prop"    # Ljava/util/Properties;

    .line 56
    invoke-direct {p0, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 57
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 68
    :cond_0
    new-instance v1, Lorg/apache/ftpserver/ftplet/FtpException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "bol"    # Z

    .line 76
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "ex":Lorg/apache/ftpserver/ftplet/FtpException;
    return p2
.end method

.method public getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 227
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v2, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v3, "BaseProperties.getClass()"

    invoke-direct {v2, v3, v1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 223
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    :cond_0
    new-instance v1, Lorg/apache/ftpserver/ftplet/FtpException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getClass(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 235
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "ex":Lorg/apache/ftpserver/ftplet/FtpException;
    return-object p2
.end method

.method public getDate(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fmt"    # Ljava/text/DateFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 289
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 295
    :try_start_0
    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, "ex":Ljava/text/ParseException;
    new-instance v2, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v3, "BaseProperties.getdate()"

    invoke-direct {v2, v3, v1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 291
    .end local v1    # "ex":Ljava/text/ParseException;
    :cond_0
    new-instance v1, Lorg/apache/ftpserver/ftplet/FtpException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDate(Ljava/lang/String;Ljava/text/DateFormat;Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fmt"    # Ljava/text/DateFormat;
    .param p3, "dt"    # Ljava/util/Date;

    .line 303
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/util/BaseProperties;->getDate(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "ex":Lorg/apache/ftpserver/ftplet/FtpException;
    return-object p3
.end method

.method public getDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 264
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 269
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 270
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lorg/apache/ftpserver/ftplet/FtpException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Date format was incorrect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 266
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    new-instance v1, Lorg/apache/ftpserver/ftplet/FtpException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDateFormat(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fmt"    # Ljava/text/SimpleDateFormat;

    .line 278
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "ex":Lorg/apache/ftpserver/ftplet/FtpException;
    return-object p2
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 140
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v3, "BaseProperties.getDouble()"

    invoke-direct {v2, v3, v1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 136
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :cond_0
    new-instance v1, Lorg/apache/ftpserver/ftplet/FtpException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "doubleVal"    # D

    .line 148
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "ex":Lorg/apache/ftpserver/ftplet/FtpException;
    return-wide p2
.end method

.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 202
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 206
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 204
    :cond_0
    new-instance v1, Lorg/apache/ftpserver/ftplet/FtpException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fl"    # Ljava/io/File;

    .line 211
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "ex":Lorg/apache/ftpserver/ftplet/FtpException;
    return-object p2
.end method

.method public getInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 158
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "value":Ljava/lang/String;
    const-string v1, " not found"

    if-eqz v0, :cond_0

    .line 164
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 165
    :catch_0
    move-exception v2

    .line 166
    .local v2, "ex":Ljava/net/UnknownHostException;
    new-instance v3, Lorg/apache/ftpserver/ftplet/FtpException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Host "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 160
    .end local v2    # "ex":Ljava/net/UnknownHostException;
    :cond_0
    new-instance v2, Lorg/apache/ftpserver/ftplet/FtpException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getInetAddress(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/net/InetAddress;

    .line 172
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "ex":Lorg/apache/ftpserver/ftplet/FtpException;
    return-object p2
.end method

.method public getInteger(Ljava/lang/String;)I
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 92
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v3, "BaseProperties.getInteger()"

    invoke-direct {v2, v3, v1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 88
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :cond_0
    new-instance v1, Lorg/apache/ftpserver/ftplet/FtpException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInteger(Ljava/lang/String;I)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "intVal"    # I

    .line 100
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "ex":Lorg/apache/ftpserver/ftplet/FtpException;
    return p2
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 110
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 116
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v3, "BaseProperties.getLong()"

    invoke-direct {v2, v3, v1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 112
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :cond_0
    new-instance v1, Lorg/apache/ftpserver/ftplet/FtpException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "val"    # J

    .line 124
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "ex":Lorg/apache/ftpserver/ftplet/FtpException;
    return-wide p2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 187
    return-object v0

    .line 184
    :cond_0
    new-instance v1, Lorg/apache/ftpserver/ftplet/FtpException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;

    .line 192
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "ex":Lorg/apache/ftpserver/ftplet/FtpException;
    return-object p2
.end method

.method public getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 245
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 249
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    return-object v1

    .line 247
    :cond_0
    new-instance v1, Lorg/apache/ftpserver/ftplet/FtpException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTimeZone(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/TimeZone;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "tz"    # Ljava/util/TimeZone;

    .line 254
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "ex":Lorg/apache/ftpserver/ftplet/FtpException;
    return-object p2
.end method

.method public setInetAddress(Ljava/lang/String;Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/net/InetAddress;

    .line 351
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ftpserver/util/BaseProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 352
    return-void
.end method

.method public setProperty(Ljava/lang/String;D)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # D

    .line 330
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ftpserver/util/BaseProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 331
    return-void
.end method

.method public setProperty(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # F

    .line 337
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ftpserver/util/BaseProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 338
    return-void
.end method

.method public setProperty(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # I

    .line 323
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ftpserver/util/BaseProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 324
    return-void
.end method

.method public setProperty(Ljava/lang/String;J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # J

    .line 344
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ftpserver/util/BaseProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 345
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/io/File;

    .line 358
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ftpserver/util/BaseProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 359
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 387
    .local p2, "val":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ftpserver/util/BaseProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 388
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/text/SimpleDateFormat;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/text/SimpleDateFormat;

    .line 365
    invoke-virtual {p2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ftpserver/util/BaseProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 366
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/util/Date;Ljava/text/DateFormat;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/util/Date;
    .param p3, "fmt"    # Ljava/text/DateFormat;

    .line 380
    invoke-virtual {p3, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ftpserver/util/BaseProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 381
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/util/TimeZone;

    .line 372
    invoke-virtual {p2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ftpserver/util/BaseProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 373
    return-void
.end method

.method public setProperty(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Z

    .line 316
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ftpserver/util/BaseProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 317
    return-void
.end method
