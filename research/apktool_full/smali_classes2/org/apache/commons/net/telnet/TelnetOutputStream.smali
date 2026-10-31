.class final Lorg/apache/commons/net/telnet/TelnetOutputStream;
.super Ljava/io/OutputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field private static final CONVERT_TO_CRLF:Z = true


# instance fields
.field private final client:Lorg/apache/commons/net/telnet/TelnetClient;

.field private lastWasCR:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/net/telnet/TelnetClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->closeOutputStream()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->flushOutputStream()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public write(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/16 v1, 0xff

    .line 5
    .line 6
    and-int/2addr p1, v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v2, v3}, Lorg/apache/commons/net/telnet/Telnet;->requestedWont(I)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_5

    .line 15
    .line 16
    iget-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->lastWasCR:Z

    .line 17
    .line 18
    const/16 v4, 0xa

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 23
    .line 24
    invoke-virtual {v2, v4}, Lorg/apache/commons/net/telnet/Telnet;->sendByte(I)V

    .line 25
    .line 26
    .line 27
    if-ne p1, v4, :cond_0

    .line 28
    .line 29
    iput-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->lastWasCR:Z

    .line 30
    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const/16 v2, 0xd

    .line 36
    .line 37
    if-eq p1, v4, :cond_3

    .line 38
    .line 39
    if-eq p1, v2, :cond_2

    .line 40
    .line 41
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 42
    .line 43
    if-eq p1, v1, :cond_1

    .line 44
    .line 45
    :try_start_1
    invoke-virtual {v2, p1}, Lorg/apache/commons/net/telnet/Telnet;->sendByte(I)V

    .line 46
    .line 47
    .line 48
    iput-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->lastWasCR:Z

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v2, v1}, Lorg/apache/commons/net/telnet/Telnet;->sendByte(I)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Lorg/apache/commons/net/telnet/Telnet;->sendByte(I)V

    .line 57
    .line 58
    .line 59
    iput-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->lastWasCR:Z

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 63
    .line 64
    invoke-virtual {p1, v2}, Lorg/apache/commons/net/telnet/Telnet;->sendByte(I)V

    .line 65
    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->lastWasCR:Z

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->lastWasCR:Z

    .line 72
    .line 73
    if-nez v1, :cond_4

    .line 74
    .line 75
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Lorg/apache/commons/net/telnet/Telnet;->sendByte(I)V

    .line 78
    .line 79
    .line 80
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 81
    .line 82
    invoke-virtual {v1, p1}, Lorg/apache/commons/net/telnet/Telnet;->sendByte(I)V

    .line 83
    .line 84
    .line 85
    iput-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->lastWasCR:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 89
    .line 90
    if-ne p1, v1, :cond_6

    .line 91
    .line 92
    :try_start_2
    invoke-virtual {v2, p1}, Lorg/apache/commons/net/telnet/Telnet;->sendByte(I)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 96
    .line 97
    invoke-virtual {p1, v1}, Lorg/apache/commons/net/telnet/Telnet;->sendByte(I)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    invoke-virtual {v2, p1}, Lorg/apache/commons/net/telnet/Telnet;->sendByte(I)V

    .line 102
    .line 103
    .line 104
    :goto_0
    monitor-exit v0

    .line 105
    return-void

    .line 106
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    throw p1
.end method

.method public write([B)V
    .locals 2

    const/4 v0, 0x0

    .line 111
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/telnet/TelnetOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2

    .line 108
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v0

    :goto_0
    add-int/lit8 v1, p3, -0x1

    if-lez p3, :cond_0

    add-int/lit8 p3, p2, 0x1

    .line 109
    :try_start_0
    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Lorg/apache/commons/net/telnet/TelnetOutputStream;->write(I)V

    move p2, p3

    move p3, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 110
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
