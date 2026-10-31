.class public Lorg/apache/commons/net/imap/IMAPSClient;
.super Lorg/apache/commons/net/imap/IMAPClient;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final DEFAULT_IMAPS_PORT:I = 0x3e1

.field public static final DEFAULT_PROTOCOL:Ljava/lang/String; = "TLS"


# instance fields
.field private context:Ljavax/net/ssl/SSLContext;

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private final isImplicit:Z

.field private keyManager:Ljavax/net/ssl/KeyManager;

.field private final protocol:Ljava/lang/String;

.field private protocols:[Ljava/lang/String;

.field private suites:[Ljava/lang/String;

.field private tlsEndpointChecking:Z

.field private trustManager:Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 21
    const-string v0, "TLS"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/imap/IMAPSClient;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/imap/IMAPSClient;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/imap/IMAPSClient;-><init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/imap/IMAPClient;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3e1

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/SocketClient;->setDefaultPort(I)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/apache/commons/net/imap/IMAPSClient;->protocol:Ljava/lang/String;

    .line 10
    .line 11
    iput-boolean p2, p0, Lorg/apache/commons/net/imap/IMAPSClient;->isImplicit:Z

    .line 12
    .line 13
    iput-object p3, p0, Lorg/apache/commons/net/imap/IMAPSClient;->context:Ljavax/net/ssl/SSLContext;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .registers 3

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/imap/IMAPSClient;-><init>(ZLjavax/net/ssl/SSLContext;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    .line 16
    const-string v0, "TLS"

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/imap/IMAPSClient;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(ZLjavax/net/ssl/SSLContext;)V
    .registers 4

    .line 17
    const-string v0, "TLS"

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/imap/IMAPSClient;-><init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V

    return-void
.end method

.method private getKeyManager()Ljavax/net/ssl/KeyManager;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->keyManager:Ljavax/net/ssl/KeyManager;

    .line 2
    .line 3
    return-object v0
.end method

.method private initSSLContext()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->context:Ljavax/net/ssl/SSLContext;

    .line 2
    .line 3
    if-nez v0, :cond_14

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->protocol:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Lorg/apache/commons/net/imap/IMAPSClient;->getKeyManager()Ljavax/net/ssl/KeyManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAPSClient;->getTrustManager()Ljavax/net/ssl/TrustManager;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {v0, v1, v2}, Lorg/apache/commons/net/util/SSLContextUtils;->createSSLContext(Ljava/lang/String;Ljavax/net/ssl/KeyManager;Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLContext;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->context:Ljavax/net/ssl/SSLContext;

    .line 20
    .line 21
    :cond_14
    return-void
.end method

.method private performSSLNegotiation()V
    .registers 7

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/imap/IMAPSClient;->initSSLContext()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->context:Ljavax/net/ssl/SSLContext;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lorg/apache/commons/net/SocketClient;->_hostname_:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v1, :cond_e

    .line 13
    .line 14
    goto :goto_16

    .line 15
    :cond_e
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getRemoteAddress()Ljava/net/InetAddress;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_16
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getRemotePort()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iget-object v3, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    invoke-virtual {v0, v3, v1, v2, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 35
    .line 36
    invoke-virtual {v0, v4}, Ljavax/net/ssl/SSLSocket;->setEnableSessionCreation(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v4}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 40
    .line 41
    .line 42
    iget-boolean v2, p0, Lorg/apache/commons/net/imap/IMAPSClient;->tlsEndpointChecking:Z

    .line 43
    .line 44
    if-eqz v2, :cond_30

    .line 45
    .line 46
    invoke-static {v0}, Lorg/apache/commons/net/util/SSLSocketUtils;->enableEndpointNameVerification(Ljavax/net/ssl/SSLSocket;)Z

    .line 47
    .line 48
    .line 49
    :cond_30
    iget-object v2, p0, Lorg/apache/commons/net/imap/IMAPSClient;->protocols:[Ljava/lang/String;

    .line 50
    .line 51
    if-eqz v2, :cond_37

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_37
    iget-object v2, p0, Lorg/apache/commons/net/imap/IMAPSClient;->suites:[Ljava/lang/String;

    .line 57
    .line 58
    if-eqz v2, :cond_3e

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_3e
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iput-object v2, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iput-object v2, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 79
    .line 80
    new-instance v2, Lorg/apache/commons/net/io/CRLFLineReader;

    .line 81
    .line 82
    new-instance v3, Ljava/io/InputStreamReader;

    .line 83
    .line 84
    iget-object v4, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    .line 85
    .line 86
    sget-object v5, Lorg/apache/commons/net/imap/IMAP;->__DEFAULT_ENCODING:Ljava/lang/String;

    .line 87
    .line 88
    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {v2, v3}, Lorg/apache/commons/net/io/CRLFLineReader;-><init>(Ljava/io/Reader;)V

    .line 92
    .line 93
    .line 94
    iput-object v2, p0, Lorg/apache/commons/net/imap/IMAP;->_reader:Ljava/io/BufferedReader;

    .line 95
    .line 96
    new-instance v2, Ljava/io/BufferedWriter;

    .line 97
    .line 98
    new-instance v3, Ljava/io/OutputStreamWriter;

    .line 99
    .line 100
    iget-object v4, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 101
    .line 102
    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 106
    .line 107
    .line 108
    iput-object v2, p0, Lorg/apache/commons/net/imap/IMAP;->__writer:Ljava/io/BufferedWriter;

    .line 109
    .line 110
    iget-object v2, p0, Lorg/apache/commons/net/imap/IMAPSClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 111
    .line 112
    if-eqz v2, :cond_84

    .line 113
    .line 114
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-interface {v2, v1, v0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_7c

    .line 123
    .line 124
    goto :goto_84

    .line 125
    :cond_7c
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    .line 126
    .line 127
    const-string v1, "Hostname doesn\'t match certificate"

    .line 128
    .line 129
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v0

    .line 133
    :cond_84
    :goto_84
    return-void
.end method


# virtual methods
.method public _connectAction_()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->isImplicit:Z

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-direct {p0}, Lorg/apache/commons/net/imap/IMAPSClient;->performSSLNegotiation()V

    .line 6
    .line 7
    .line 8
    :cond_7
    invoke-super {p0}, Lorg/apache/commons/net/imap/IMAP;->_connectAction_()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public execTLS()Z
    .registers 2

    .line 1
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->STARTTLS:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/apache/commons/net/imap/IMAPCommand;->getCommand(Lorg/apache/commons/net/imap/IMAPCommand;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAP;->sendCommand(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_e

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return v0

    .line 15
    :cond_e
    invoke-direct {p0}, Lorg/apache/commons/net/imap/IMAPSClient;->performSSLNegotiation()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    .line 2
    .line 3
    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    .line 4
    .line 5
    if-eqz v1, :cond_d

    .line 6
    .line 7
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    .line 2
    .line 3
    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    .line 4
    .line 5
    if-eqz v1, :cond_d

    .line 6
    .line 7
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTrustManager()Ljavax/net/ssl/TrustManager;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->trustManager:Ljavax/net/ssl/TrustManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public isEndpointCheckingEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->tlsEndpointChecking:Z

    .line 2
    .line 3
    return v0
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, [Ljava/lang/String;

    .line 6
    .line 7
    iput-object p1, p0, Lorg/apache/commons/net/imap/IMAPSClient;->suites:[Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, [Ljava/lang/String;

    .line 6
    .line 7
    iput-object p1, p0, Lorg/apache/commons/net/imap/IMAPSClient;->protocols:[Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public setEndpointCheckingEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/net/imap/IMAPSClient;->tlsEndpointChecking:Z

    .line 2
    .line 3
    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/apache/commons/net/imap/IMAPSClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 2
    .line 3
    return-void
.end method

.method public setKeyManager(Ljavax/net/ssl/KeyManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/apache/commons/net/imap/IMAPSClient;->keyManager:Ljavax/net/ssl/KeyManager;

    .line 2
    .line 3
    return-void
.end method

.method public setTrustManager(Ljavax/net/ssl/TrustManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/apache/commons/net/imap/IMAPSClient;->trustManager:Ljavax/net/ssl/TrustManager;

    .line 2
    .line 3
    return-void
.end method
