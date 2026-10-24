.class public Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;
.super Lorg/apache/ftpserver/impl/LocalizedFtpReply;
.source "LocalizedDataTransferFtpReply.java"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/DataTransferFtpReply;


# instance fields
.field private final bytesTransferred:J

.field private final file:Lorg/apache/ftpserver/ftplet/FtpFile;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;J)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "file"    # Lorg/apache/ftpserver/ftplet/FtpFile;
    .param p4, "bytesTransferred"    # J

    .line 61
    invoke-direct {p0, p1, p2}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;-><init>(ILjava/lang/String;)V

    .line 62
    iput-object p3, p0, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->file:Lorg/apache/ftpserver/ftplet/FtpFile;

    .line 63
    iput-wide p4, p0, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->bytesTransferred:J

    .line 64
    return-void
.end method

.method public static translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;
    .locals 8
    .param p0, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p1, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .param p2, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p3, "code"    # I
    .param p4, "subId"    # Ljava/lang/String;
    .param p5, "basicMsg"    # Ljava/lang/String;
    .param p6, "file"    # Lorg/apache/ftpserver/ftplet/FtpFile;

    .line 97
    invoke-static/range {p0 .. p5}, Lorg/apache/ftpserver/impl/FtpReplyTranslator;->translateMessage(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, "msg":Ljava/lang/String;
    new-instance v7, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    const-wide/16 v4, 0x0

    move-object v0, v7

    move v1, p3

    move-object v2, v6

    move-object v3, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;-><init>(ILjava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;J)V

    return-object v7
.end method

.method public static translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;J)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;
    .locals 8
    .param p0, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p1, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .param p2, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p3, "code"    # I
    .param p4, "subId"    # Ljava/lang/String;
    .param p5, "basicMsg"    # Ljava/lang/String;
    .param p6, "file"    # Lorg/apache/ftpserver/ftplet/FtpFile;
    .param p7, "bytesTransferred"    # J

    .line 128
    invoke-static/range {p0 .. p5}, Lorg/apache/ftpserver/impl/FtpReplyTranslator;->translateMessage(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, "msg":Ljava/lang/String;
    new-instance v7, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-object v0, v7

    move v1, p3

    move-object v2, v6

    move-object v3, p6

    move-wide v4, p7

    invoke-direct/range {v0 .. v5}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;-><init>(ILjava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;J)V

    return-object v7
.end method


# virtual methods
.method public getBytesTransferred()J
    .locals 2

    .line 71
    iget-wide v0, p0, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->bytesTransferred:J

    return-wide v0
.end method

.method public getFile()Lorg/apache/ftpserver/ftplet/FtpFile;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->file:Lorg/apache/ftpserver/ftplet/FtpFile;

    return-object v0
.end method
