.class public Lorg/apache/ftpserver/command/impl/listing/MLSTFileFormater;
.super Ljava/lang/Object;
.source "MLSTFileFormater.java"

# interfaces
.implements Lorg/apache/ftpserver/command/impl/listing/FileFormater;


# static fields
.field private static final DEFAULT_TYPES:[Ljava/lang/String;

.field private static final NEWLINE:[C


# instance fields
.field private selectedTypes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    const-string v0, "Size"

    const-string v1, "Modify"

    const-string v2, "Type"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ftpserver/command/impl/listing/MLSTFileFormater;->DEFAULT_TYPES:[Ljava/lang/String;

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/ftpserver/command/impl/listing/MLSTFileFormater;->NEWLINE:[C

    return-void

    nop

    :array_0
    .array-data 2
        0xds
        0xas
    .end array-data
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "selectedTypes"    # [Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lorg/apache/ftpserver/command/impl/listing/MLSTFileFormater;->DEFAULT_TYPES:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/listing/MLSTFileFormater;->selectedTypes:[Ljava/lang/String;

    .line 45
    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/listing/MLSTFileFormater;->selectedTypes:[Ljava/lang/String;

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public format(Lorg/apache/ftpserver/ftplet/FtpFile;)Ljava/lang/String;
    .locals 7
    .param p1, "file"    # Lorg/apache/ftpserver/ftplet/FtpFile;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/ftpserver/command/impl/listing/MLSTFileFormater;->selectedTypes:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_9

    .line 57
    aget-object v2, v2, v1

    .line 58
    .local v2, "type":Ljava/lang/String;
    const-string v3, "size"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x3b

    if-eqz v3, :cond_0

    .line 59
    const-string v3, "Size="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->getSize()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 62
    :cond_0
    const-string v3, "modify"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->getLastModified()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/ftpserver/util/DateUtils;->getFtpDate(J)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "timeStr":Ljava/lang/String;
    const-string v5, "Modify="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .end local v3    # "timeStr":Ljava/lang/String;
    goto/16 :goto_3

    :cond_1
    const-string v3, "type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 68
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 69
    const-string v3, "Type=file;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 70
    :cond_2
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 71
    const-string v3, "Type=dir;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 73
    :cond_3
    const-string v3, "perm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 74
    const-string v3, "Perm="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isReadable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 76
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isFile()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 77
    const/16 v3, 0x72

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 78
    :cond_4
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 79
    const/16 v3, 0x65

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    const/16 v3, 0x6c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    :cond_5
    :goto_1
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isWritable()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 84
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isFile()Z

    move-result v3

    const/16 v5, 0x66

    if-eqz v3, :cond_6

    .line 85
    const/16 v3, 0x61

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    const/16 v3, 0x77

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 89
    :cond_6
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 90
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    const/16 v3, 0x70

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    const/16 v3, 0x63

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    const/16 v3, 0x6d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    :cond_7
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .end local v2    # "type":Ljava/lang/String;
    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 99
    .end local v1    # "i":I
    :cond_9
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    sget-object v1, Lorg/apache/ftpserver/command/impl/listing/MLSTFileFormater;->NEWLINE:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
