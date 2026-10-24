.class public Lorg/apache/ftpserver/command/impl/listing/VisibleFileFilter;
.super Ljava/lang/Object;
.source "VisibleFileFilter.java"

# interfaces
.implements Lorg/apache/ftpserver/command/impl/listing/FileFilter;


# instance fields
.field private final wrappedFilter:Lorg/apache/ftpserver/command/impl/listing/FileFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ftpserver/command/impl/listing/VisibleFileFilter;-><init>(Lorg/apache/ftpserver/command/impl/listing/FileFilter;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/apache/ftpserver/command/impl/listing/FileFilter;)V
    .locals 0
    .param p1, "wrappedFilter"    # Lorg/apache/ftpserver/command/impl/listing/FileFilter;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/ftpserver/command/impl/listing/VisibleFileFilter;->wrappedFilter:Lorg/apache/ftpserver/command/impl/listing/FileFilter;

    .line 49
    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/ftpserver/ftplet/FtpFile;)Z
    .locals 1
    .param p1, "file"    # Lorg/apache/ftpserver/ftplet/FtpFile;

    .line 55
    iget-object v0, p0, Lorg/apache/ftpserver/command/impl/listing/VisibleFileFilter;->wrappedFilter:Lorg/apache/ftpserver/command/impl/listing/FileFilter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/ftpserver/command/impl/listing/FileFilter;->accept(Lorg/apache/ftpserver/ftplet/FtpFile;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    return v0

    .line 59
    :cond_0
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isHidden()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
