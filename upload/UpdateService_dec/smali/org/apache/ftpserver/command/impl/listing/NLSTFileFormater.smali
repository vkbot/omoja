.class public Lorg/apache/ftpserver/command/impl/listing/NLSTFileFormater;
.super Ljava/lang/Object;
.source "NLSTFileFormater.java"

# interfaces
.implements Lorg/apache/ftpserver/command/impl/listing/FileFormater;


# static fields
.field private static final NEWLINE:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/ftpserver/command/impl/listing/NLSTFileFormater;->NEWLINE:[C

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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Lorg/apache/ftpserver/ftplet/FtpFile;)Ljava/lang/String;
    .locals 2
    .param p1, "file"    # Lorg/apache/ftpserver/ftplet/FtpFile;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    sget-object v1, Lorg/apache/ftpserver/command/impl/listing/NLSTFileFormater;->NEWLINE:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
