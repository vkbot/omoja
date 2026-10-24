.class public Lorg/apache/ftpserver/impl/LocalizedFtpReply;
.super Lorg/apache/ftpserver/ftplet/DefaultFtpReply;
.source "LocalizedFtpReply.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;-><init>(ILjava/lang/String;)V

    .line 52
    return-void
.end method

.method public static translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;
    .locals 2
    .param p0, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p1, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .param p2, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p3, "code"    # I
    .param p4, "subId"    # Ljava/lang/String;
    .param p5, "basicMsg"    # Ljava/lang/String;

    .line 36
    invoke-static/range {p0 .. p5}, Lorg/apache/ftpserver/impl/FtpReplyTranslator;->translateMessage(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    invoke-direct {v1, p3, v0}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;-><init>(ILjava/lang/String;)V

    return-object v1
.end method
