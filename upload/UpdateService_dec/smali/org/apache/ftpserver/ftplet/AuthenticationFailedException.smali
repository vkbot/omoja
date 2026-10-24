.class public Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;
.super Lorg/apache/ftpserver/ftplet/FtpException;
.source "AuthenticationFailedException.java"


# static fields
.field private static final serialVersionUID:J = -0x126f5e10778e786bL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "th"    # Ljava/lang/Throwable;

    .line 68
    invoke-direct {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "th"    # Ljava/lang/Throwable;

    .line 56
    invoke-direct {p0, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method
