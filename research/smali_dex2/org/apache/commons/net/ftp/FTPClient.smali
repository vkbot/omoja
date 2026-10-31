.class public Lorg/apache/commons/net/ftp/FTPClient;
.super Lorg/apache/commons/net/ftp/FTP;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/net/ftp/Configurable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/ftp/FTPClient$PropertiesSingleton;,
        Lorg/apache/commons/net/ftp/FTPClient$NatServerResolverImpl;,
        Lorg/apache/commons/net/ftp/FTPClient$HostnameResolver;,
        Lorg/apache/commons/net/ftp/FTPClient$CSL;
    }
.end annotation


# static fields
.field public static final ACTIVE_LOCAL_DATA_CONNECTION_MODE:I = 0x0

.field public static final ACTIVE_REMOTE_DATA_CONNECTION_MODE:I = 0x1

.field public static final FTP_IP_ADDRESS_FROM_PASV_RESPONSE:Ljava/lang/String; = "org.apache.commons.net.ftp.ipAddressFromPasvResponse"

.field public static final FTP_SYSTEM_TYPE:Ljava/lang/String; = "org.apache.commons.net.ftp.systemType"

.field public static final FTP_SYSTEM_TYPE_DEFAULT:Ljava/lang/String; = "org.apache.commons.net.ftp.systemType.default"

.field private static final PARMS_PAT:Ljava/util/regex/Pattern;

.field public static final PASSIVE_LOCAL_DATA_CONNECTION_MODE:I = 0x2

.field public static final PASSIVE_REMOTE_DATA_CONNECTION_MODE:I = 0x3

.field public static final SYSTEM_TYPE_PROPERTIES:Ljava/lang/String; = "/systemType.properties"


# instance fields
.field private activeExternalHost:Ljava/net/InetAddress;

.field private activeMaxPort:I

.field private activeMinPort:I

.field private autoDetectEncoding:Z

.field private bufferSize:I

.field private controlKeepAliveReplyTimeout:Ljava/time/Duration;

.field private controlKeepAliveTimeout:Ljava/time/Duration;

.field private copyStreamListener:Lorg/apache/commons/net/io/CopyStreamListener;

.field private cslDebug:[I

.field private dataConnectionMode:I

.field private dataTimeout:Ljava/time/Duration;

.field private entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

.field private entryParserKey:Ljava/lang/String;

.field private featuresMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private fileStructure:I

.field private fileTransferMode:I

.field private fileType:I

.field private formatOrByteSize:I

.field private ftpClientConfig:Lorg/apache/commons/net/ftp/FTPClientConfig;

.field private ipAddressFromPasvResponse:Z

.field private listHiddenFiles:Z

.field private parserFactory:Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;

.field private passiveHost:Ljava/lang/String;

.field private passiveLocalHost:Ljava/net/InetAddress;

.field private passiveNatWorkaroundStrategy:Lorg/apache/commons/net/ftp/FTPClient$HostnameResolver;

.field private passivePort:I

.field private final random:Ljava/util/Random;

.field private receiveDataSocketBufferSize:I

.field private remoteVerificationEnabled:Z

.field private reportActiveExternalHost:Ljava/net/InetAddress;

.field private restartOffset:J

.field private sendDataSocketBufferSize:I

.field private systemName:Ljava/lang/String;

.field private useEPSVwithIPv4:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "(\\d{1,3},\\d{1,3},\\d{1,3},\\d{1,3}),(\\d{1,3}),(\\d{1,3})"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/apache/commons/net/ftp/FTPClient;->PARMS_PAT:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTP;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/apache/commons/io/filefilter/f;->z()Ljava/time/Duration;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataTimeout:Ljava/time/Duration;

    .line 9
    .line 10
    new-instance v0, Ljava/util/Random;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->random:Ljava/util/Random;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->remoteVerificationEnabled:Z

    .line 19
    .line 20
    new-instance v0, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;

    .line 21
    .line 22
    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->parserFactory:Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;

    .line 26
    .line 27
    invoke-static {}, Lorg/apache/commons/io/filefilter/f;->h()Ljava/time/Duration;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveTimeout:Ljava/time/Duration;

    .line 32
    .line 33
    invoke-static {}, Lorg/apache/commons/io/filefilter/f;->B()Ljava/time/Duration;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveReplyTimeout:Ljava/time/Duration;

    .line 38
    .line 39
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClient$NatServerResolverImpl;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lorg/apache/commons/net/ftp/FTPClient$NatServerResolverImpl;-><init>(Lorg/apache/commons/net/ftp/FTPClient;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveNatWorkaroundStrategy:Lorg/apache/commons/net/ftp/FTPClient$HostnameResolver;

    .line 45
    .line 46
    const-string v0, "org.apache.commons.net.ftp.ipAddressFromPasvResponse"

    .line 47
    .line 48
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->ipAddressFromPasvResponse:Z

    .line 53
    .line 54
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->initDefaults()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/util/Set;
    .registers 1

    .line 1
    invoke-static {p0}, Lorg/apache/commons/net/ftp/FTPClient;->lambda$initFeatureMap$0(Ljava/lang/String;)Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private getBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 4

    .line 1
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->bufferSize:I

    .line 2
    .line 3
    if-lez v0, :cond_c

    .line 4
    .line 5
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 6
    .line 7
    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->bufferSize:I

    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_c
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method private getBufferedOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 4

    .line 1
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->bufferSize:I

    .line 2
    .line 3
    if-lez v0, :cond_c

    .line 4
    .line 5
    new-instance v0, Ljava/io/BufferedOutputStream;

    .line 6
    .line 7
    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->bufferSize:I

    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_c
    new-instance v0, Ljava/io/BufferedOutputStream;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method private static getOverrideProperties()Ljava/util/Properties;
    .registers 1

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClient$PropertiesSingleton;->PROPERTIES:Ljava/util/Properties;

    .line 2
    .line 3
    return-object v0
.end method

.method private initDefaults()V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataConnectionMode:I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveHost:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    iput v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->passivePort:I

    .line 9
    .line 10
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->activeExternalHost:Ljava/net/InetAddress;

    .line 11
    .line 12
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->reportActiveExternalHost:Ljava/net/InetAddress;

    .line 13
    .line 14
    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->activeMinPort:I

    .line 15
    .line 16
    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->activeMaxPort:I

    .line 17
    .line 18
    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->fileType:I

    .line 19
    .line 20
    const/4 v0, 0x7

    .line 21
    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->fileStructure:I

    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->formatOrByteSize:I

    .line 25
    .line 26
    const/16 v0, 0xa

    .line 27
    .line 28
    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->fileTransferMode:I

    .line 29
    .line 30
    const-wide/16 v2, 0x0

    .line 31
    .line 32
    iput-wide v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->restartOffset:J

    .line 33
    .line 34
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->systemName:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 37
    .line 38
    const-string v0, ""

    .line 39
    .line 40
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->entryParserKey:Ljava/lang/String;

    .line 41
    .line 42
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->featuresMap:Ljava/util/HashMap;

    .line 43
    .line 44
    return-void
.end method

.method private initFeatureMap()Z
    .registers 10

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->featuresMap:Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_66

    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->feat()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v2, 0x212

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-ne v0, v2, :cond_f

    .line 14
    .line 15
    return v3

    .line 16
    :cond_f
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    new-instance v2, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->featuresMap:Ljava/util/HashMap;

    .line 26
    .line 27
    if-nez v0, :cond_1d

    .line 28
    .line 29
    return v3

    .line 30
    :cond_1d
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    :cond_23
    :goto_23
    if-ge v3, v2, :cond_66

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    check-cast v4, Ljava/lang/String;

    .line 45
    .line 46
    const-string v5, " "

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_23

    .line 53
    .line 54
    const/16 v5, 0x20

    .line 55
    .line 56
    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->indexOf(II)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-lez v5, :cond_48

    .line 61
    .line 62
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    add-int/lit8 v5, v5, 0x1

    .line 67
    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    goto :goto_4e

    .line 73
    :cond_48
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    const-string v4, ""

    .line 78
    .line 79
    :goto_4e
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 80
    .line 81
    invoke-virtual {v6, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    iget-object v6, p0, Lorg/apache/commons/net/ftp/FTPClient;->featuresMap:Ljava/util/HashMap;

    .line 86
    .line 87
    new-instance v7, Lai/onnxruntime/d;

    .line 88
    .line 89
    const/4 v8, 0x6

    .line 90
    invoke-direct {v7, v8}, Lai/onnxruntime/d;-><init>(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    check-cast v5, Ljava/util/Set;

    .line 98
    .line 99
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_23

    .line 103
    :cond_66
    return v1
.end method

.method private initiateListParsing(Lorg/apache/commons/net/ftp/FTPFileEntryParser;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;
    .registers 5

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->LIST:Lorg/apache/commons/net/ftp/FTPCmd;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/FTPClient;->getListArguments(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/net/Socket;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    new-instance v0, Lorg/apache/commons/net/ftp/FTPListParseEngine;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->ftpClientConfig:Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 14
    .line 15
    invoke-direct {v0, p1, v1}, Lorg/apache/commons/net/ftp/FTPListParseEngine;-><init>(Lorg/apache/commons/net/ftp/FTPFileEntryParser;Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 16
    .line 17
    .line 18
    if-nez p2, :cond_14

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_14
    :try_start_14
    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getControlEncoding()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->readServerList(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_26

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    .line 36
    .line 37
    .line 38
    return-object v0

    .line 39
    :catchall_26
    move-exception p1

    .line 40
    invoke-static {p2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method private static synthetic lambda$initFeatureMap$0(Ljava/lang/String;)Ljava/util/Set;
    .registers 1

    .line 1
    new-instance p0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public static loadResourceProperties(Ljava/lang/String;)Ljava/util/Properties;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2b

    .line 3
    .line 4
    :try_start_3
    const-class v1, Lorg/apache/commons/net/ftp/FTPClient;

    .line 5
    .line 6
    invoke-virtual {v1, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9} :catch_2b

    .line 10
    if-eqz p0, :cond_26

    .line 11
    .line 12
    :try_start_b
    new-instance v1, Ljava/util/Properties;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/Properties;-><init>()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_17

    .line 15
    .line 16
    .line 17
    :try_start_10
    invoke-virtual {v1, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_15

    .line 18
    .line 19
    .line 20
    move-object v0, v1

    .line 21
    goto :goto_26

    .line 22
    :catchall_15
    move-exception v0

    .line 23
    goto :goto_1b

    .line 24
    :catchall_17
    move-exception v1

    .line 25
    move-object v2, v1

    .line 26
    move-object v1, v0

    .line 27
    move-object v0, v2

    .line 28
    :goto_1b
    :try_start_1b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    .line 29
    .line 30
    .line 31
    goto :goto_23

    .line 32
    :catchall_1f
    move-exception p0

    .line 33
    :try_start_20
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    :goto_23
    throw v0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_24} :catch_24

    .line 37
    :catch_24
    move-object v0, v1

    .line 38
    goto :goto_2b

    .line 39
    :cond_26
    :goto_26
    if-eqz p0, :cond_2b

    .line 40
    .line 41
    :try_start_28
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2b

    .line 42
    .line 43
    .line 44
    :catch_2b
    :cond_2b
    :goto_2b
    return-object v0
.end method

.method private mergeListeners(Lorg/apache/commons/net/io/CopyStreamListener;)Lorg/apache/commons/net/io/CopyStreamListener;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->copyStreamListener:Lorg/apache/commons/net/io/CopyStreamListener;

    .line 2
    .line 3
    if-nez p1, :cond_5

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_5
    if-nez v0, :cond_8

    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_8
    new-instance v0, Lorg/apache/commons/net/io/CopyStreamAdapter;

    .line 10
    .line 11
    invoke-direct {v0}, Lorg/apache/commons/net/io/CopyStreamAdapter;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/io/CopyStreamAdapter;->addCopyStreamListener(Lorg/apache/commons/net/io/CopyStreamListener;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->copyStreamListener:Lorg/apache/commons/net/io/CopyStreamListener;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/io/CopyStreamAdapter;->addCopyStreamListener(Lorg/apache/commons/net/io/CopyStreamListener;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public static parsePathname(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const-string v0, "\""

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_44

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v2, 0x1

    .line 25
    move v4, v1

    .line 26
    move v3, v2

    .line 27
    :goto_1a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-ge v3, v5, :cond_3e

    .line 32
    .line 33
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    const/16 v6, 0x22

    .line 38
    .line 39
    if-ne v5, v6, :cond_31

    .line 40
    .line 41
    if-eqz v4, :cond_2f

    .line 42
    .line 43
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move v4, v1

    .line 47
    goto :goto_3b

    .line 48
    :cond_2f
    move v4, v2

    .line 49
    goto :goto_3b

    .line 50
    :cond_31
    if-eqz v4, :cond_38

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_38
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    :goto_3b
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    goto :goto_1a

    .line 63
    :cond_3e
    if-eqz v4, :cond_44

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    :cond_44
    return-object p0
.end method

.method private storeFile(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;Ljava/io/InputStream;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPCmd;->getCommand()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/net/ftp/FTPClient;->_storeFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method private storeFileStream(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 3

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPCmd;->getCommand()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_storeFileStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private wrapOnDeflate(Ljava/net/Socket;)Ljava/net/Socket;
    .registers 4

    .line 1
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->fileTransferMode:I

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    if-eq v0, v1, :cond_7

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_7
    new-instance v0, Lorg/apache/commons/net/ftp/DeflateSocket;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lorg/apache/commons/net/ftp/DeflateSocket;-><init>(Ljava/net/Socket;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public _connectAction_()V
    .registers 2

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->_connectAction_(Ljava/io/Reader;)V

    return-void
.end method

.method public _connectAction_(Ljava/io/Reader;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->_connectAction_(Ljava/io/Reader;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->initDefaults()V

    .line 5
    .line 6
    .line 7
    iget-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->autoDetectEncoding:Z

    .line 8
    .line 9
    if-eqz p1, :cond_5d

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    .line 19
    .line 20
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 21
    .line 22
    const-string v2, "UTF8"

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/FTPClient;->hasFeature(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_27

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/FTPClient;->hasFeature(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_4e

    .line 39
    .line 40
    :cond_27
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/FTP;->setControlEncoding(Ljava/nio/charset/Charset;)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lorg/apache/commons/net/io/CRLFLineReader;

    .line 44
    .line 45
    new-instance v2, Ljava/io/InputStreamReader;

    .line 46
    .line 47
    iget-object v3, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    .line 48
    .line 49
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getControlEncoding()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v2}, Lorg/apache/commons/net/io/CRLFLineReader;-><init>(Ljava/io/Reader;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTP;->_controlInput_:Ljava/io/BufferedReader;

    .line 60
    .line 61
    new-instance v1, Ljava/io/BufferedWriter;

    .line 62
    .line 63
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 64
    .line 65
    iget-object v3, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 66
    .line 67
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getControlEncoding()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 75
    .line 76
    .line 77
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTP;->_controlOutput_:Ljava/io/BufferedWriter;

    .line 78
    .line 79
    :cond_4e
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 87
    .line 88
    .line 89
    iput v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    .line 90
    .line 91
    const/4 p1, 0x1

    .line 92
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTP;->_newReplyString:Z

    .line 93
    .line 94
    :cond_5d
    return-void
.end method

.method public _openDataConnection_(ILjava/lang/String;)Ljava/net/Socket;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 337
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPCommand;->getCommand(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public _openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .registers 12

    .line 1
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataConnectionMode:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_9

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v2, :cond_9

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_9
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getRemoteAddress()Ljava/net/InetAddress;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v0, v0, Ljava/net/Inet6Address;

    .line 15
    .line 16
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataTimeout:Ljava/time/Duration;

    .line 17
    .line 18
    invoke-static {v2}, Lorg/apache/commons/net/ftp/DurationUtils;->toMillisInt(Ljava/time/Duration;)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataConnectionMode:I

    .line 23
    .line 24
    const-wide/16 v4, 0x0

    .line 25
    .line 26
    if-nez v3, :cond_a6

    .line 27
    .line 28
    iget-object v3, p0, Lorg/apache/commons/net/SocketClient;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getActivePort()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const/4 v7, 0x1

    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getHostAddress()Ljava/net/InetAddress;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    invoke-virtual {v3, v6, v7, v8}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-eqz v0, :cond_44

    .line 44
    .line 45
    :try_start_2c
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReportHostAddress()Ljava/net/InetAddress;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v3}, Ljava/net/ServerSocket;->getLocalPort()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    invoke-virtual {p0, v0, v6}, Lorg/apache/commons/net/ftp/FTP;->eprt(Ljava/net/InetAddress;I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 58
    .line 59
    .line 60
    move-result v0
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_42

    .line 61
    if-nez v0, :cond_5a

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    .line 64
    .line 65
    .line 66
    return-object v1

    .line 67
    :catchall_42
    move-exception p1

    .line 68
    goto :goto_9b

    .line 69
    :cond_44
    :try_start_44
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReportHostAddress()Ljava/net/InetAddress;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v3}, Ljava/net/ServerSocket;->getLocalPort()I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    invoke-virtual {p0, v0, v6}, Lorg/apache/commons/net/ftp/FTP;->port(Ljava/net/InetAddress;I)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 82
    .line 83
    .line 84
    move-result v0
    :try_end_54
    .catchall {:try_start_44 .. :try_end_54} :catchall_42

    .line 85
    if-nez v0, :cond_5a

    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    .line 88
    .line 89
    .line 90
    return-object v1

    .line 91
    :cond_5a
    :try_start_5a
    iget-wide v6, p0, Lorg/apache/commons/net/ftp/FTPClient;->restartOffset:J

    .line 92
    .line 93
    cmp-long v0, v6, v4

    .line 94
    .line 95
    if-lez v0, :cond_66

    .line 96
    .line 97
    invoke-virtual {p0, v6, v7}, Lorg/apache/commons/net/ftp/FTPClient;->restart(J)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_70

    .line 102
    .line 103
    :cond_66
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    .line 108
    .line 109
    .line 110
    move-result p1
    :try_end_6e
    .catchall {:try_start_5a .. :try_end_6e} :catchall_42

    .line 111
    if-nez p1, :cond_76

    .line 112
    .line 113
    :cond_70
    if-eqz v3, :cond_75

    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    .line 116
    .line 117
    .line 118
    :cond_75
    return-object v1

    .line 119
    :cond_76
    if-ltz v2, :cond_7b

    .line 120
    .line 121
    :try_start_78
    invoke-virtual {v3, v2}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 122
    .line 123
    .line 124
    :cond_7b
    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->wrapOnDeflate(Ljava/net/Socket;)Ljava/net/Socket;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    if-ltz v2, :cond_88

    .line 133
    .line 134
    invoke-virtual {p1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 135
    .line 136
    .line 137
    :cond_88
    iget p2, p0, Lorg/apache/commons/net/ftp/FTPClient;->receiveDataSocketBufferSize:I

    .line 138
    .line 139
    if-lez p2, :cond_8f

    .line 140
    .line 141
    invoke-virtual {p1, p2}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 142
    .line 143
    .line 144
    :cond_8f
    iget p2, p0, Lorg/apache/commons/net/ftp/FTPClient;->sendDataSocketBufferSize:I

    .line 145
    .line 146
    if-lez p2, :cond_96

    .line 147
    .line 148
    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSendBufferSize(I)V
    :try_end_96
    .catchall {:try_start_78 .. :try_end_96} :catchall_42

    .line 149
    .line 150
    .line 151
    :cond_96
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_12e

    .line 155
    .line 156
    :goto_9b
    if-eqz v3, :cond_a5

    .line 157
    .line 158
    :try_start_9d
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_a1

    .line 159
    .line 160
    .line 161
    goto :goto_a5

    .line 162
    :catchall_a1
    move-exception p2

    .line 163
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    :cond_a5
    :goto_a5
    throw p1

    .line 167
    :cond_a6
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->isUseEPSVwithIPv4()Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    const/4 v6, 0x0

    .line 172
    if-nez v3, :cond_af

    .line 173
    .line 174
    if-eqz v0, :cond_c3

    .line 175
    .line 176
    :cond_af
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->epsv()I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    const/16 v7, 0xe5

    .line 181
    .line 182
    if-ne v3, v7, :cond_c3

    .line 183
    .line 184
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    check-cast v0, Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->_parseExtendedPassiveModeReply(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    goto :goto_da

    .line 196
    :cond_c3
    if-nez v0, :cond_14f

    .line 197
    .line 198
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->pasv()I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    const/16 v3, 0xe3

    .line 203
    .line 204
    if-eq v0, v3, :cond_cf

    .line 205
    .line 206
    goto/16 :goto_14f

    .line 207
    .line 208
    :cond_cf
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    check-cast v0, Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->_parsePassiveModeReply(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :goto_da
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socketFactory_:Ljavax/net/SocketFactory;

    .line 220
    .line 221
    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->wrapOnDeflate(Ljava/net/Socket;)Ljava/net/Socket;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    iget v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->receiveDataSocketBufferSize:I

    .line 230
    .line 231
    if-lez v3, :cond_eb

    .line 232
    .line 233
    invoke-virtual {v0, v3}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 234
    .line 235
    .line 236
    :cond_eb
    iget v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->sendDataSocketBufferSize:I

    .line 237
    .line 238
    if-lez v3, :cond_f2

    .line 239
    .line 240
    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 241
    .line 242
    .line 243
    :cond_f2
    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveLocalHost:Ljava/net/InetAddress;

    .line 244
    .line 245
    if-eqz v3, :cond_100

    .line 246
    .line 247
    new-instance v3, Ljava/net/InetSocketAddress;

    .line 248
    .line 249
    iget-object v7, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveLocalHost:Ljava/net/InetAddress;

    .line 250
    .line 251
    invoke-direct {v3, v7, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 255
    .line 256
    .line 257
    :cond_100
    if-ltz v2, :cond_105

    .line 258
    .line 259
    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 260
    .line 261
    .line 262
    :cond_105
    new-instance v2, Ljava/net/InetSocketAddress;

    .line 263
    .line 264
    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveHost:Ljava/lang/String;

    .line 265
    .line 266
    iget v6, p0, Lorg/apache/commons/net/ftp/FTPClient;->passivePort:I

    .line 267
    .line 268
    invoke-direct {v2, v3, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 269
    .line 270
    .line 271
    iget v3, p0, Lorg/apache/commons/net/SocketClient;->connectTimeout:I

    .line 272
    .line 273
    invoke-virtual {v0, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 274
    .line 275
    .line 276
    iget-wide v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->restartOffset:J

    .line 277
    .line 278
    cmp-long v4, v2, v4

    .line 279
    .line 280
    if-lez v4, :cond_11f

    .line 281
    .line 282
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->restart(J)Z

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    if-eqz v2, :cond_129

    .line 287
    .line 288
    :cond_11f
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    if-nez p1, :cond_12d

    .line 297
    .line 298
    :cond_129
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 299
    .line 300
    .line 301
    return-object v1

    .line 302
    :cond_12d
    move-object p1, v0

    .line 303
    :goto_12e
    iget-boolean p2, p0, Lorg/apache/commons/net/ftp/FTPClient;->remoteVerificationEnabled:Z

    .line 304
    .line 305
    if-eqz p2, :cond_14e

    .line 306
    .line 307
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/SocketClient;->verifyRemote(Ljava/net/Socket;)Z

    .line 308
    .line 309
    .line 310
    move-result p2

    .line 311
    if-eqz p2, :cond_139

    .line 312
    .line 313
    goto :goto_14e

    .line 314
    :cond_139
    invoke-static {p1}, Lorg/apache/commons/net/SocketClient;->getHostAddress(Ljava/net/Socket;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p2

    .line 318
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    .line 319
    .line 320
    invoke-static {v0}, Lorg/apache/commons/net/SocketClient;->getHostAddress(Ljava/net/Socket;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 325
    .line 326
    .line 327
    const-string p1, "Host attempting data connection "

    .line 328
    .line 329
    const-string v1, " is not same as server "

    .line 330
    .line 331
    invoke-static {p1, p2, v1, v0}, Lai/onnxruntime/b;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    const/4 p1, 0x0

    .line 335
    :cond_14e
    :goto_14e
    return-object p1

    .line 336
    :cond_14f
    :goto_14f
    return-object v1
.end method

.method public _openDataConnection_(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/net/Socket;
    .registers 3

    .line 338
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPCmd;->getCommand()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public _parseExtendedPassiveModeReply(Ljava/lang/String;)V
    .registers 8

    .line 1
    const/16 v0, 0x28

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    add-int/2addr v0, v1

    .line 9
    const/16 v2, 0x29

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x2

    .line 33
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    sub-int/2addr v4, v1

    .line 42
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const-string v5, "Could not parse extended passive host information.\nServer Reply: "

    .line 47
    .line 48
    if-ne v0, v2, :cond_5a

    .line 49
    .line 50
    if-ne v2, v3, :cond_5a

    .line 51
    .line 52
    if-ne v3, v4, :cond_5a

    .line 53
    .line 54
    :try_start_35
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    sub-int/2addr v0, v1

    .line 59
    const/4 v1, 0x3

    .line 60
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result p1
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_43} :catch_50

    .line 68
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getRemoteAddress()Ljava/net/InetAddress;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveHost:Ljava/lang/String;

    .line 77
    .line 78
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->passivePort:I

    .line 79
    .line 80
    return-void

    .line 81
    :catch_50
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    .line 82
    .line 83
    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {v0, p1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :cond_5a
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    .line 92
    .line 93
    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-direct {v0, p1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v0
.end method

.method public _parsePassiveModeReply(Ljava/lang/String;)V
    .registers 8

    .line 1
    const-string v0, "[Replacing PASV mode reply address "

    .line 2
    .line 3
    sget-object v1, Lorg/apache/commons/net/ftp/FTPClient;->PARMS_PAT:Ljava/util/regex/Pattern;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-string v3, "Could not parse passive host information.\nServer Reply: "

    .line 14
    .line 15
    if-eqz v2, :cond_a7

    .line 16
    .line 17
    const-string v2, "0,0,0,0"

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_28

    .line 29
    .line 30
    iget-object v2, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    goto :goto_34

    .line 41
    :cond_28
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/16 v4, 0x2c

    .line 46
    .line 47
    const/16 v5, 0x2e

    .line 48
    .line 49
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    :goto_34
    const/4 v4, 0x2

    .line 54
    :try_start_35
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    const/4 v5, 0x3

    .line 63
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v1
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_46} :catch_9b

    .line 71
    shl-int/lit8 v4, v4, 0x8

    .line 72
    .line 73
    or-int/2addr v1, v4

    .line 74
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->isIpAddressFromPasvResponse()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_88

    .line 79
    .line 80
    iget-object v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveNatWorkaroundStrategy:Lorg/apache/commons/net/ftp/FTPClient$HostnameResolver;

    .line 81
    .line 82
    if-eqz v4, :cond_96

    .line 83
    .line 84
    :try_start_53
    invoke-interface {v4, v2}, Lorg/apache/commons/net/ftp/FTPClient$HostnameResolver;->resolve(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-nez v5, :cond_96

    .line 93
    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveHost:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v0, " with "

    .line 105
    .line 106
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v0, "]\n"

    .line 113
    .line 114
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const/4 v2, 0x0

    .line 122
    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/net/SocketClient;->fireReplyReceived(ILjava/lang/String;)V
    :try_end_7c
    .catch Ljava/net/UnknownHostException; {:try_start_53 .. :try_end_7c} :catch_7e

    .line 123
    .line 124
    .line 125
    move-object v2, v4

    .line 126
    goto :goto_96

    .line 127
    :catch_7e
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    .line 128
    .line 129
    invoke-static {v3, p1}, Lai/onnxruntime/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-direct {v0, p1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v0

    .line 137
    :cond_88
    iget-object p1, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    .line 138
    .line 139
    if-nez p1, :cond_8e

    .line 140
    .line 141
    const/4 v2, 0x0

    .line 142
    goto :goto_96

    .line 143
    :cond_8e
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    :cond_96
    :goto_96
    iput-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveHost:Ljava/lang/String;

    .line 152
    .line 153
    iput v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->passivePort:I

    .line 154
    .line 155
    return-void

    .line 156
    :catch_9b
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    .line 157
    .line 158
    const-string v1, "Could not parse passive port information.\nServer Reply: "

    .line 159
    .line 160
    invoke-static {v1, p1}, Lai/onnxruntime/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-direct {v0, p1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v0

    .line 168
    :cond_a7
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    .line 169
    .line 170
    invoke-static {v3, p1}, Lai/onnxruntime/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-direct {v0, p1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw v0
.end method

.method public _retrieveFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)Z
    .registers 13

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_8

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_8
    const/4 p2, 0x0

    .line 10
    :try_start_9
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->fileType:I

    .line 11
    .line 12
    if-nez v0, :cond_20

    .line 13
    .line 14
    new-instance v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {p0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->getBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;-><init>(Ljava/io/InputStream;)V

    .line 25
    .line 26
    .line 27
    :goto_1a
    move-object v1, v0

    .line 28
    goto :goto_29

    .line 29
    :catchall_1c
    move-exception v0

    .line 30
    move-object p3, v0

    .line 31
    move-object p3, p2

    .line 32
    goto :goto_66

    .line 33
    :cond_20
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->getBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 38
    .line 39
    .line 40
    move-result-object v0
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_1c

    .line 41
    goto :goto_1a

    .line 42
    :goto_29
    :try_start_29
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveTimeout:Ljava/time/Duration;

    .line 43
    .line 44
    invoke-static {v0}, Lorg/apache/commons/net/ftp/DurationUtils;->isPositive(Ljava/time/Duration;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_41

    .line 49
    .line 50
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClient$CSL;

    .line 51
    .line 52
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveTimeout:Ljava/time/Duration;

    .line 53
    .line 54
    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveReplyTimeout:Ljava/time/Duration;

    .line 55
    .line 56
    invoke-direct {v0, p0, v2, v3}, Lorg/apache/commons/net/ftp/FTPClient$CSL;-><init>(Lorg/apache/commons/net/ftp/FTPClient;Ljava/time/Duration;Ljava/time/Duration;)V

    .line 57
    .line 58
    .line 59
    move-object p2, v0

    .line 60
    goto :goto_41

    .line 61
    :catchall_3c
    move-exception v0

    .line 62
    move-object p3, v0

    .line 63
    move-object p3, p2

    .line 64
    move-object p2, v1

    .line 65
    goto :goto_66

    .line 66
    :cond_41
    :goto_41
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getBufferSize()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-direct {p0, p2}, Lorg/apache/commons/net/ftp/FTPClient;->mergeListeners(Lorg/apache/commons/net/io/CopyStreamListener;)Lorg/apache/commons/net/io/CopyStreamListener;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    const/4 v7, 0x0

    .line 75
    const-wide/16 v4, -0x1

    .line 76
    .line 77
    move-object v2, p3

    .line 78
    invoke-static/range {v1 .. v7}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;Z)J
    :try_end_50
    .catchall {:try_start_29 .. :try_end_50} :catchall_3c

    .line 79
    .line 80
    .line 81
    :try_start_50
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    .line 85
    .line 86
    .line 87
    move-result p3
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_63

    .line 88
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 89
    .line 90
    .line 91
    if-eqz p2, :cond_62

    .line 92
    .line 93
    invoke-virtual {p2}, Lorg/apache/commons/net/ftp/FTPClient$CSL;->cleanUp()[I

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->cslDebug:[I

    .line 98
    .line 99
    :cond_62
    return p3

    .line 100
    :catchall_63
    move-exception v0

    .line 101
    move-object p3, v0

    .line 102
    goto :goto_6f

    .line 103
    :goto_66
    :try_start_66
    invoke-static {p2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 104
    .line 105
    .line 106
    throw v0
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_6a

    .line 107
    :catchall_6a
    move-exception v0

    .line 108
    move-object p2, v0

    .line 109
    move-object v8, p3

    .line 110
    move-object p3, p2

    .line 111
    move-object p2, v8

    .line 112
    :goto_6f
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 113
    .line 114
    .line 115
    if-eqz p2, :cond_7a

    .line 116
    .line 117
    invoke-virtual {p2}, Lorg/apache/commons/net/ftp/FTPClient$CSL;->cleanUp()[I

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->cslDebug:[I

    .line 122
    .line 123
    :cond_7a
    throw p3
.end method

.method public _retrieveFileStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_8

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_8
    iget p2, p0, Lorg/apache/commons/net/ftp/FTPClient;->fileType:I

    .line 10
    .line 11
    if-nez p2, :cond_1a

    .line 12
    .line 13
    new-instance p2, Lorg/apache/commons/net/io/FromNetASCIIInputStream;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->getBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p2, v0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;-><init>(Ljava/io/InputStream;)V

    .line 24
    .line 25
    .line 26
    goto :goto_1e

    .line 27
    :cond_1a
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    :goto_1e
    new-instance v0, Lorg/apache/commons/net/io/SocketInputStream;

    .line 32
    .line 33
    invoke-direct {v0, p1, p2}, Lorg/apache/commons/net/io/SocketInputStream;-><init>(Ljava/net/Socket;Ljava/io/InputStream;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public _storeFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Z
    .registers 12

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_8

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_8
    const/4 p2, 0x0

    .line 10
    :try_start_9
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->fileType:I

    .line 11
    .line 12
    if-nez v0, :cond_23

    .line 13
    .line 14
    new-instance v0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {p0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->getBufferedOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 25
    .line 26
    .line 27
    :goto_1a
    move-object v2, v0

    .line 28
    goto :goto_2c

    .line 29
    :catchall_1c
    move-exception v0

    .line 30
    move-object p1, v0

    .line 31
    goto :goto_70

    .line 32
    :catch_1f
    move-exception v0

    .line 33
    move-object p3, v0

    .line 34
    move-object p3, p2

    .line 35
    goto :goto_66

    .line 36
    :cond_23
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->getBufferedOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 41
    .line 42
    .line 43
    move-result-object v0
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2b} :catch_1f
    .catchall {:try_start_9 .. :try_end_2b} :catchall_1c

    .line 44
    goto :goto_1a

    .line 45
    :goto_2c
    :try_start_2c
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveTimeout:Ljava/time/Duration;

    .line 46
    .line 47
    invoke-static {v0}, Lorg/apache/commons/net/ftp/DurationUtils;->isPositive(Ljava/time/Duration;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_44

    .line 52
    .line 53
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClient$CSL;

    .line 54
    .line 55
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveTimeout:Ljava/time/Duration;

    .line 56
    .line 57
    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveReplyTimeout:Ljava/time/Duration;

    .line 58
    .line 59
    invoke-direct {v0, p0, v1, v3}, Lorg/apache/commons/net/ftp/FTPClient$CSL;-><init>(Lorg/apache/commons/net/ftp/FTPClient;Ljava/time/Duration;Ljava/time/Duration;)V

    .line 60
    .line 61
    .line 62
    move-object p2, v0

    .line 63
    goto :goto_44

    .line 64
    :catch_3f
    move-exception v0

    .line 65
    move-object p3, v0

    .line 66
    move-object p3, p2

    .line 67
    move-object p2, v2

    .line 68
    goto :goto_66

    .line 69
    :cond_44
    :goto_44
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getBufferSize()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-direct {p0, p2}, Lorg/apache/commons/net/ftp/FTPClient;->mergeListeners(Lorg/apache/commons/net/io/CopyStreamListener;)Lorg/apache/commons/net/io/CopyStreamListener;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    const/4 v7, 0x0

    .line 78
    const-wide/16 v4, -0x1

    .line 79
    .line 80
    move-object v1, p3

    .line 81
    invoke-static/range {v1 .. v7}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;Z)J

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    .line 91
    .line 92
    .line 93
    move-result p1
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_5d} :catch_3f
    .catchall {:try_start_2c .. :try_end_5d} :catchall_1c

    .line 94
    if-eqz p2, :cond_65

    .line 95
    .line 96
    invoke-virtual {p2}, Lorg/apache/commons/net/ftp/FTPClient$CSL;->cleanUp()[I

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    iput-object p2, p0, Lorg/apache/commons/net/ftp/FTPClient;->cslDebug:[I

    .line 101
    .line 102
    :cond_65
    return p1

    .line 103
    :goto_66
    :try_start_66
    invoke-static {p2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 104
    .line 105
    .line 106
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 107
    .line 108
    .line 109
    throw v0
    :try_end_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_6d

    .line 110
    :catchall_6d
    move-exception v0

    .line 111
    move-object p1, v0

    .line 112
    move-object p2, p3

    .line 113
    :goto_70
    if-eqz p2, :cond_78

    .line 114
    .line 115
    invoke-virtual {p2}, Lorg/apache/commons/net/ftp/FTPClient$CSL;->cleanUp()[I

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    iput-object p2, p0, Lorg/apache/commons/net/ftp/FTPClient;->cslDebug:[I

    .line 120
    .line 121
    :cond_78
    throw p1
.end method

.method public _storeFileStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_8

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_8
    iget p2, p0, Lorg/apache/commons/net/ftp/FTPClient;->fileType:I

    .line 10
    .line 11
    if-nez p2, :cond_1a

    .line 12
    .line 13
    new-instance p2, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->getBufferedOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p2, v0}, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 24
    .line 25
    .line 26
    goto :goto_1e

    .line 27
    :cond_1a
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    :goto_1e
    new-instance v0, Lorg/apache/commons/net/io/SocketOutputStream;

    .line 32
    .line 33
    invoke-direct {v0, p1, p2}, Lorg/apache/commons/net/io/SocketOutputStream;-><init>(Ljava/net/Socket;Ljava/io/OutputStream;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public abort()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->abor()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public allocate(I)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->allo(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public allocate(II)Z
    .registers 3

    .line 10
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->allo(II)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    return p1
.end method

.method public allocate(J)Z
    .registers 3

    .line 11
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->allo(J)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    return p1
.end method

.method public allocate(JI)Z
    .registers 4

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/net/ftp/FTP;->allo(JI)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    return p1
.end method

.method public appendFile(Ljava/lang/String;Ljava/io/InputStream;)Z
    .registers 4

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->APPE:Lorg/apache/commons/net/ftp/FTPCmd;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->storeFile(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;Ljava/io/InputStream;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public appendFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 3

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->APPE:Lorg/apache/commons/net/ftp/FTPCmd;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/io/OutputStream;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public changeToParentDirectory()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->cdup()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public changeWorkingDirectory(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->cwd(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public completePendingCommand()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReply()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->ftpClientConfig:Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 2
    .line 3
    return-void
.end method

.method public createParser(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 2
    .line 3
    if-eqz v0, :cond_10

    .line 4
    .line 5
    if-eqz p1, :cond_f

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->entryParserKey:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_f

    .line 14
    .line 15
    goto :goto_10

    .line 16
    :cond_f
    return-void

    .line 17
    :cond_10
    :goto_10
    if-eqz p1, :cond_1d

    .line 18
    .line 19
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->parserFactory:Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;->createFileEntryParser(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 26
    .line 27
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->entryParserKey:Ljava/lang/String;

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1d
    iget-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->ftpClientConfig:Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 31
    .line 32
    if-eqz p1, :cond_3e

    .line 33
    .line 34
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_3e

    .line 43
    .line 44
    iget-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->parserFactory:Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;

    .line 45
    .line 46
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->ftpClientConfig:Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 47
    .line 48
    invoke-interface {p1, v0}, Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;->createFileEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 53
    .line 54
    iget-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->ftpClientConfig:Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 55
    .line 56
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->entryParserKey:Ljava/lang/String;

    .line 61
    .line 62
    return-void

    .line 63
    :cond_3e
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getSystemTypeOverride()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->ftpClientConfig:Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 68
    .line 69
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->parserFactory:Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;

    .line 70
    .line 71
    if-eqz v0, :cond_56

    .line 72
    .line 73
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 74
    .line 75
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->ftpClientConfig:Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 76
    .line 77
    invoke-direct {v0, p1, v2}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {v1, v0}, Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;->createFileEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 85
    .line 86
    goto :goto_5c

    .line 87
    :cond_56
    invoke-interface {v1, p1}, Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;->createFileEntryParser(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 92
    .line 93
    :goto_5c
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->entryParserKey:Ljava/lang/String;

    .line 94
    .line 95
    return-void
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->dele(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public disconnect()V
    .registers 1

    .line 1
    invoke-super {p0}, Lorg/apache/commons/net/ftp/FTP;->disconnect()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->initDefaults()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public doCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public doCommandAsStrings(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_f

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReplyStrings()[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method public enterLocalActiveMode()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataConnectionMode:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveHost:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->passivePort:I

    .line 9
    .line 10
    return-void
.end method

.method public enterLocalPassiveMode()V
    .registers 2

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataConnectionMode:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveHost:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->passivePort:I

    .line 9
    .line 10
    return-void
.end method

.method public enterRemoteActiveMode(Ljava/net/InetAddress;I)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->port(Ljava/net/InetAddress;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_14

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataConnectionMode:I

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    iput-object p2, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveHost:Ljava/lang/String;

    .line 16
    .line 17
    const/4 p2, -0x1

    .line 18
    iput p2, p0, Lorg/apache/commons/net/ftp/FTPClient;->passivePort:I

    .line 19
    .line 20
    return p1

    .line 21
    :cond_14
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method public enterRemotePassiveMode()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->pasv()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xe3

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eq v0, v1, :cond_a

    .line 9
    .line 10
    return v2

    .line 11
    :cond_a
    const/4 v0, 0x3

    .line 12
    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataConnectionMode:I

    .line 13
    .line 14
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->_parsePassiveModeReply(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    return v0
.end method

.method public featureValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->featureValues(Ljava/lang/String;)[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_a

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    aget-object p1, p1, v0

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_a
    const/4 p1, 0x0

    .line 12
    return-object p1
.end method

.method public featureValues(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->initFeatureMap()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_8
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->featuresMap:Ljava/util/HashMap;

    .line 10
    .line 11
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 12
    .line 13
    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/util/Set;

    .line 22
    .line 23
    if-eqz p1, :cond_21

    .line 24
    .line 25
    sget-object v0, Lorg/apache/commons/net/util/NetConstants;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 26
    .line 27
    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, [Ljava/lang/String;

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_21
    return-object v1
.end method

.method public features()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->feat()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getActivePort()I
    .registers 4

    .line 1
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->activeMinPort:I

    .line 2
    .line 3
    if-lez v0, :cond_18

    .line 4
    .line 5
    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->activeMaxPort:I

    .line 6
    .line 7
    if-lt v1, v0, :cond_18

    .line 8
    .line 9
    if-ne v1, v0, :cond_b

    .line 10
    .line 11
    return v1

    .line 12
    :cond_b
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->random:Ljava/util/Random;

    .line 13
    .line 14
    sub-int/2addr v1, v0

    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->activeMinPort:I

    .line 22
    .line 23
    add-int/2addr v0, v1

    .line 24
    return v0

    .line 25
    :cond_18
    const/4 v0, 0x0

    .line 26
    return v0
.end method

.method public getAutodetectUTF8()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->autoDetectEncoding:Z

    .line 2
    .line 3
    return v0
.end method

.method public getBufferSize()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->bufferSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getControlKeepAliveReplyTimeout()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveReplyTimeout:Ljava/time/Duration;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/apache/commons/net/ftp/DurationUtils;->toMillisInt(Ljava/time/Duration;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getControlKeepAliveReplyTimeoutDuration()Ljava/time/Duration;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveReplyTimeout:Ljava/time/Duration;

    .line 2
    .line 3
    return-object v0
.end method

.method public getControlKeepAliveTimeout()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveTimeout:Ljava/time/Duration;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/apache/commons/net/util/a;->e(Ljava/time/Duration;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getControlKeepAliveTimeoutDuration()Ljava/time/Duration;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveTimeout:Ljava/time/Duration;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCopyStreamListener()Lorg/apache/commons/net/io/CopyStreamListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->copyStreamListener:Lorg/apache/commons/net/io/CopyStreamListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCslDebug()[I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->cslDebug:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public getDataConnectionMode()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataConnectionMode:I

    .line 2
    .line 3
    return v0
.end method

.method public getDataTimeout()Ljava/time/Duration;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataTimeout:Ljava/time/Duration;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHostAddress()Ljava/net/InetAddress;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->activeExternalHost:Ljava/net/InetAddress;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getLocalAddress()Ljava/net/InetAddress;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getListArguments(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getListHiddenFiles()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1c

    .line 6
    .line 7
    if-eqz p1, :cond_1a

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, 0x3

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 18
    .line 19
    .line 20
    const-string v1, "-a "

    .line 21
    .line 22
    invoke-static {v0, v1, p1}, Lai/onnxruntime/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_1a
    const-string p1, "-a"

    .line 28
    .line 29
    :cond_1c
    return-object p1
.end method

.method public getListHiddenFiles()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->listHiddenFiles:Z

    .line 2
    .line 3
    return v0
.end method

.method public getModificationTime(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->mdtm(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_15

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->getReplyString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v0, 0x4

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_15
    const/4 p1, 0x0

    .line 23
    return-object p1
.end method

.method public getPassiveHost()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveHost:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPassiveLocalIPAddress()Ljava/net/InetAddress;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveLocalHost:Ljava/net/InetAddress;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPassivePort()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->passivePort:I

    .line 2
    .line 3
    return v0
.end method

.method public getReceiveDataSocketBufferSize()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->receiveDataSocketBufferSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getReportHostAddress()Ljava/net/InetAddress;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->reportActiveExternalHost:Ljava/net/InetAddress;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getHostAddress()Ljava/net/InetAddress;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getRestartOffset()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->restartOffset:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSendDataSocketBufferSize()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->sendDataSocketBufferSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getSize(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->size(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_15

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->getReplyString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v0, 0x4

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_15
    const/4 p1, 0x0

    .line 23
    return-object p1
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->stat()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_f

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReplyString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public getStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 18
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->stat(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 19
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReplyString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSystemName()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->systemName:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_23

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->syst()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_23

    .line 14
    .line 15
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/lit8 v1, v1, -0x1

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/String;

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->systemName:Ljava/lang/String;

    .line 35
    .line 36
    :cond_23
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->systemName:Ljava/lang/String;

    .line 37
    .line 38
    return-object v0
.end method

.method public getSystemType()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->systemName:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_3a

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->syst()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_24

    .line 14
    .line 15
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/lit8 v1, v1, -0x1

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/String;

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->systemName:Ljava/lang/String;

    .line 35
    .line 36
    goto :goto_3a

    .line 37
    :cond_24
    const-string v0, "org.apache.commons.net.ftp.systemType.default"

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_2f

    .line 44
    .line 45
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->systemName:Ljava/lang/String;

    .line 46
    .line 47
    goto :goto_3a

    .line 48
    :cond_2f
    const-string v0, "Unable to determine system type - response: "

    .line 49
    .line 50
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReplyString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1, v0}, Lai/onnxruntime/b;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    return-object v0

    .line 59
    :cond_3a
    :goto_3a
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->systemName:Ljava/lang/String;

    .line 60
    .line 61
    return-object v0
.end method

.method public getSystemTypeOverride()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "org.apache.commons.net.ftp.systemType"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_19

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getSystemType()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Lorg/apache/commons/net/ftp/FTPClient;->getOverrideProperties()Ljava/util/Properties;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_19

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_19

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_19
    return-object v0
.end method

.method public hasFeature(Ljava/lang/String;)Z
    .registers 4

    .line 31
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->initFeatureMap()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 32
    :cond_8
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->featuresMap:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->initFeatureMap()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    return v1

    .line 9
    :cond_8
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->featuresMap:Ljava/util/HashMap;

    .line 10
    .line 11
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 12
    .line 13
    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/util/Set;

    .line 22
    .line 23
    if-eqz p1, :cond_1d

    .line 24
    .line 25
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_1d
    return v1
.end method

.method public hasFeature(Lorg/apache/commons/net/ftp/FTPCmd;)Z
    .registers 2

    .line 33
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->hasFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public initiateListParsing()Lorg/apache/commons/net/ftp/FTPListParseEngine;
    .registers 2

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->initiateListParsing(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object v0

    return-object v0
.end method

.method public initiateListParsing(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;
    .registers 3

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->initiateListParsing(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object p1

    return-object p1
.end method

.method public initiateListParsing(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;
    .registers 3

    .line 46
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->createParser(Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->initiateListParsing(Lorg/apache/commons/net/ftp/FTPFileEntryParser;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object p1

    return-object p1
.end method

.method public initiateMListParsing()Lorg/apache/commons/net/ftp/FTPListParseEngine;
    .registers 2

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->initiateMListParsing(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object v0

    return-object v0
.end method

.method public initiateMListParsing(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;
    .registers 5

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->MLSD:Lorg/apache/commons/net/ftp/FTPCmd;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/net/Socket;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lorg/apache/commons/net/ftp/FTPListParseEngine;

    .line 8
    .line 9
    invoke-static {}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->getInstance()Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->ftpClientConfig:Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/ftp/FTPListParseEngine;-><init>(Lorg/apache/commons/net/ftp/FTPFileEntryParser;Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 16
    .line 17
    .line 18
    if-nez p1, :cond_14

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_14
    :try_start_14
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getControlEncoding()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->readServerList(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_26

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    .line 36
    .line 37
    .line 38
    return-object v0

    .line 39
    :catchall_26
    move-exception v0

    .line 40
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    .line 44
    .line 45
    .line 46
    throw v0
.end method

.method public isIpAddressFromPasvResponse()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->ipAddressFromPasvResponse:Z

    .line 2
    .line 3
    return v0
.end method

.method public isRemoteVerificationEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->remoteVerificationEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isUseEPSVwithIPv4()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->useEPSVwithIPv4:Z

    .line 2
    .line 3
    return v0
.end method

.method public listDirectories()[Lorg/apache/commons/net/ftp/FTPFile;
    .registers 2

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->listDirectories(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method

.method public listDirectories(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;
    .registers 3

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPFileFilters;->DIRECTORIES:Lorg/apache/commons/net/ftp/FTPFileFilter;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPFileFilter;)[Lorg/apache/commons/net/ftp/FTPFile;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public listFiles()[Lorg/apache/commons/net/ftp/FTPFile;
    .registers 2

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method

.method public listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->initiateListParsing(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public listFiles(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPFileFilter;)[Lorg/apache/commons/net/ftp/FTPFile;
    .registers 4

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->initiateListParsing(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles(Lorg/apache/commons/net/ftp/FTPFileFilter;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    return-object p1
.end method

.method public listHelp()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->help()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_f

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReplyString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public listHelp(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 18
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->help(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReplyString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public listNames()[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->listNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public listNames(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->NLST:Lorg/apache/commons/net/ftp/FTPCmd;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->getListArguments(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/net/Socket;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-nez p1, :cond_13

    .line 13
    .line 14
    if-eqz p1, :cond_12

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 17
    .line 18
    .line 19
    :cond_12
    return-object v0

    .line 20
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 21
    .line 22
    .line 23
    move-result-object v1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_25

    .line 24
    :try_start_17
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getControlEncoding()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v1, v2}, Lorg/apache/commons/io/IOUtils;->readLines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v2
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_3a

    .line 32
    if-eqz v1, :cond_27

    .line 33
    .line 34
    :try_start_21
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    .line 35
    .line 36
    .line 37
    goto :goto_27

    .line 38
    :catchall_25
    move-exception v0

    .line 39
    goto :goto_46

    .line 40
    :cond_27
    :goto_27
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_39

    .line 48
    .line 49
    sget-object p1, Lorg/apache/commons/net/util/NetConstants;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 50
    .line 51
    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, [Ljava/lang/String;

    .line 56
    .line 57
    return-object p1

    .line 58
    :cond_39
    return-object v0

    .line 59
    :catchall_3a
    move-exception v0

    .line 60
    if-eqz v1, :cond_45

    .line 61
    .line 62
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    .line 63
    .line 64
    .line 65
    goto :goto_45

    .line 66
    :catchall_41
    move-exception v1

    .line 67
    :try_start_42
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    :cond_45
    :goto_45
    throw v0
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_25

    .line 71
    :goto_46
    :try_start_46
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    .line 72
    .line 73
    .line 74
    goto :goto_4e

    .line 75
    :catchall_4a
    move-exception p1

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    :goto_4e
    throw v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 54
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->user(Ljava/lang/String;)I

    .line 55
    iget p1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    return p1

    .line 56
    :cond_d
    iget p1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveIntermediate(I)Z

    move-result p1

    if-nez p1, :cond_17

    const/4 p1, 0x0

    return p1

    .line 57
    :cond_17
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/FTP;->pass(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    return p1
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->user(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    .line 5
    .line 6
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x1

    .line 11
    if-eqz p1, :cond_d

    .line 12
    .line 13
    return v0

    .line 14
    :cond_d
    iget p1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    .line 15
    .line 16
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveIntermediate(I)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v1, 0x0

    .line 21
    if-nez p1, :cond_17

    .line 22
    .line 23
    return v1

    .line 24
    :cond_17
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/FTP;->pass(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget p1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    .line 28
    .line 29
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_23

    .line 34
    .line 35
    return v0

    .line 36
    :cond_23
    iget p1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    .line 37
    .line 38
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveIntermediate(I)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_2c

    .line 43
    .line 44
    return v1

    .line 45
    :cond_2c
    invoke-virtual {p0, p3}, Lorg/apache/commons/net/ftp/FTP;->acct(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    return p1
.end method

.method public logout()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->quit()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public makeDirectory(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->mkd(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public mdtmCalendar(Ljava/lang/String;)Ljava/util/Calendar;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->getModificationTime(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_b

    .line 6
    .line 7
    invoke-static {p1}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->parseGMTdateTime(Ljava/lang/String;)Ljava/util/Calendar;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method

.method public mdtmFile(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->getModificationTime(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_19

    .line 6
    .line 7
    new-instance v1, Lorg/apache/commons/net/ftp/FTPFile;

    .line 8
    .line 9
    invoke-direct {v1}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->parseGMTdateTime(Ljava/lang/String;)Ljava/util/Calendar;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v1, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    return-object p1
.end method

.method public mdtmInstant(Ljava/lang/String;)Ljava/time/Instant;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->getModificationTime(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_b

    .line 6
    .line 7
    invoke-static {p1}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->parseGmtInstant(Ljava/lang/String;)Ljava/time/Instant;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method

.method public mlistDir()[Lorg/apache/commons/net/ftp/FTPFile;
    .registers 2

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->mlistDir(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method

.method public mlistDir(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->initiateMListParsing(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public mlistDir(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPFileFilter;)[Lorg/apache/commons/net/ftp/FTPFile;
    .registers 3

    .line 11
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->initiateMListParsing(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles(Lorg/apache/commons/net/ftp/FTPFileFilter;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    return-object p1
.end method

.method public mlistFile(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .registers 5

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->MLST:Lorg/apache/commons/net/ftp/FTPCmd;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_42

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->getReplyString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/16 v1, 0x20

    .line 24
    .line 25
    if-eq v0, v1, :cond_20

    .line 26
    .line 27
    const-string v0, " "

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :cond_20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x3

    .line 38
    if-lt v0, v1, :cond_34

    .line 39
    .line 40
    const-string v0, "^\\s+"

    .line 41
    .line 42
    const-string v1, ""

    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->parseEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :cond_34
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    .line 54
    .line 55
    const-string v1, "Invalid server reply (MLST): \'"

    .line 56
    .line 57
    const-string v2, "\'"

    .line 58
    .line 59
    invoke-static {v1, p1, v2}, Lai/onnxruntime/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {v0, p1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_42
    const/4 p1, 0x0

    .line 68
    return-object p1
.end method

.method public printWorkingDirectory()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->pwd()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x101

    .line 6
    .line 7
    if-eq v0, v1, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_a
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPClient;->parsePathname(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public reinitialize()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->rein()I

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    .line 5
    .line 6
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_20

    .line 11
    .line 12
    iget v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    .line 13
    .line 14
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1e

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReply()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1e

    .line 29
    .line 30
    goto :goto_20

    .line 31
    :cond_1e
    const/4 v0, 0x0

    .line 32
    return v0

    .line 33
    :cond_20
    :goto_20
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->initDefaults()V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    return v0
.end method

.method public remoteAppend(Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataConnectionMode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_b

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-ne v0, v1, :cond_9

    .line 8
    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    return p1

    .line 12
    :cond_b
    :goto_b
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->appe(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public remoteRetrieve(Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataConnectionMode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_b

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-ne v0, v1, :cond_9

    .line 8
    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    return p1

    .line 12
    :cond_b
    :goto_b
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->retr(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public remoteStore(Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataConnectionMode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_b

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-ne v0, v1, :cond_9

    .line 8
    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    return p1

    .line 12
    :cond_b
    :goto_b
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->stor(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public remoteStoreUnique()Z
    .registers 3

    .line 1
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataConnectionMode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_b

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-ne v0, v1, :cond_9

    .line 8
    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_b
    :goto_b
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->stou()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public remoteStoreUnique(Ljava/lang/String;)Z
    .registers 4

    .line 21
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataConnectionMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    return p1

    .line 22
    :cond_b
    :goto_b
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->stou(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result p1

    return p1
.end method

.method public removeDirectory(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->rmd(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->rnfr(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveIntermediate(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_c

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_c
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/FTP;->rnto(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public restart(J)Z
    .registers 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->restartOffset:J

    .line 4
    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->rest(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveIntermediate(I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public retrieveFile(Ljava/lang/String;Ljava/io/OutputStream;)Z
    .registers 4

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->RETR:Lorg/apache/commons/net/ftp/FTPCmd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPCmd;->getCommand()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_retrieveFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->RETR:Lorg/apache/commons/net/ftp/FTPCmd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPCmd;->getCommand()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->_retrieveFileStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public sendNoOp()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->noop()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public sendSiteCommand(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->site(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public setActiveExternalIPAddress(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->activeExternalHost:Ljava/net/InetAddress;

    .line 6
    .line 7
    return-void
.end method

.method public setActivePortRange(II)V
    .registers 3

    .line 1
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->activeMinPort:I

    .line 2
    .line 3
    iput p2, p0, Lorg/apache/commons/net/ftp/FTPClient;->activeMaxPort:I

    .line 4
    .line 5
    return-void
.end method

.method public setAutodetectUTF8(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->autoDetectEncoding:Z

    .line 2
    .line 3
    return-void
.end method

.method public setBufferSize(I)V
    .registers 2

    .line 1
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->bufferSize:I

    .line 2
    .line 3
    return-void
.end method

.method public setControlKeepAliveReplyTimeout(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    int-to-long v0, p1

    .line 2
    invoke-static {v0, v1}, Lorg/apache/commons/io/file/e;->o(J)Ljava/time/Duration;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveReplyTimeout:Ljava/time/Duration;

    .line 7
    .line 8
    return-void
.end method

.method public setControlKeepAliveReplyTimeout(Ljava/time/Duration;)V
    .registers 2

    .line 9
    invoke-static {p1}, Lorg/apache/commons/net/ftp/DurationUtils;->zeroIfNull(Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveReplyTimeout:Ljava/time/Duration;

    return-void
.end method

.method public setControlKeepAliveTimeout(J)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    invoke-static {p1, p2}, Lkotlin/io/path/f;->n(J)Ljava/time/Duration;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveTimeout:Ljava/time/Duration;

    return-void
.end method

.method public setControlKeepAliveTimeout(Ljava/time/Duration;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lorg/apache/commons/net/ftp/DurationUtils;->zeroIfNull(Ljava/time/Duration;)Ljava/time/Duration;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveTimeout:Ljava/time/Duration;

    .line 6
    .line 7
    return-void
.end method

.method public setCopyStreamListener(Lorg/apache/commons/net/io/CopyStreamListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->copyStreamListener:Lorg/apache/commons/net/io/CopyStreamListener;

    .line 2
    .line 3
    return-void
.end method

.method public setDataTimeout(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    int-to-long v0, p1

    .line 2
    invoke-static {v0, v1}, Lorg/apache/commons/io/file/e;->o(J)Ljava/time/Duration;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataTimeout:Ljava/time/Duration;

    .line 7
    .line 8
    return-void
.end method

.method public setDataTimeout(Ljava/time/Duration;)V
    .registers 2

    .line 9
    invoke-static {p1}, Lorg/apache/commons/net/ftp/DurationUtils;->zeroIfNull(Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataTimeout:Ljava/time/Duration;

    return-void
.end method

.method public setFileStructure(I)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->stru(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_e

    .line 10
    .line 11
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->fileStructure:I

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public setFileTransferMode(I)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->mode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_e

    .line 10
    .line 11
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->fileTransferMode:I

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public setFileType(I)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->type(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_11

    .line 10
    .line 11
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->fileType:I

    .line 12
    .line 13
    const/4 p1, 0x4

    .line 14
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->formatOrByteSize:I

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_11
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method public setFileType(II)Z
    .registers 4

    .line 20
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->type(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 21
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->fileType:I

    .line 22
    iput p2, p0, Lorg/apache/commons/net/ftp/FTPClient;->formatOrByteSize:I

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public setIpAddressFromPasvResponse(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->ipAddressFromPasvResponse:Z

    .line 2
    .line 3
    return-void
.end method

.method public setListHiddenFiles(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->listHiddenFiles:Z

    .line 2
    .line 3
    return-void
.end method

.method public setModificationTime(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->mfmt(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public setParserFactory(Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->parserFactory:Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;

    .line 2
    .line 3
    return-void
.end method

.method public setPassiveLocalIPAddress(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveLocalHost:Ljava/net/InetAddress;

    .line 6
    .line 7
    return-void
.end method

.method public setPassiveLocalIPAddress(Ljava/net/InetAddress;)V
    .registers 2

    .line 8
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveLocalHost:Ljava/net/InetAddress;

    return-void
.end method

.method public setPassiveNatWorkaround(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    if-eqz p1, :cond_8

    .line 2
    .line 3
    new-instance p1, Lorg/apache/commons/net/ftp/FTPClient$NatServerResolverImpl;

    .line 4
    .line 5
    invoke-direct {p1, p0}, Lorg/apache/commons/net/ftp/FTPClient$NatServerResolverImpl;-><init>(Lorg/apache/commons/net/ftp/FTPClient;)V

    .line 6
    .line 7
    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 p1, 0x0

    .line 10
    :goto_9
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveNatWorkaroundStrategy:Lorg/apache/commons/net/ftp/FTPClient$HostnameResolver;

    .line 11
    .line 12
    return-void
.end method

.method public setPassiveNatWorkaroundStrategy(Lorg/apache/commons/net/ftp/FTPClient$HostnameResolver;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveNatWorkaroundStrategy:Lorg/apache/commons/net/ftp/FTPClient$HostnameResolver;

    .line 2
    .line 3
    return-void
.end method

.method public setReceieveDataSocketBufferSize(I)V
    .registers 2

    .line 1
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->receiveDataSocketBufferSize:I

    .line 2
    .line 3
    return-void
.end method

.method public setRemoteVerificationEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->remoteVerificationEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setReportActiveExternalIPAddress(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->reportActiveExternalHost:Ljava/net/InetAddress;

    .line 6
    .line 7
    return-void
.end method

.method public setRestartOffset(J)V
    .registers 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_8

    .line 6
    .line 7
    iput-wide p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->restartOffset:J

    .line 8
    .line 9
    :cond_8
    return-void
.end method

.method public setSendDataSocketBufferSize(I)V
    .registers 2

    .line 1
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->sendDataSocketBufferSize:I

    .line 2
    .line 3
    return-void
.end method

.method public setUseEPSVwithIPv4(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->useEPSVwithIPv4:Z

    .line 2
    .line 3
    return-void
.end method

.method public storeFile(Ljava/lang/String;Ljava/io/InputStream;)Z
    .registers 4

    .line 10
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STOR:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->storeFile(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 3

    .line 10
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STOR:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public storeUniqueFile(Ljava/io/InputStream;)Z
    .registers 4

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STOU:Lorg/apache/commons/net/ftp/FTPCmd;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/net/ftp/FTPClient;->storeFile(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;Ljava/io/InputStream;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public storeUniqueFile(Ljava/lang/String;Ljava/io/InputStream;)Z
    .registers 4

    .line 9
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STOU:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->storeFile(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public storeUniqueFileStream()Ljava/io/OutputStream;
    .registers 3

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STOU:Lorg/apache/commons/net/ftp/FTPCmd;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/io/OutputStream;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public storeUniqueFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 3

    .line 9
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STOU:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public structureMount(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->smnt(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
