.class public Lorg/apache/ftpserver/impl/FtpReplyTranslator;
.super Ljava/lang/Object;
.source "FtpReplyTranslator.java"


# static fields
.field public static final CLIENT_ACCESS_TIME:Ljava/lang/String; = "client.access.time"

.field public static final CLIENT_CON_TIME:Ljava/lang/String; = "client.con.time"

.field public static final CLIENT_DIR:Ljava/lang/String; = "client.dir"

.field public static final CLIENT_HOME:Ljava/lang/String; = "client.home"

.field public static final CLIENT_IP:Ljava/lang/String; = "client.ip"

.field public static final CLIENT_LOGIN_NAME:Ljava/lang/String; = "client.login.name"

.field public static final CLIENT_LOGIN_TIME:Ljava/lang/String; = "client.login.time"

.field public static final OUTPUT_CODE:Ljava/lang/String; = "output.code"

.field public static final OUTPUT_MSG:Ljava/lang/String; = "output.msg"

.field public static final REQUEST_ARG:Ljava/lang/String; = "request.arg"

.field public static final REQUEST_CMD:Ljava/lang/String; = "request.cmd"

.field public static final REQUEST_LINE:Ljava/lang/String; = "request.line"

.field public static final SERVER_IP:Ljava/lang/String; = "server.ip"

.field public static final SERVER_PORT:Ljava/lang/String; = "server.port"

.field public static final STAT_CON_CURR:Ljava/lang/String; = "stat.con.curr"

.field public static final STAT_CON_TOTAL:Ljava/lang/String; = "stat.con.total"

.field public static final STAT_DIR_CREATE_COUNT:Ljava/lang/String; = "stat.dir.create.count"

.field public static final STAT_DIR_DELETE_COUNT:Ljava/lang/String; = "stat.dir.delete.count"

.field public static final STAT_FILE_DELETE_COUNT:Ljava/lang/String; = "stat.file.delete.count"

.field public static final STAT_FILE_DOWNLOAD_BYTES:Ljava/lang/String; = "stat.file.download.bytes"

.field public static final STAT_FILE_DOWNLOAD_COUNT:Ljava/lang/String; = "stat.file.download.count"

.field public static final STAT_FILE_UPLOAD_BYTES:Ljava/lang/String; = "stat.file.upload.bytes"

.field public static final STAT_FILE_UPLOAD_COUNT:Ljava/lang/String; = "stat.file.upload.count"

.field public static final STAT_LOGIN_ANON_CURR:Ljava/lang/String; = "stat.login.anon.curr"

.field public static final STAT_LOGIN_ANON_TOTAL:Ljava/lang/String; = "stat.login.anon.total"

.field public static final STAT_LOGIN_CURR:Ljava/lang/String; = "stat.login.curr"

.field public static final STAT_LOGIN_TOTAL:Ljava/lang/String; = "stat.login.total"

.field public static final STAT_START_TIME:Ljava/lang/String; = "stat.start.time"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getClientVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p1, "varName"    # Ljava/lang/String;

    .line 222
    const/4 v0, 0x0

    .line 225
    .local v0, "varVal":Ljava/lang/String;
    const-string v1, "client.ip"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_6

    .line 227
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 228
    .local v1, "remoteSocketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 229
    .end local v1    # "remoteSocketAddress":Ljava/net/InetSocketAddress;
    goto/16 :goto_0

    .line 234
    :cond_0
    const-string v1, "client.con.time"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getCreationTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/ftpserver/util/DateUtils;->getISO8601Date(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 239
    :cond_1
    const-string v1, "client.login.name"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 241
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 246
    :cond_2
    const-string v1, "client.login.time"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 247
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getLoginTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/ftpserver/util/DateUtils;->getISO8601Date(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 251
    :cond_3
    const-string v1, "client.access.time"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 252
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getLastAccessTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/ftpserver/util/DateUtils;->getISO8601Date(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 256
    :cond_4
    const-string v1, "client.home"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 257
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/User;->getHomeDirectory()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 261
    :cond_5
    const-string v1, "client.dir"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 262
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v1

    .line 263
    .local v1, "fsView":Lorg/apache/ftpserver/ftplet/FileSystemView;
    if-eqz v1, :cond_6

    .line 265
    :try_start_0
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getWorkingDirectory()Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ftpserver/ftplet/FtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 269
    goto :goto_0

    .line 267
    :catch_0
    move-exception v2

    .line 268
    .local v2, "ex":Ljava/lang/Exception;
    const-string v0, ""

    .line 272
    .end local v1    # "fsView":Lorg/apache/ftpserver/ftplet/FileSystemView;
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_6
    :goto_0
    return-object v0
.end method

.method private static getOutputVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p1, "code"    # I
    .param p2, "basicMsg"    # Ljava/lang/String;
    .param p3, "varName"    # Ljava/lang/String;

    .line 280
    const/4 v0, 0x0

    .line 283
    .local v0, "varVal":Ljava/lang/String;
    const-string v1, "output.code"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 288
    :cond_0
    const-string v1, "output.msg"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    move-object v0, p2

    .line 292
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static getRequestVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p1, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .param p2, "varName"    # Ljava/lang/String;

    .line 301
    const/4 v0, 0x0

    .line 303
    .local v0, "varVal":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 304
    const-string v1, ""

    return-object v1

    .line 308
    :cond_0
    const-string v1, "request.line"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getRequestLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 313
    :cond_1
    const-string v1, "request.cmd"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 314
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getCommand()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 318
    :cond_2
    const-string v1, "request.arg"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 319
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v0

    .line 322
    :cond_3
    :goto_0
    return-object v0
.end method

.method private static getServerVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p1, "varName"    # Ljava/lang/String;

    .line 331
    const/4 v0, 0x0

    .line 333
    .local v0, "varVal":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v1

    .line 335
    .local v1, "localSocketAddress":Ljava/net/SocketAddress;
    instance-of v2, v1, Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_2

    .line 336
    move-object v2, v1

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 338
    .local v2, "localInetSocketAddress":Ljava/net/InetSocketAddress;
    const-string v3, "server.ip"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 340
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 342
    .local v3, "addr":Ljava/net/InetAddress;
    if-eqz v3, :cond_0

    .line 343
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 345
    .end local v3    # "addr":Ljava/net/InetAddress;
    :cond_0
    goto :goto_0

    .line 348
    :cond_1
    const-string v3, "server.port"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 349
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 353
    .end local v2    # "localInetSocketAddress":Ljava/net/InetSocketAddress;
    :cond_2
    :goto_0
    return-object v0
.end method

.method private static getStatisticalConnectionVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p1, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p2, "varName"    # Ljava/lang/String;

    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "varVal":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/ftpserver/impl/FtpServerContext;->getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;

    move-result-object v1

    .line 365
    .local v1, "stat":Lorg/apache/ftpserver/ftplet/FtpStatistics;
    const-string v2, "stat.con.total"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalConnectionNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 370
    :cond_0
    const-string v2, "stat.con.curr"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 371
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getCurrentConnectionNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 374
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static getStatisticalDirectoryVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p1, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p2, "varName"    # Ljava/lang/String;

    .line 382
    const/4 v0, 0x0

    .line 383
    .local v0, "varVal":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/ftpserver/impl/FtpServerContext;->getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;

    move-result-object v1

    .line 386
    .local v1, "stat":Lorg/apache/ftpserver/ftplet/FtpStatistics;
    const-string v2, "stat.dir.create.count"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalDirectoryCreated()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 391
    :cond_0
    const-string v2, "stat.dir.delete.count"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 392
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalDirectoryRemoved()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 395
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static getStatisticalFileVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p1, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p2, "varName"    # Ljava/lang/String;

    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, "varVal":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/ftpserver/impl/FtpServerContext;->getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;

    move-result-object v1

    .line 407
    .local v1, "stat":Lorg/apache/ftpserver/ftplet/FtpStatistics;
    const-string v2, "stat.file.upload.count"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalUploadNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 412
    :cond_0
    const-string v2, "stat.file.upload.bytes"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 413
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalUploadSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 417
    :cond_1
    const-string v2, "stat.file.download.count"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 418
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalDownloadNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 422
    :cond_2
    const-string v2, "stat.file.download.bytes"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 423
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalDownloadSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 427
    :cond_3
    const-string v2, "stat.file.delete.count"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 428
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalDeleteNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 431
    :cond_4
    :goto_0
    return-object v0
.end method

.method private static getStatisticalLoginVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p1, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p2, "varName"    # Ljava/lang/String;

    .line 439
    const/4 v0, 0x0

    .line 440
    .local v0, "varVal":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/ftpserver/impl/FtpServerContext;->getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;

    move-result-object v1

    .line 443
    .local v1, "stat":Lorg/apache/ftpserver/ftplet/FtpStatistics;
    const-string v2, "stat.login.total"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 444
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalLoginNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 448
    :cond_0
    const-string v2, "stat.login.curr"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 449
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getCurrentLoginNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 453
    :cond_1
    const-string v2, "stat.login.anon.total"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 454
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalAnonymousLoginNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 458
    :cond_2
    const-string v2, "stat.login.anon.curr"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 459
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getCurrentAnonymousLoginNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 462
    :cond_3
    :goto_0
    return-object v0
.end method

.method private static getStatisticalVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p1, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p2, "varName"    # Ljava/lang/String;

    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, "varVal":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/ftpserver/impl/FtpServerContext;->getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;

    move-result-object v1

    .line 475
    .local v1, "stat":Lorg/apache/ftpserver/ftplet/FtpStatistics;
    const-string v2, "stat.start.time"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getStartTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/ftpserver/util/DateUtils;->getISO8601Date(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 480
    :cond_0
    const-string v2, "stat.con"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 481
    invoke-static {p0, p1, p2}, Lorg/apache/ftpserver/impl/FtpReplyTranslator;->getStatisticalConnectionVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 486
    :cond_1
    const-string v2, "stat.login."

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 487
    invoke-static {p0, p1, p2}, Lorg/apache/ftpserver/impl/FtpReplyTranslator;->getStatisticalLoginVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 491
    :cond_2
    const-string v2, "stat.file"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 492
    invoke-static {p0, p1, p2}, Lorg/apache/ftpserver/impl/FtpReplyTranslator;->getStatisticalFileVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 496
    :cond_3
    const-string v2, "stat.dir."

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 497
    invoke-static {p0, p1, p2}, Lorg/apache/ftpserver/impl/FtpReplyTranslator;->getStatisticalDirectoryVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    :cond_4
    :goto_0
    return-object v0
.end method

.method private static getVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p1, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .param p2, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p3, "code"    # I
    .param p4, "basicMsg"    # Ljava/lang/String;
    .param p5, "varName"    # Ljava/lang/String;

    .line 183
    const/4 v0, 0x0

    .line 186
    .local v0, "varVal":Ljava/lang/String;
    const-string v1, "output."

    invoke-virtual {p5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    invoke-static {p0, p3, p4, p5}, Lorg/apache/ftpserver/impl/FtpReplyTranslator;->getOutputVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_0
    const-string v1, "server."

    invoke-virtual {p5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    invoke-static {p0, p5}, Lorg/apache/ftpserver/impl/FtpReplyTranslator;->getServerVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 196
    :cond_1
    const-string v1, "request."

    invoke-virtual {p5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    invoke-static {p0, p1, p5}, Lorg/apache/ftpserver/impl/FtpReplyTranslator;->getRequestVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 201
    :cond_2
    const-string v1, "stat."

    invoke-virtual {p5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 202
    invoke-static {p0, p2, p5}, Lorg/apache/ftpserver/impl/FtpReplyTranslator;->getStatisticalVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 206
    :cond_3
    const-string v1, "client."

    invoke-virtual {p5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 207
    invoke-static {p0, p5}, Lorg/apache/ftpserver/impl/FtpReplyTranslator;->getClientVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    :cond_4
    :goto_0
    if-nez v0, :cond_5

    .line 211
    const-string v0, ""

    .line 213
    :cond_5
    return-object v0
.end method

.method private static replaceVariables(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p1, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .param p2, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p3, "code"    # I
    .param p4, "basicMsg"    # Ljava/lang/String;
    .param p5, "str"    # Ljava/lang/String;

    .line 141
    move-object/from16 v0, p5

    const/4 v1, 0x0

    .line 142
    .local v1, "startIndex":I
    const/16 v2, 0x7b

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 143
    .local v3, "openIndex":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 144
    return-object v0

    .line 147
    :cond_0
    const/16 v5, 0x7d

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 148
    .local v6, "closeIndex":I
    if-eq v6, v4, :cond_5

    if-le v3, v6, :cond_1

    goto :goto_3

    .line 152
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x80

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 153
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :goto_0
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 156
    .local v8, "varName":Ljava/lang/String;
    move-object v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    move-object v14, v8

    invoke-static/range {v9 .. v14}, Lorg/apache/ftpserver/impl/FtpReplyTranslator;->getVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    add-int/lit8 v1, v6, 0x1

    .line 160
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 161
    if-ne v3, v4, :cond_2

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    goto :goto_2

    .line 166
    :cond_2
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 167
    if-eq v6, v4, :cond_4

    if-le v3, v6, :cond_3

    goto :goto_1

    .line 171
    :cond_3
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .end local v8    # "varName":Ljava/lang/String;
    goto :goto_0

    .line 168
    .restart local v8    # "varName":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    nop

    .line 173
    .end local v8    # "varName":Ljava/lang/String;
    :goto_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 149
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    :goto_3
    return-object v0
.end method

.method public static translateMessage(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p1, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .param p2, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p3, "code"    # I
    .param p4, "subId"    # Ljava/lang/String;
    .param p5, "basicMsg"    # Ljava/lang/String;

    .line 119
    invoke-interface {p2}, Lorg/apache/ftpserver/impl/FtpServerContext;->getMessageResource()Lorg/apache/ftpserver/message/MessageResource;

    move-result-object v0

    .line 120
    .local v0, "resource":Lorg/apache/ftpserver/message/MessageResource;
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "lang":Ljava/lang/String;
    const/4 v2, 0x0

    .line 123
    .local v2, "msg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0, p3, p4, v1}, Lorg/apache/ftpserver/message/MessageResource;->getMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    :cond_0
    if-nez v2, :cond_1

    .line 127
    const-string v2, ""

    .line 129
    :cond_1
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p5

    move-object v8, v2

    invoke-static/range {v3 .. v8}, Lorg/apache/ftpserver/impl/FtpReplyTranslator;->replaceVariables(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    return-object v2
.end method
