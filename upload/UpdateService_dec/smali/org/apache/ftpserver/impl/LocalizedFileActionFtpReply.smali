.class public Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;
.super Lorg/apache/ftpserver/impl/LocalizedFtpReply;
.source "LocalizedFileActionFtpReply.java"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/FileActionFtpReply;


# instance fields
.field private final file:Lorg/apache/ftpserver/ftplet/FtpFile;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "file"    # Lorg/apache/ftpserver/ftplet/FtpFile;

    .line 52
    invoke-direct {p0, p1, p2}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;-><init>(ILjava/lang/String;)V

    .line 53
    iput-object p3, p0, Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;->file:Lorg/apache/ftpserver/ftplet/FtpFile;

    .line 54
    return-void
.end method

.method public static translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;
    .locals 2
    .param p0, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p1, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .param p2, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p3, "code"    # I
    .param p4, "subId"    # Ljava/lang/String;
    .param p5, "basicMsg"    # Ljava/lang/String;
    .param p6, "file"    # Lorg/apache/ftpserver/ftplet/FtpFile;

    .line 83
    invoke-static/range {p0 .. p5}, Lorg/apache/ftpserver/impl/FtpReplyTranslator;->translateMessage(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;

    invoke-direct {v1, p3, v0, p6}, Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;-><init>(ILjava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)V

    return-object v1
.end method


# virtual methods
.method public getFile()Lorg/apache/ftpserver/ftplet/FtpFile;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;->file:Lorg/apache/ftpserver/ftplet/FtpFile;

    return-object v0
.end method
