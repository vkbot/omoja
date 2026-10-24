.class public Lorg/apache/ftpserver/DataConnectionException;
.super Lorg/apache/ftpserver/ftplet/FtpException;
.source "DataConnectionException.java"


# static fields
.field private static final serialVersionUID:J = -0x126f5e1077a92c5bL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "th"    # Ljava/lang/Throwable;

    .line 69
    invoke-direct {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "th"    # Ljava/lang/Throwable;

    .line 57
    invoke-direct {p0, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/Throwable;)V

    .line 58
    return-void
.end method
