.class public Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;
.super Ljava/lang/Object;
.source "LISTFileFormater.java"

# interfaces
.implements Lorg/apache/ftpserver/command/impl/listing/FileFormater;


# static fields
.field private static final DELIM:C = ' '

.field private static final NEWLINE:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;->NEWLINE:[C

    return-void

    nop

    :array_0
    .array-data 2
        0xds
        0xas
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLastModified(Lorg/apache/ftpserver/ftplet/FtpFile;)Ljava/lang/String;
    .locals 2
    .param p1, "file"    # Lorg/apache/ftpserver/ftplet/FtpFile;

    .line 84
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->getLastModified()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/ftpserver/util/DateUtils;->getUnixDate(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLength(Lorg/apache/ftpserver/ftplet/FtpFile;)Ljava/lang/String;
    .locals 8
    .param p1, "file"    # Lorg/apache/ftpserver/ftplet/FtpFile;

    .line 68
    const-string v0, "            "

    .line 69
    .local v0, "initStr":Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 70
    .local v1, "sz":J
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->getSize()J

    move-result-wide v1

    .line 73
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "szStr":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 75
    return-object v3

    .line 77
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getPermission(Lorg/apache/ftpserver/ftplet/FtpFile;)[C
    .locals 4
    .param p1, "file"    # Lorg/apache/ftpserver/ftplet/FtpFile;

    .line 91
    const/16 v0, 0xa

    new-array v0, v0, [C

    .line 92
    .local v0, "permission":[C
    const/16 v1, 0x2d

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 94
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x64

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    aput-char v2, v0, v3

    .line 95
    const/4 v2, 0x1

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isReadable()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x72

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    aput-char v3, v0, v2

    .line 96
    const/4 v2, 0x2

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isWritable()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x77

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    aput-char v3, v0, v2

    .line 97
    const/4 v2, 0x3

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v1, 0x78

    :cond_3
    aput-char v1, v0, v2

    .line 98
    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/ftpserver/ftplet/FtpFile;)Ljava/lang/String;
    .locals 3
    .param p1, "file"    # Lorg/apache/ftpserver/ftplet/FtpFile;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1}, Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;->getPermission(Lorg/apache/ftpserver/ftplet/FtpFile;)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 45
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->getLinkCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->getOwnerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {p0, p1}, Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;->getLength(Lorg/apache/ftpserver/ftplet/FtpFile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {p0, p1}, Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;->getLastModified(Lorg/apache/ftpserver/ftplet/FtpFile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    sget-object v1, Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;->NEWLINE:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
