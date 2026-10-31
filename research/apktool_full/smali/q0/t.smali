.class public final Lq0/t;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lq0/h;


# static fields
.field public static final m:Ljava/lang/String;

.field public static final n:Ljava/lang/String;

.field public static final o:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/example/navistart/MockGPS/MockGpsService;

.field public final c:Landroid/hardware/usb/UsbManager;

.field public final d:Ljava/util/concurrent/ExecutorService;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Lq0/n;

.field public final g:Lb1/c;

.field public volatile h:I

.field public volatile i:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

.field public volatile j:Landroid/hardware/usb/UsbDeviceConnection;

.field public volatile k:Z

.field public l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    new-array v2, v1, [B

    .line 10
    .line 11
    fill-array-data v2, :array_1

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lq0/t;->m:Ljava/lang/String;

    .line 19
    .line 20
    const/16 v0, 0xc

    .line 21
    .line 22
    new-array v0, v0, [B

    .line 23
    .line 24
    fill-array-data v0, :array_2

    .line 25
    .line 26
    .line 27
    new-array v2, v1, [B

    .line 28
    .line 29
    fill-array-data v2, :array_3

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lq0/t;->n:Ljava/lang/String;

    .line 37
    .line 38
    const/16 v0, 0x2c

    .line 39
    .line 40
    new-array v0, v0, [B

    .line 41
    .line 42
    fill-array-data v0, :array_4

    .line 43
    .line 44
    .line 45
    new-array v1, v1, [B

    .line 46
    .line 47
    fill-array-data v1, :array_5

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lq0/t;->o:Ljava/lang/String;

    .line 55
    .line 56
    return-void

    .line 57
    :array_0
    .array-data 1
        0x3dt
        0x2bt
        0x4ct
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    :array_1
    .array-data 1
        0x48t
        0x58t
        0x2et
        -0x5et
        0x21t
        -0x5et
        -0x1t
        -0x7dt
    .end array-data

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    :array_2
    .array-data 1
        -0x5ft
        -0x59t
        -0x69t
        0x57t
        -0x79t
        -0x11t
        -0x1et
        -0x6t
        -0x7ft
        -0x5at
        -0x6at
        0x75t
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    :array_3
    .array-data 1
        -0xct
        -0x2ct
        -0xbt
        0x10t
        -0x9t
        -0x64t
        -0x4ft
        -0x6bt
    .end array-data

    :array_4
    .array-data 1
        0x12t
        -0x49t
        0x4dt
        0x71t
        -0x8t
        0x15t
        0x6et
        -0x77t
        0x1t
        -0x4ct
        0x45t
        0x71t
        -0xdt
        0xct
        0x79t
        -0x73t
        0x2t
        -0x54t
        0x41t
        0x2dt
        -0x17t
        0x43t
        0x42t
        -0x75t
        0x12t
        -0x4dt
        0x67t
        0xft
        -0x32t
        0x43t
        0x5at
        -0x49t
        0x33t
        -0x79t
        0x70t
        0x1at
        -0x31t
        0x20t
        0x46t
        -0x49t
        0x22t
        -0x6ft
        0x6ft
        0x11t
    .end array-data

    :array_5
    .array-data 1
        0x71t
        -0x28t
        0x20t
        0x5ft
        -0x63t
        0x6dt
        0xft
        -0x1ct
    .end array-data
.end method

.method public constructor <init>(Lcom/example/navistart/MockGPS/MockGpsService;Lcom/example/navistart/MockGPS/MockGpsService;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lq0/t;->d:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lq0/t;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    new-instance v0, Lq0/n;

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    new-array v2, v1, [B

    .line 23
    .line 24
    fill-array-data v2, :array_0

    .line 25
    .line 26
    .line 27
    new-array v3, v1, [B

    .line 28
    .line 29
    fill-array-data v3, :array_1

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-direct {v0, v2}, Lq0/n;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lq0/t;->f:Lq0/n;

    .line 40
    .line 41
    new-instance v0, Lb1/c;

    .line 42
    .line 43
    const/4 v2, 0x6

    .line 44
    invoke-direct {v0, v2, p0}, Lb1/c;-><init>(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lq0/t;->g:Lb1/c;

    .line 48
    .line 49
    const v0, 0x70800

    .line 50
    .line 51
    .line 52
    iput v0, p0, Lq0/t;->h:I

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lq0/t;->a:Landroid/content/Context;

    .line 59
    .line 60
    iput-object p2, p0, Lq0/t;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 61
    .line 62
    const/4 p2, 0x3

    .line 63
    new-array p2, p2, [B

    .line 64
    .line 65
    fill-array-data p2, :array_2

    .line 66
    .line 67
    .line 68
    new-array v0, v1, [B

    .line 69
    .line 70
    fill-array-data v0, :array_3

    .line 71
    .line 72
    .line 73
    invoke-static {p2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Landroid/hardware/usb/UsbManager;

    .line 82
    .line 83
    iput-object p1, p0, Lq0/t;->c:Landroid/hardware/usb/UsbManager;

    .line 84
    .line 85
    return-void

    .line 86
    nop

    .line 87
    :array_0
    .array-data 1
        0x38t
        0x36t
        -0xct
        -0x24t
        0x73t
        0x13t
        -0x5et
        0x3at
    .end array-data

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    :array_1
    .array-data 1
        0x56t
        0x5bt
        -0x6ft
        -0x43t
        0x2ct
        0x66t
        -0x2ft
        0x58t
    .end array-data

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    :array_2
    .array-data 1
        -0x2at
        -0x43t
        0x5t
    .end array-data

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    :array_3
    .array-data 1
        -0x5dt
        -0x32t
        0x67t
        0x3ct
        0x14t
        0x62t
        -0xft
        0x49t
    .end array-data
.end method

.method public static c()Ljava/lang/Boolean;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Le0/m;->j:[B

    .line 11
    .line 12
    sget-object v3, Le0/p3;->a:[Ljava/lang/String;

    .line 13
    .line 14
    const-string v3, ""

    .line 15
    .line 16
    invoke-static {v2, v1, v3, v0}, Lcom/google/protobuf/q;->s([BLu0/a;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x9

    .line 20
    .line 21
    new-array v1, v1, [B

    .line 22
    .line 23
    fill-array-data v1, :array_0

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/google/protobuf/q;->r([BLjava/lang/StringBuilder;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Le0/x1;->q:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/google/protobuf/q;->g(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget-object v2, Le0/m;->f:[B

    .line 40
    .line 41
    invoke-static {v2, v1, v3, v0}, Lcom/google/protobuf/q;->w([BLu0/a;Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-wide v3, 0x7fffffffffffffffL

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    invoke-static {v3, v4, v0}, Lcom/google/protobuf/q;->d(JLcom/example/navistart/cores/InterC;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    new-instance v3, Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    new-instance v6, Ljava/lang/String;

    .line 75
    .line 76
    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    .line 77
    .line 78
    .line 79
    sget-object v2, Le0/m;->g:[B

    .line 80
    .line 81
    invoke-static {v2, v5, v6}, Lcom/google/protobuf/q;->h([BLu0/a;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const/4 v5, 0x1

    .line 86
    new-array v6, v5, [B

    .line 87
    .line 88
    const/16 v7, -0x47

    .line 89
    .line 90
    const/4 v8, 0x0

    .line 91
    aput-byte v7, v6, v8

    .line 92
    .line 93
    const/16 v7, 0x8

    .line 94
    .line 95
    new-array v7, v7, [B

    .line 96
    .line 97
    fill-array-data v7, :array_1

    .line 98
    .line 99
    .line 100
    invoke-static {v6, v7, v4, v2, v8}, Lcom/google/protobuf/q;->x([B[BLu0/a;Ljava/lang/String;I)[B

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 105
    .line 106
    .line 107
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 108
    .line 109
    .line 110
    move-result-wide v2

    .line 111
    cmp-long v0, v0, v2

    .line 112
    .line 113
    if-gez v0, :cond_0

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    move v5, v8

    .line 117
    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    return-object v0

    .line 122
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 123
    .line 124
    return-object v0

    .line 125
    :array_0
    .array-data 1
        0x6ct
        0x69t
        0x63t
        0x74t
        0x5ft
        0x72t
        0x69t
        0x75t
        0x65t
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    nop

    .line 135
    :array_1
    .array-data 1
        -0x77t
        0x17t
        0x77t
        -0x7ft
        0x7t
        -0x7t
        0x2t
        -0x6et
    .end array-data
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lq0/t;->c:Landroid/hardware/usb/UsbManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/hoho/android/usbserial/driver/UsbSerialProber;->getDefaultProber()Lcom/hoho/android/usbserial/driver/UsbSerialProber;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2, v0}, Lcom/hoho/android/usbserial/driver/UsbSerialProber;->findAllDrivers(Landroid/hardware/usb/UsbManager;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    move-object v1, v0

    .line 30
    check-cast v1, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    .line 31
    .line 32
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 33
    .line 34
    iget-object v0, p0, Lq0/t;->a:Landroid/content/Context;

    .line 35
    .line 36
    iget v1, p0, Lq0/t;->h:I

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const v2, 0x7f1302a4

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    :cond_3
    invoke-interface {v1}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p0, v0}, Lq0/t;->f(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method

.method public final b(Lj/i;)V
    .locals 1

    .line 1
    iget p1, p1, Lj/i;->b:I

    .line 2
    .line 3
    const/16 v0, 0x4b0

    .line 4
    .line 5
    if-lt p1, v0, :cond_0

    .line 6
    .line 7
    const v0, 0xe1000

    .line 8
    .line 9
    .line 10
    if-gt p1, v0, :cond_0

    .line 11
    .line 12
    iput p1, p0, Lq0/t;->h:I

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq0/t;->i:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lq0/t;->i:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-interface {v0}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    :cond_0
    iget-object v0, p0, Lq0/t;->j:Landroid/hardware/usb/UsbDeviceConnection;

    .line 12
    .line 13
    iput-object v1, p0, Lq0/t;->j:Landroid/hardware/usb/UsbDeviceConnection;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final e(Lcom/hoho/android/usbserial/driver/UsbSerialDriver;Ljava/lang/String;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-interface/range {p1 .. p1}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getPorts()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_13

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_13

    .line 16
    .line 17
    iget-object v3, v0, Lq0/t;->c:Landroid/hardware/usb/UsbManager;

    .line 18
    .line 19
    invoke-interface/range {p1 .. p1}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v3, v4}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-eqz v3, :cond_12

    .line 28
    .line 29
    iput-object v3, v0, Lq0/t;->j:Landroid/hardware/usb/UsbDeviceConnection;

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    .line 37
    .line 38
    iput-object v2, v0, Lq0/t;->i:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    .line 39
    .line 40
    invoke-interface {v2, v3}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->open(Landroid/hardware/usb/UsbDeviceConnection;)V

    .line 41
    .line 42
    .line 43
    iget v3, v0, Lq0/t;->h:I

    .line 44
    .line 45
    const/16 v5, 0x8

    .line 46
    .line 47
    const/4 v6, 0x1

    .line 48
    invoke-interface {v2, v3, v5, v6, v4}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->setParameters(IIII)V

    .line 49
    .line 50
    .line 51
    :try_start_0
    invoke-interface {v2, v6}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->setDTR(Z)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v2, v6}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->setRTS(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    :catch_0
    iget-object v3, v0, Lq0/t;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 58
    .line 59
    iget-object v5, v0, Lq0/t;->a:Landroid/content/Context;

    .line 60
    .line 61
    const v7, 0x7f130299

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static {v5, v1, v6}, Lcom/example/navistart/MockGPS/MockGpsService;->j(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 72
    .line 73
    .line 74
    const/16 v3, 0x400

    .line 75
    .line 76
    new-array v3, v3, [B

    .line 77
    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const/16 v7, 0x80

    .line 81
    .line 82
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 86
    .line 87
    .line 88
    move-result-wide v7

    .line 89
    const-wide/16 v11, 0x0

    .line 90
    .line 91
    :goto_0
    iget-object v13, v0, Lq0/t;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    .line 93
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 94
    .line 95
    .line 96
    move-result v13

    .line 97
    if-eqz v13, :cond_11

    .line 98
    .line 99
    const/16 v13, 0x4b0

    .line 100
    .line 101
    invoke-interface {v2, v3, v13}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->read([BI)I

    .line 102
    .line 103
    .line 104
    move-result v13

    .line 105
    if-lez v13, :cond_d

    .line 106
    .line 107
    new-instance v14, Ljava/lang/String;

    .line 108
    .line 109
    sget-object v15, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 110
    .line 111
    invoke-direct {v14, v3, v4, v13, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 112
    .line 113
    .line 114
    move v13, v4

    .line 115
    move v15, v13

    .line 116
    move/from16 v16, v15

    .line 117
    .line 118
    const-wide/16 v17, 0x0

    .line 119
    .line 120
    :goto_1
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    if-ge v13, v9, :cond_b

    .line 125
    .line 126
    invoke-virtual {v14, v13}, Ljava/lang/String;->charAt(I)C

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    const/16 v10, 0xd

    .line 131
    .line 132
    if-eq v9, v10, :cond_3

    .line 133
    .line 134
    const/16 v10, 0xa

    .line 135
    .line 136
    if-ne v9, v10, :cond_0

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    const/16 v6, 0x100

    .line 144
    .line 145
    if-ge v10, v6, :cond_2

    .line 146
    .line 147
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    :cond_1
    :goto_2
    move-object/from16 v19, v2

    .line 151
    .line 152
    move v2, v4

    .line 153
    goto/16 :goto_9

    .line 154
    .line 155
    :cond_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_3
    :goto_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    if-lez v6, :cond_1

    .line 164
    .line 165
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    const/4 v10, 0x7

    .line 174
    if-lt v9, v10, :cond_6

    .line 175
    .line 176
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    .line 177
    .line 178
    .line 179
    move-result v9

    .line 180
    const/16 v10, 0x24

    .line 181
    .line 182
    if-ne v9, v10, :cond_6

    .line 183
    .line 184
    const/16 v9, 0x2c

    .line 185
    .line 186
    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    .line 187
    .line 188
    .line 189
    move-result v9

    .line 190
    const/4 v10, 0x6

    .line 191
    if-ge v9, v10, :cond_4

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_4
    const/16 v9, 0x2a

    .line 195
    .line 196
    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    .line 197
    .line 198
    .line 199
    move-result v9

    .line 200
    if-gez v9, :cond_5

    .line 201
    .line 202
    move-object/from16 v19, v2

    .line 203
    .line 204
    :goto_4
    const/4 v2, 0x1

    .line 205
    goto :goto_7

    .line 206
    :cond_5
    add-int/lit8 v10, v9, 0x3

    .line 207
    .line 208
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    if-eq v10, v4, :cond_8

    .line 213
    .line 214
    :catch_1
    :cond_6
    :goto_5
    move-object/from16 v19, v2

    .line 215
    .line 216
    :cond_7
    const/4 v2, 0x0

    .line 217
    goto :goto_7

    .line 218
    :cond_8
    add-int/lit8 v4, v9, 0x1

    .line 219
    .line 220
    :try_start_1
    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    const/16 v10, 0x10

    .line 225
    .line 226
    invoke-static {v4, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 227
    .line 228
    .line 229
    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 230
    move-object/from16 v19, v2

    .line 231
    .line 232
    const/4 v2, 0x0

    .line 233
    const/4 v10, 0x1

    .line 234
    :goto_6
    if-ge v10, v9, :cond_9

    .line 235
    .line 236
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    .line 237
    .line 238
    .line 239
    move-result v20

    .line 240
    xor-int v2, v2, v20

    .line 241
    .line 242
    add-int/lit8 v10, v10, 0x1

    .line 243
    .line 244
    goto :goto_6

    .line 245
    :cond_9
    if-ne v2, v4, :cond_7

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :goto_7
    or-int/2addr v15, v2

    .line 249
    iget-object v2, v0, Lq0/t;->f:Lq0/n;

    .line 250
    .line 251
    invoke-virtual {v2, v6}, Lq0/n;->c(Ljava/lang/String;)Lq0/q;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    if-nez v2, :cond_a

    .line 256
    .line 257
    const/4 v2, 0x0

    .line 258
    goto :goto_8

    .line 259
    :cond_a
    iget-object v4, v0, Lq0/t;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 260
    .line 261
    invoke-virtual {v4, v2}, Lcom/example/navistart/MockGPS/MockGpsService;->i(Lq0/q;)V

    .line 262
    .line 263
    .line 264
    const/4 v2, 0x1

    .line 265
    :goto_8
    or-int v16, v16, v2

    .line 266
    .line 267
    const/4 v2, 0x0

    .line 268
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 269
    .line 270
    .line 271
    :goto_9
    add-int/lit8 v13, v13, 0x1

    .line 272
    .line 273
    move v4, v2

    .line 274
    move-object/from16 v2, v19

    .line 275
    .line 276
    const/4 v6, 0x1

    .line 277
    goto/16 :goto_1

    .line 278
    .line 279
    :cond_b
    move-object/from16 v19, v2

    .line 280
    .line 281
    move v2, v4

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 283
    .line 284
    .line 285
    move-result-wide v9

    .line 286
    if-eqz v15, :cond_c

    .line 287
    .line 288
    move-wide v7, v9

    .line 289
    :cond_c
    if-eqz v16, :cond_e

    .line 290
    .line 291
    move-wide v11, v9

    .line 292
    goto :goto_a

    .line 293
    :cond_d
    move-object/from16 v19, v2

    .line 294
    .line 295
    move v2, v4

    .line 296
    const-wide/16 v17, 0x0

    .line 297
    .line 298
    :cond_e
    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 299
    .line 300
    .line 301
    move-result-wide v9

    .line 302
    cmp-long v4, v11, v17

    .line 303
    .line 304
    if-lez v4, :cond_f

    .line 305
    .line 306
    sub-long v13, v9, v11

    .line 307
    .line 308
    const-wide/16 v15, 0xfa0

    .line 309
    .line 310
    cmp-long v4, v13, v15

    .line 311
    .line 312
    if-lez v4, :cond_f

    .line 313
    .line 314
    iget-object v4, v0, Lq0/t;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 315
    .line 316
    invoke-virtual {v4}, Lcom/example/navistart/MockGPS/MockGpsService;->g()V

    .line 317
    .line 318
    .line 319
    iget-object v4, v0, Lq0/t;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 320
    .line 321
    iget-object v6, v0, Lq0/t;->a:Landroid/content/Context;

    .line 322
    .line 323
    const v11, 0x7f13029a

    .line 324
    .line 325
    .line 326
    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    .line 332
    .line 333
    const/4 v4, 0x1

    .line 334
    invoke-static {v6, v1, v4}, Lcom/example/navistart/MockGPS/MockGpsService;->j(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 335
    .line 336
    .line 337
    move-wide/from16 v11, v17

    .line 338
    .line 339
    goto :goto_b

    .line 340
    :cond_f
    const/4 v4, 0x1

    .line 341
    :goto_b
    sub-long/2addr v9, v7

    .line 342
    const-wide/16 v13, 0x1f40

    .line 343
    .line 344
    cmp-long v6, v9, v13

    .line 345
    .line 346
    if-gtz v6, :cond_10

    .line 347
    .line 348
    move v6, v4

    .line 349
    move v4, v2

    .line 350
    move-object/from16 v2, v19

    .line 351
    .line 352
    goto/16 :goto_0

    .line 353
    .line 354
    :cond_10
    iget-object v1, v0, Lq0/t;->a:Landroid/content/Context;

    .line 355
    .line 356
    const v2, 0x7f130275

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-static {v1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    :cond_11
    return-void

    .line 367
    :cond_12
    iget-object v1, v0, Lq0/t;->a:Landroid/content/Context;

    .line 368
    .line 369
    const v2, 0x7f13029e

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-static {v1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    return-void

    .line 380
    :cond_13
    iget-object v1, v0, Lq0/t;->a:Landroid/content/Context;

    .line 381
    .line 382
    const v2, 0x7f13029f

    .line 383
    .line 384
    .line 385
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-static {v1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    return-void
.end method

.method public final f(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lq0/t;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lq0/t;->h:I

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const v1, 0x7f1302a4

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget v2, p0, Lq0/t;->h:I

    .line 40
    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    filled-new-array {v1, p1, v2}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const v1, 0x7f13029c

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lq0/t;->a:Landroid/content/Context;

    .line 2
    .line 3
    const v1, 0x7f130286

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lq0/t;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final start()V
    .locals 6

    .line 1
    iget-object v0, p0, Lq0/t;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-boolean v0, p0, Lq0/t;->k:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    :try_start_0
    invoke-static {}, Lq0/t;->c()Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iput-boolean v2, p0, Lq0/t;->k:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    :catch_0
    :cond_2
    :goto_0
    iget-object v0, p0, Lq0/t;->g:Lb1/c;

    .line 30
    .line 31
    iget-boolean v1, p0, Lq0/t;->l:Z

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_3
    new-instance v1, Landroid/content/IntentFilter;

    .line 37
    .line 38
    sget-object v3, Lq0/t;->o:Ljava/lang/String;

    .line 39
    .line 40
    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    .line 45
    iget-object v4, p0, Lq0/t;->a:Landroid/content/Context;

    .line 46
    .line 47
    const/16 v5, 0x21

    .line 48
    .line 49
    if-lt v3, v5, :cond_4

    .line 50
    .line 51
    invoke-static {v4, v0, v1}, Lorg/apache/commons/net/util/a;->q(Landroid/content/Context;Lb1/c;Landroid/content/IntentFilter;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    :goto_1
    iput-boolean v2, p0, Lq0/t;->l:Z

    .line 59
    .line 60
    :goto_2
    iget-object v0, p0, Lq0/t;->d:Ljava/util/concurrent/ExecutorService;

    .line 61
    .line 62
    new-instance v1, Lf5/j;

    .line 63
    .line 64
    const/16 v2, 0xe

    .line 65
    .line 66
    invoke-direct {v1, v2, p0}, Lf5/j;-><init>(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lq0/t;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lq0/t;->d()V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lq0/t;->l:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    :try_start_0
    iget-object v0, p0, Lq0/t;->a:Landroid/content/Context;

    .line 16
    .line 17
    iget-object v2, p0, Lq0/t;->g:Lb1/c;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :catch_0
    iput-boolean v1, p0, Lq0/t;->l:Z

    .line 23
    .line 24
    :goto_0
    iget-object v0, p0, Lq0/t;->d:Ljava/util/concurrent/ExecutorService;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    return-void
.end method
