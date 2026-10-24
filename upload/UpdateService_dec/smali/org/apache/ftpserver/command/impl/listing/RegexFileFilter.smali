.class public Lorg/apache/ftpserver/command/impl/listing/RegexFileFilter;
.super Ljava/lang/Object;
.source "RegexFileFilter.java"

# interfaces
.implements Lorg/apache/ftpserver/command/impl/listing/FileFilter;


# instance fields
.field private final regex:Lorg/apache/ftpserver/util/RegularExpr;

.field private final wrappedFilter:Lorg/apache/ftpserver/command/impl/listing/FileFilter;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/ftpserver/command/impl/listing/RegexFileFilter;-><init>(Ljava/lang/String;Lorg/apache/ftpserver/command/impl/listing/FileFilter;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/ftpserver/command/impl/listing/FileFilter;)V
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "wrappedFilter"    # Lorg/apache/ftpserver/command/impl/listing/FileFilter;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lorg/apache/ftpserver/util/RegularExpr;

    invoke-direct {v0, p1}, Lorg/apache/ftpserver/util/RegularExpr;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/listing/RegexFileFilter;->regex:Lorg/apache/ftpserver/util/RegularExpr;

    .line 57
    iput-object p2, p0, Lorg/apache/ftpserver/command/impl/listing/RegexFileFilter;->wrappedFilter:Lorg/apache/ftpserver/command/impl/listing/FileFilter;

    .line 58
    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/ftpserver/ftplet/FtpFile;)Z
    .locals 2
    .param p1, "file"    # Lorg/apache/ftpserver/ftplet/FtpFile;

    .line 64
    iget-object v0, p0, Lorg/apache/ftpserver/command/impl/listing/RegexFileFilter;->wrappedFilter:Lorg/apache/ftpserver/command/impl/listing/FileFilter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/ftpserver/command/impl/listing/FileFilter;->accept(Lorg/apache/ftpserver/ftplet/FtpFile;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    return v0

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/apache/ftpserver/command/impl/listing/RegexFileFilter;->regex:Lorg/apache/ftpserver/util/RegularExpr;

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/util/RegularExpr;->isMatch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
