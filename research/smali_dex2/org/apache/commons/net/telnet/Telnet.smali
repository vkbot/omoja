.class Lorg/apache/commons/net/telnet/Telnet;
.super Lorg/apache/commons/net/SocketClient;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field static final COMMAND_AYT:[B

.field static final COMMAND_DO:[B

.field static final COMMAND_DONT:[B

.field static final COMMAND_IS:[B

.field static final COMMAND_SB:[B

.field static final COMMAND_SE:[B

.field static final COMMAND_WILL:[B

.field static final COMMAND_WONT:[B

.field static final DEFAULT_PORT:I = 0x17

.field static final DO_MASK:I = 0x2

.field static final NUL:C = '\u0000'

.field static final REQUESTED_DO_MASK:I = 0x8

.field static final REQUESTED_WILL_MASK:I = 0x4

.field protected static final TERMINAL_TYPE:I = 0x18

.field protected static final TERMINAL_TYPE_IS:I = 0x0

.field protected static final TERMINAL_TYPE_SEND:I = 0x1

.field static final WILL_MASK:I = 0x1

.field static final debug:Z = false

.field static final debugoptions:Z = false


# instance fields
.field private volatile aytFlag:Z

.field private final aytMonitor:Ljava/lang/Object;

.field private final doResponse:[I

.field private notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

.field private final optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

.field private final options:[I

.field private volatile spyStream:Ljava/io/OutputStream;

.field private terminalType:Ljava/lang/String;

.field private final willResponse:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    fill-array-data v1, :array_3a

    .line 5
    .line 6
    .line 7
    sput-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_DO:[B

    .line 8
    .line 9
    new-array v1, v0, [B

    .line 10
    .line 11
    fill-array-data v1, :array_40

    .line 12
    .line 13
    .line 14
    sput-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_DONT:[B

    .line 15
    .line 16
    new-array v1, v0, [B

    .line 17
    .line 18
    fill-array-data v1, :array_46

    .line 19
    .line 20
    .line 21
    sput-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_WILL:[B

    .line 22
    .line 23
    new-array v1, v0, [B

    .line 24
    .line 25
    fill-array-data v1, :array_4c

    .line 26
    .line 27
    .line 28
    sput-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_WONT:[B

    .line 29
    .line 30
    new-array v1, v0, [B

    .line 31
    .line 32
    fill-array-data v1, :array_52

    .line 33
    .line 34
    .line 35
    sput-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_SB:[B

    .line 36
    .line 37
    new-array v1, v0, [B

    .line 38
    .line 39
    fill-array-data v1, :array_58

    .line 40
    .line 41
    .line 42
    sput-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_SE:[B

    .line 43
    .line 44
    new-array v1, v0, [B

    .line 45
    .line 46
    fill-array-data v1, :array_5e

    .line 47
    .line 48
    .line 49
    sput-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_IS:[B

    .line 50
    .line 51
    new-array v0, v0, [B

    .line 52
    .line 53
    fill-array-data v0, :array_64

    .line 54
    .line 55
    .line 56
    sput-object v0, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_AYT:[B

    .line 57
    .line 58
    return-void

    .line 59
    :array_3a
    .array-data 1
        -0x1t
        -0x3t
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    nop

    .line 65
    :array_40
    .array-data 1
        -0x1t
        -0x2t
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    nop

    .line 71
    :array_46
    .array-data 1
        -0x1t
        -0x5t
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    nop

    .line 77
    :array_4c
    .array-data 1
        -0x1t
        -0x4t
    .end array-data

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    nop

    .line 83
    :array_52
    .array-data 1
        -0x1t
        -0x6t
    .end array-data

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    nop

    .line 89
    :array_58
    .array-data 1
        -0x1t
        -0x10t
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    nop

    .line 95
    :array_5e
    .array-data 1
        0x18t
        0x0t
    .end array-data

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    nop

    .line 101
    :array_64
    .array-data 1
        -0x1t
        -0xat
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 40
    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    const/16 v0, 0x17

    .line 43
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/SocketClient;->setDefaultPort(I)V

    const/16 v0, 0x100

    .line 44
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    .line 45
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->willResponse:[I

    .line 46
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    .line 47
    new-array v0, v0, [Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    .line 13
    .line 14
    const/16 v0, 0x17

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/SocketClient;->setDefaultPort(I)V

    .line 17
    .line 18
    .line 19
    const/16 v0, 0x100

    .line 20
    .line 21
    new-array v1, v0, [I

    .line 22
    .line 23
    iput-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    .line 24
    .line 25
    new-array v1, v0, [I

    .line 26
    .line 27
    iput-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->willResponse:[I

    .line 28
    .line 29
    new-array v1, v0, [I

    .line 30
    .line 31
    iput-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    .line 32
    .line 33
    iput-object p1, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    .line 34
    .line 35
    new-array p1, v0, [Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    .line 36
    .line 37
    iput-object p1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public _connectAction_()V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    const/16 v2, 0x100

    .line 4
    .line 5
    if-ge v1, v2, :cond_25

    .line 6
    .line 7
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    .line 8
    .line 9
    aput v0, v2, v1

    .line 10
    .line 11
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->willResponse:[I

    .line 12
    .line 13
    aput v0, v2, v1

    .line 14
    .line 15
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    .line 16
    .line 17
    aput v0, v2, v1

    .line 18
    .line 19
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    .line 20
    .line 21
    aget-object v2, v2, v1

    .line 22
    .line 23
    if-eqz v2, :cond_22

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setDo(Z)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    .line 29
    .line 30
    aget-object v2, v2, v1

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setWill(Z)V

    .line 33
    .line 34
    .line 35
    :cond_22
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_25
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->_connectAction_()V

    .line 39
    .line 40
    .line 41
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 42
    .line 43
    iget-object v3, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    .line 44
    .line 45
    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    .line 49
    .line 50
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 51
    .line 52
    iget-object v3, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 53
    .line 54
    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 58
    .line 59
    :goto_3a
    if-ge v0, v2, :cond_6b

    .line 60
    .line 61
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    .line 62
    .line 63
    aget-object v1, v1, v0

    .line 64
    .line 65
    if-eqz v1, :cond_68

    .line 66
    .line 67
    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getInitLocal()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_53

    .line 72
    .line 73
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    .line 74
    .line 75
    aget-object v1, v1, v0

    .line 76
    .line 77
    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getOptionCode()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/telnet/Telnet;->requestWill(I)V

    .line 82
    .line 83
    .line 84
    :cond_53
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    .line 85
    .line 86
    aget-object v1, v1, v0

    .line 87
    .line 88
    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getInitRemote()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_68

    .line 93
    .line 94
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    .line 95
    .line 96
    aget-object v1, v1, v0

    .line 97
    .line 98
    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getOptionCode()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/telnet/Telnet;->requestDo(I)V

    .line 103
    .line 104
    .line 105
    :cond_68
    add-int/lit8 v0, v0, 0x1

    .line 106
    .line 107
    goto :goto_3a

    .line 108
    :cond_6b
    return-void
.end method

.method public _registerSpyStream(Ljava/io/OutputStream;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    .line 2
    .line 3
    return-void
.end method

.method public final _sendAYT(Ljava/time/Duration;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_25

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_5
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    .line 7
    .line 8
    iget-object v2, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 9
    .line 10
    sget-object v3, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_AYT:[B

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 18
    .line 19
    .line 20
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_2a

    .line 21
    :try_start_14
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/io/path/f;->c(Ljava/time/Duration;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 28
    .line 29
    .line 30
    iget-boolean p1, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    if-nez p1, :cond_27

    .line 34
    .line 35
    iput-boolean v2, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    .line 36
    .line 37
    goto :goto_28

    .line 38
    :catchall_25
    move-exception p1

    .line 39
    goto :goto_2d

    .line 40
    :cond_27
    move v1, v2

    .line 41
    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_25

    .line 42
    return v1

    .line 43
    :catchall_2a
    move-exception p1

    .line 44
    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    .line 45
    :try_start_2c
    throw p1

    .line 46
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_25

    .line 47
    throw p1
.end method

.method public final declared-synchronized _sendCommand(B)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 3
    .line 4
    const/16 v1, 0xff

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_14
    move-exception p1

    .line 22
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    .line 23
    throw p1
.end method

.method public final declared-synchronized _sendSubnegotiation([I)V
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_33

    .line 3
    .line 4
    :try_start_3
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 5
    .line 6
    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_SB:[B

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 9
    .line 10
    .line 11
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_c
    if-ge v1, v0, :cond_24

    .line 14
    .line 15
    aget v2, p1, v1

    .line 16
    .line 17
    int-to-byte v2, v2

    .line 18
    const/4 v3, -0x1

    .line 19
    if-ne v2, v3, :cond_1c

    .line 20
    .line 21
    iget-object v3, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_1c

    .line 27
    :catchall_1a
    move-exception p1

    .line 28
    goto :goto_31

    .line 29
    :cond_1c
    :goto_1c
    iget-object v3, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write(I)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_c

    .line 37
    :cond_24
    iget-object p1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 38
    .line 39
    sget-object v0, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_SE:[B

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 47
    .line 48
    .line 49
    goto :goto_33

    .line 50
    :goto_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_1a

    .line 51
    throw p1

    .line 52
    :cond_33
    :goto_33
    monitor-exit p0

    .line 53
    return-void
.end method

.method public _stopSpyStream()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    .line 3
    .line 4
    return-void
.end method

.method public addOptionHandler(Lorg/apache/commons/net/telnet/TelnetOptionHandler;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getOptionCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lorg/apache/commons/net/telnet/TelnetOption;->isValidOption(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_33

    .line 10
    .line 11
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    .line 12
    .line 13
    aget-object v2, v1, v0

    .line 14
    .line 15
    if-nez v2, :cond_2b

    .line 16
    .line 17
    aput-object p1, v1, v0

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->isConnected()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2a

    .line 24
    .line 25
    invoke-virtual {p1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getInitLocal()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_21

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->requestWill(I)V

    .line 32
    .line 33
    .line 34
    :cond_21
    invoke-virtual {p1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getInitRemote()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2a

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->requestDo(I)V

    .line 41
    .line 42
    .line 43
    :cond_2a
    return-void

    .line 44
    :cond_2b
    new-instance p1, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;

    .line 45
    .line 46
    const-string v1, "Already registered option"

    .line 47
    .line 48
    invoke-direct {p1, v1, v0}, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_33
    new-instance p1, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;

    .line 53
    .line 54
    const-string v1, "Invalid Option Code"

    .line 55
    .line 56
    invoke-direct {p1, v1, v0}, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method public deleteOptionHandler(I)V
    .registers 5

    .line 1
    invoke-static {p1}, Lorg/apache/commons/net/telnet/TelnetOption;->isValidOption(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2a

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    .line 8
    .line 9
    aget-object v1, v0, p1

    .line 10
    .line 11
    if-eqz v1, :cond_22

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    aput-object v2, v0, p1

    .line 15
    .line 16
    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getWill()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_18

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestWont(I)V

    .line 23
    .line 24
    .line 25
    :cond_18
    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getDo()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_21

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestDont(I)V

    .line 32
    .line 33
    .line 34
    :cond_21
    return-void

    .line 35
    :cond_22
    new-instance v0, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;

    .line 36
    .line 37
    const-string v1, "Unregistered option"

    .line 38
    .line 39
    invoke-direct {v0, v1, p1}, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;-><init>(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_2a
    new-instance v0, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;

    .line 44
    .line 45
    const-string v1, "Invalid Option Code"

    .line 46
    .line 47
    invoke-direct {v0, v1, p1}, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;-><init>(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public final declared-synchronized processAYTResponse()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    .line 3
    .line 4
    if-nez v0, :cond_17

    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_15

    .line 9
    const/4 v1, 0x1

    .line 10
    :try_start_9
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    .line 11
    .line 12
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    goto :goto_17

    .line 19
    :catchall_12
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_12

    .line 21
    :try_start_14
    throw v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_15

    .line 22
    :catchall_15
    move-exception v0

    .line 23
    goto :goto_19

    .line 24
    :cond_17
    :goto_17
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_15

    .line 27
    throw v0
.end method

.method public processCommand(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    const/4 v1, 0x5

    .line 6
    invoke-interface {v0, v1, p1}, Lorg/apache/commons/net/telnet/TelnetNotificationHandler;->receivedNegotiation(II)V

    .line 7
    .line 8
    .line 9
    :cond_8
    return-void
.end method

.method public processDo(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_8

    .line 5
    .line 6
    invoke-interface {v0, v1, p1}, Lorg/apache/commons/net/telnet/TelnetNotificationHandler;->receivedNegotiation(II)V

    .line 7
    .line 8
    .line 9
    :cond_8
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    .line 10
    .line 11
    aget-object v0, v0, p1

    .line 12
    .line 13
    if-eqz v0, :cond_13

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getAcceptLocal()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_24

    .line 20
    :cond_13
    const/16 v0, 0x18

    .line 21
    .line 22
    if-ne p1, v0, :cond_23

    .line 23
    .line 24
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v0, :cond_23

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_23

    .line 33
    .line 34
    move v0, v1

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    const/4 v0, 0x0

    .line 37
    :goto_24
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->willResponse:[I

    .line 38
    .line 39
    aget v3, v2, p1

    .line 40
    .line 41
    if-lez v3, :cond_3c

    .line 42
    .line 43
    sub-int/2addr v3, v1

    .line 44
    aput v3, v2, p1

    .line 45
    .line 46
    if-lez v3, :cond_3c

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->stateIsWill(I)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_3c

    .line 53
    .line 54
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->willResponse:[I

    .line 55
    .line 56
    aget v3, v2, p1

    .line 57
    .line 58
    sub-int/2addr v3, v1

    .line 59
    aput v3, v2, p1

    .line 60
    .line 61
    :cond_3c
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->willResponse:[I

    .line 62
    .line 63
    aget v2, v2, p1

    .line 64
    .line 65
    if-nez v2, :cond_5b

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedWont(I)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_5b

    .line 72
    .line 73
    if-eqz v0, :cond_51

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->setWantWill(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->sendWill(I)V

    .line 79
    .line 80
    .line 81
    goto :goto_5b

    .line 82
    :cond_51
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->willResponse:[I

    .line 83
    .line 84
    aget v2, v0, p1

    .line 85
    .line 86
    add-int/2addr v2, v1

    .line 87
    aput v2, v0, p1

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->sendWont(I)V

    .line 90
    .line 91
    .line 92
    :cond_5b
    :goto_5b
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->setWill(I)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public processDont(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-interface {v0, v1, p1}, Lorg/apache/commons/net/telnet/TelnetNotificationHandler;->receivedNegotiation(II)V

    .line 7
    .line 8
    .line 9
    :cond_8
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->willResponse:[I

    .line 10
    .line 11
    aget v1, v0, p1

    .line 12
    .line 13
    if-lez v1, :cond_22

    .line 14
    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    aput v1, v0, p1

    .line 18
    .line 19
    if-lez v1, :cond_22

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->stateIsWont(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_22

    .line 26
    .line 27
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->willResponse:[I

    .line 28
    .line 29
    aget v1, v0, p1

    .line 30
    .line 31
    add-int/lit8 v1, v1, -0x1

    .line 32
    .line 33
    aput v1, v0, p1

    .line 34
    .line 35
    :cond_22
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->willResponse:[I

    .line 36
    .line 37
    aget v0, v0, p1

    .line 38
    .line 39
    if-nez v0, :cond_40

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedWill(I)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_40

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->stateIsWill(I)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_3a

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedWill(I)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3d

    .line 58
    .line 59
    :cond_3a
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->sendWont(I)V

    .line 60
    .line 61
    .line 62
    :cond_3d
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->setWantWont(I)V

    .line 63
    .line 64
    .line 65
    :cond_40
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->setWont(I)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public processSuboption([II)V
    .registers 5

    .line 1
    if-lez p2, :cond_21

    .line 2
    .line 3
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    aget v1, p1, v1

    .line 7
    .line 8
    aget-object v0, v0, v1

    .line 9
    .line 10
    if-eqz v0, :cond_13

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->answerSubnegotiation([II)[I

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendSubnegotiation([I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_13
    const/4 v0, 0x1

    .line 21
    if-le p2, v0, :cond_21

    .line 22
    .line 23
    const/16 p2, 0x18

    .line 24
    .line 25
    if-ne v1, p2, :cond_21

    .line 26
    .line 27
    aget p1, p1, v0

    .line 28
    .line 29
    if-ne p1, v0, :cond_21

    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/apache/commons/net/telnet/Telnet;->sendTerminalType()V

    .line 32
    .line 33
    .line 34
    :cond_21
    return-void
.end method

.method public processWill(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-interface {v0, v1, p1}, Lorg/apache/commons/net/telnet/TelnetNotificationHandler;->receivedNegotiation(II)V

    .line 7
    .line 8
    .line 9
    :cond_8
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    .line 10
    .line 11
    aget-object v0, v0, p1

    .line 12
    .line 13
    if-eqz v0, :cond_13

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getAcceptRemote()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    :goto_14
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    .line 22
    .line 23
    aget v2, v1, p1

    .line 24
    .line 25
    if-lez v2, :cond_2e

    .line 26
    .line 27
    add-int/lit8 v2, v2, -0x1

    .line 28
    .line 29
    aput v2, v1, p1

    .line 30
    .line 31
    if-lez v2, :cond_2e

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->stateIsDo(I)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2e

    .line 38
    .line 39
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    .line 40
    .line 41
    aget v2, v1, p1

    .line 42
    .line 43
    add-int/lit8 v2, v2, -0x1

    .line 44
    .line 45
    aput v2, v1, p1

    .line 46
    .line 47
    :cond_2e
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    .line 48
    .line 49
    aget v1, v1, p1

    .line 50
    .line 51
    if-nez v1, :cond_4e

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedDont(I)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_4e

    .line 58
    .line 59
    if-eqz v0, :cond_43

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->setWantDo(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->sendDo(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_4e

    .line 68
    :cond_43
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    .line 69
    .line 70
    aget v1, v0, p1

    .line 71
    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    aput v1, v0, p1

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->sendDont(I)V

    .line 77
    .line 78
    .line 79
    :cond_4e
    :goto_4e
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->setDo(I)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public processWont(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-interface {v0, v1, p1}, Lorg/apache/commons/net/telnet/TelnetNotificationHandler;->receivedNegotiation(II)V

    .line 7
    .line 8
    .line 9
    :cond_8
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    .line 10
    .line 11
    aget v1, v0, p1

    .line 12
    .line 13
    if-lez v1, :cond_22

    .line 14
    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    aput v1, v0, p1

    .line 18
    .line 19
    if-lez v1, :cond_22

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->stateIsDont(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_22

    .line 26
    .line 27
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    .line 28
    .line 29
    aget v1, v0, p1

    .line 30
    .line 31
    add-int/lit8 v1, v1, -0x1

    .line 32
    .line 33
    aput v1, v0, p1

    .line 34
    .line 35
    :cond_22
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    .line 36
    .line 37
    aget v0, v0, p1

    .line 38
    .line 39
    if-nez v0, :cond_40

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedDo(I)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_40

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->stateIsDo(I)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_3a

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedDo(I)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3d

    .line 58
    .line 59
    :cond_3a
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->sendDont(I)V

    .line 60
    .line 61
    .line 62
    :cond_3d
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->setWantDont(I)V

    .line 63
    .line 64
    .line 65
    :cond_40
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->setDont(I)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public registerNotifHandler(Lorg/apache/commons/net/telnet/TelnetNotificationHandler;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/apache/commons/net/telnet/Telnet;->notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    .line 2
    .line 3
    return-void
.end method

.method public final declared-synchronized requestDo(I)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    .line 3
    .line 4
    aget v0, v0, p1

    .line 5
    .line 6
    if-nez v0, :cond_10

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->stateIsDo(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_16

    .line 13
    .line 14
    goto :goto_10

    .line 15
    :catchall_e
    move-exception p1

    .line 16
    goto :goto_28

    .line 17
    :cond_10
    :goto_10
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedDo(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_e

    .line 21
    if-eqz v0, :cond_18

    .line 22
    .line 23
    :cond_16
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :cond_18
    :try_start_18
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->setWantDo(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    .line 29
    .line 30
    aget v1, v0, p1

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    aput v1, v0, p1

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->sendDo(I)V
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_e

    .line 37
    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_e

    .line 42
    throw p1
.end method

.method public final declared-synchronized requestDont(I)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    .line 3
    .line 4
    aget v0, v0, p1

    .line 5
    .line 6
    if-nez v0, :cond_10

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->stateIsDont(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_16

    .line 13
    .line 14
    goto :goto_10

    .line 15
    :catchall_e
    move-exception p1

    .line 16
    goto :goto_28

    .line 17
    :cond_10
    :goto_10
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedDont(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_e

    .line 21
    if-eqz v0, :cond_18

    .line 22
    .line 23
    :cond_16
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :cond_18
    :try_start_18
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->setWantDont(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    .line 29
    .line 30
    aget v1, v0, p1

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    aput v1, v0, p1

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->sendDont(I)V
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_e

    .line 37
    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_e

    .line 42
    throw p1
.end method

.method public final declared-synchronized requestWill(I)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->willResponse:[I

    .line 3
    .line 4
    aget v0, v0, p1

    .line 5
    .line 6
    if-nez v0, :cond_10

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->stateIsWill(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_16

    .line 13
    .line 14
    goto :goto_10

    .line 15
    :catchall_e
    move-exception p1

    .line 16
    goto :goto_28

    .line 17
    :cond_10
    :goto_10
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedWill(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_e

    .line 21
    if-eqz v0, :cond_18

    .line 22
    .line 23
    :cond_16
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :cond_18
    :try_start_18
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->setWantWill(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    .line 29
    .line 30
    aget v1, v0, p1

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    aput v1, v0, p1

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->sendWill(I)V
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_e

    .line 37
    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_e

    .line 42
    throw p1
.end method

.method public final declared-synchronized requestWont(I)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->willResponse:[I

    .line 3
    .line 4
    aget v0, v0, p1

    .line 5
    .line 6
    if-nez v0, :cond_10

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->stateIsWont(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_16

    .line 13
    .line 14
    goto :goto_10

    .line 15
    :catchall_e
    move-exception p1

    .line 16
    goto :goto_28

    .line 17
    :cond_10
    :goto_10
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedWont(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_e

    .line 21
    if-eqz v0, :cond_18

    .line 22
    .line 23
    :cond_16
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :cond_18
    :try_start_18
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->setWantWont(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    .line 29
    .line 30
    aget v1, v0, p1

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    aput v1, v0, p1

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->sendWont(I)V
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_e

    .line 37
    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_e

    .line 42
    throw p1
.end method

.method public requestedDo(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    .line 2
    .line 3
    aget p1, v0, p1

    .line 4
    .line 5
    and-int/lit8 p1, p1, 0x8

    .line 6
    .line 7
    if-eqz p1, :cond_a

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_a
    const/4 p1, 0x0

    .line 12
    return p1
.end method

.method public requestedDont(I)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedDo(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    xor-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    return p1
.end method

.method public requestedWill(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    .line 2
    .line 3
    aget p1, v0, p1

    .line 4
    .line 5
    and-int/lit8 p1, p1, 0x4

    .line 6
    .line 7
    if-eqz p1, :cond_a

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_a
    const/4 p1, 0x0

    .line 12
    return p1
.end method

.method public requestedWont(I)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedWill(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    xor-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    return p1
.end method

.method public final declared-synchronized sendByte(I)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->spyWrite(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_b
    move-exception p1

    .line 13
    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    .line 14
    throw p1
.end method

.method public final declared-synchronized sendDo(I)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 3
    .line 4
    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_DO:[B

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_14
    move-exception p1

    .line 22
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    .line 23
    throw p1
.end method

.method public final declared-synchronized sendDont(I)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 3
    .line 4
    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_DONT:[B

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_14
    move-exception p1

    .line 22
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    .line 23
    throw p1
.end method

.method public final declared-synchronized sendTerminalType()V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_31

    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 7
    .line 8
    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_SB:[B

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 14
    .line 15
    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_IS:[B

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 21
    .line 22
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCharset()Ljava/nio/charset/Charset;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 36
    .line 37
    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_SE:[B

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2f

    .line 45
    .line 46
    .line 47
    goto :goto_31

    .line 48
    :catchall_2f
    move-exception v0

    .line 49
    goto :goto_33

    .line 50
    :cond_31
    :goto_31
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :goto_33
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_2f

    .line 53
    throw v0
.end method

.method public final declared-synchronized sendWill(I)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 3
    .line 4
    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_WILL:[B

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_14
    move-exception p1

    .line 22
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    .line 23
    throw p1
.end method

.method public final declared-synchronized sendWont(I)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 3
    .line 4
    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_WONT:[B

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_14
    move-exception p1

    .line 22
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    .line 23
    throw p1
.end method

.method public setDo(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    .line 2
    .line 3
    aget v1, v0, p1

    .line 4
    .line 5
    or-int/lit8 v1, v1, 0x2

    .line 6
    .line 7
    aput v1, v0, p1

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedDo(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_25

    .line 14
    .line 15
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    .line 16
    .line 17
    aget-object v0, v0, p1

    .line 18
    .line 19
    if-eqz v0, :cond_25

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setDo(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    .line 26
    .line 27
    aget-object p1, v0, p1

    .line 28
    .line 29
    invoke-virtual {p1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->startSubnegotiationRemote()[I

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_25

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendSubnegotiation([I)V

    .line 36
    .line 37
    .line 38
    :cond_25
    return-void
.end method

.method public setDont(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    .line 2
    .line 3
    aget v1, v0, p1

    .line 4
    .line 5
    and-int/lit8 v1, v1, -0x3

    .line 6
    .line 7
    aput v1, v0, p1

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    .line 10
    .line 11
    aget-object p1, v0, p1

    .line 12
    .line 13
    if-eqz p1, :cond_12

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setDo(Z)V

    .line 17
    .line 18
    .line 19
    :cond_12
    return-void
.end method

.method public setWantDo(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    .line 2
    .line 3
    aget v1, v0, p1

    .line 4
    .line 5
    or-int/lit8 v1, v1, 0x8

    .line 6
    .line 7
    aput v1, v0, p1

    .line 8
    .line 9
    return-void
.end method

.method public setWantDont(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    .line 2
    .line 3
    aget v1, v0, p1

    .line 4
    .line 5
    and-int/lit8 v1, v1, -0x9

    .line 6
    .line 7
    aput v1, v0, p1

    .line 8
    .line 9
    return-void
.end method

.method public setWantWill(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    .line 2
    .line 3
    aget v1, v0, p1

    .line 4
    .line 5
    or-int/lit8 v1, v1, 0x4

    .line 6
    .line 7
    aput v1, v0, p1

    .line 8
    .line 9
    return-void
.end method

.method public setWantWont(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    .line 2
    .line 3
    aget v1, v0, p1

    .line 4
    .line 5
    and-int/lit8 v1, v1, -0x5

    .line 6
    .line 7
    aput v1, v0, p1

    .line 8
    .line 9
    return-void
.end method

.method public setWill(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    .line 2
    .line 3
    aget v1, v0, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    or-int/2addr v1, v2

    .line 7
    aput v1, v0, p1

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedWill(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_24

    .line 14
    .line 15
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    .line 16
    .line 17
    aget-object v0, v0, p1

    .line 18
    .line 19
    if-eqz v0, :cond_24

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setWill(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    .line 25
    .line 26
    aget-object p1, v0, p1

    .line 27
    .line 28
    invoke-virtual {p1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->startSubnegotiationLocal()[I

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_24

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendSubnegotiation([I)V

    .line 35
    .line 36
    .line 37
    :cond_24
    return-void
.end method

.method public setWont(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    .line 2
    .line 3
    aget v1, v0, p1

    .line 4
    .line 5
    and-int/lit8 v1, v1, -0x2

    .line 6
    .line 7
    aput v1, v0, p1

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    .line 10
    .line 11
    aget-object p1, v0, p1

    .line 12
    .line 13
    if-eqz p1, :cond_12

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setWill(Z)V

    .line 17
    .line 18
    .line 19
    :cond_12
    return-void
.end method

.method public spyRead(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_19

    .line 4
    .line 5
    const/16 v1, 0xd

    .line 6
    .line 7
    if-eq p1, v1, :cond_19

    .line 8
    .line 9
    const/16 v2, 0xa

    .line 10
    .line 11
    if-ne p1, v2, :cond_f

    .line 12
    .line 13
    :try_start_c
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 14
    .line 15
    .line 16
    :cond_f
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_15} :catch_16

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_16
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    .line 25
    .line 26
    :cond_19
    return-void
.end method

.method public spyWrite(I)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->stateIsDo(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_d

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->requestedDo(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1b

    .line 13
    .line 14
    :cond_d
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    .line 15
    .line 16
    if-eqz v0, :cond_1b

    .line 17
    .line 18
    :try_start_11
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_17} :catch_18

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catch_18
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    .line 27
    .line 28
    :cond_1b
    return-void
.end method

.method public stateIsDo(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    .line 2
    .line 3
    aget p1, v0, p1

    .line 4
    .line 5
    and-int/lit8 p1, p1, 0x2

    .line 6
    .line 7
    if-eqz p1, :cond_a

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_a
    const/4 p1, 0x0

    .line 12
    return p1
.end method

.method public stateIsDont(I)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->stateIsDo(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    xor-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    return p1
.end method

.method public stateIsWill(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    .line 2
    .line 3
    aget p1, v0, p1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    and-int/2addr p1, v0

    .line 7
    if-eqz p1, :cond_9

    .line 8
    .line 9
    return v0

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public stateIsWont(I)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->stateIsWill(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    xor-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    return p1
.end method

.method public unregisterNotifHandler()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    .line 3
    .line 4
    return-void
.end method
