.class public Lai/onnxruntime/telemetry/HttpClient;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/onnxruntime/telemetry/HttpClient$Configuration;,
        Lai/onnxruntime/telemetry/HttpClient$FutureShim;
    }
.end annotation


# static fields
.field private static final ANDROID_DEVICE_CLASS_PC:Ljava/lang/String; = "Android.PC"

.field private static final ANDROID_DEVICE_CLASS_PHONE:Ljava/lang/String; = "Android.Phone"

.field private static final MAX_HTTP_THREADS:I = 0x2


# instance fields
.field private m_callback:Lai/onnxruntime/telemetry/ConnectivityCallback;

.field private m_connectivityManager:Landroid/net/ConnectivityManager;

.field private final m_context:Landroid/content/Context;

.field private final m_executor:Ljava/util/concurrent/ExecutorService;

.field private m_power_receiver:Lai/onnxruntime/telemetry/PowerInfoReceiver;

.field private final m_requestFactory:Lai/onnxruntime/telemetry/HttpClientRequest$Factory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 122
    new-instance v0, Lai/onnxruntime/telemetry/HttpClientRequest$Factory$AndroidUrlConnection;

    invoke-direct {v0}, Lai/onnxruntime/telemetry/HttpClientRequest$Factory$AndroidUrlConnection;-><init>()V

    new-instance v1, Lai/onnxruntime/telemetry/HttpClient$Configuration$Default;

    invoke-direct {v1}, Lai/onnxruntime/telemetry/HttpClient$Configuration$Default;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lai/onnxruntime/telemetry/HttpClient;-><init>(Landroid/content/Context;Lai/onnxruntime/telemetry/HttpClientRequest$Factory;Lai/onnxruntime/telemetry/HttpClient$Configuration;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lai/onnxruntime/telemetry/HttpClientRequest$Factory;)V
    .locals 1

    .line 121
    new-instance v0, Lai/onnxruntime/telemetry/HttpClient$Configuration$Default;

    invoke-direct {v0}, Lai/onnxruntime/telemetry/HttpClient$Configuration$Default;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lai/onnxruntime/telemetry/HttpClient;-><init>(Landroid/content/Context;Lai/onnxruntime/telemetry/HttpClientRequest$Factory;Lai/onnxruntime/telemetry/HttpClient$Configuration;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lai/onnxruntime/telemetry/HttpClientRequest$Factory;Lai/onnxruntime/telemetry/HttpClient$Configuration;)V
    .locals 1
    .param p2    # Lai/onnxruntime/telemetry/HttpClientRequest$Factory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lai/onnxruntime/telemetry/HttpClient$Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lai/onnxruntime/telemetry/HttpClient;->m_context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lai/onnxruntime/telemetry/HttpClient;->m_requestFactory:Lai/onnxruntime/telemetry/HttpClientRequest$Factory;

    .line 7
    .line 8
    const-string p2, "java.io.tmpdir"

    .line 9
    .line 10
    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p0, p2}, Lai/onnxruntime/telemetry/HttpClient;->setCacheFilePath(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p3}, Lai/onnxruntime/telemetry/HttpClient$Configuration;->isInitializeDeviceInfo()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lai/onnxruntime/telemetry/HttpClient;->calculateID(Landroid/content/Context;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    sget-object p3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 28
    .line 29
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p0, p2, p3, v0}, Lai/onnxruntime/telemetry/HttpClient;->setDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-direct {p0, p1}, Lai/onnxruntime/telemetry/HttpClient;->calculateAndSetSystemInfo(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lai/onnxruntime/telemetry/HttpClient;->createExecutor()Ljava/util/concurrent/ExecutorService;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iput-object p2, p0, Lai/onnxruntime/telemetry/HttpClient;->m_executor:Ljava/util/concurrent/ExecutorService;

    .line 42
    .line 43
    invoke-virtual {p0}, Lai/onnxruntime/telemetry/HttpClient;->createClientInstance()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lai/onnxruntime/telemetry/HttpClient;->hasConnectivityManager()Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_1

    .line 51
    .line 52
    const-string p2, "android.permission.ACCESS_NETWORK_STATE"

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-nez p2, :cond_1

    .line 59
    .line 60
    :try_start_0
    const-string p2, "connectivity"

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    check-cast p2, Landroid/net/ConnectivityManager;

    .line 67
    .line 68
    iput-object p2, p0, Lai/onnxruntime/telemetry/HttpClient;->m_connectivityManager:Landroid/net/ConnectivityManager;

    .line 69
    .line 70
    if-eqz p2, :cond_1

    .line 71
    .line 72
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    new-instance p3, Lai/onnxruntime/telemetry/ConnectivityCallback;

    .line 77
    .line 78
    invoke-direct {p3, p0, p2}, Lai/onnxruntime/telemetry/ConnectivityCallback;-><init>(Lai/onnxruntime/telemetry/HttpClient;Z)V

    .line 79
    .line 80
    .line 81
    iput-object p3, p0, Lai/onnxruntime/telemetry/HttpClient;->m_callback:Lai/onnxruntime/telemetry/ConnectivityCallback;

    .line 82
    .line 83
    invoke-virtual {p0, p2}, Lai/onnxruntime/telemetry/HttpClient;->onCostChange(Z)V

    .line 84
    .line 85
    .line 86
    iget-object p2, p0, Lai/onnxruntime/telemetry/HttpClient;->m_connectivityManager:Landroid/net/ConnectivityManager;

    .line 87
    .line 88
    iget-object p3, p0, Lai/onnxruntime/telemetry/HttpClient;->m_callback:Lai/onnxruntime/telemetry/ConnectivityCallback;

    .line 89
    .line 90
    invoke-virtual {p2, p3}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    :catch_0
    :cond_1
    new-instance p2, Lai/onnxruntime/telemetry/PowerInfoReceiver;

    .line 94
    .line 95
    invoke-direct {p2, p0}, Lai/onnxruntime/telemetry/PowerInfoReceiver;-><init>(Lai/onnxruntime/telemetry/HttpClient;)V

    .line 96
    .line 97
    .line 98
    iput-object p2, p0, Lai/onnxruntime/telemetry/HttpClient;->m_power_receiver:Lai/onnxruntime/telemetry/PowerInfoReceiver;

    .line 99
    .line 100
    new-instance p2, Landroid/content/IntentFilter;

    .line 101
    .line 102
    const-string p3, "android.intent.action.BATTERY_CHANGED"

    .line 103
    .line 104
    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object p3, p0, Lai/onnxruntime/telemetry/HttpClient;->m_power_receiver:Lai/onnxruntime/telemetry/PowerInfoReceiver;

    .line 108
    .line 109
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    if-eqz p2, :cond_2

    .line 114
    .line 115
    iget-object p3, p0, Lai/onnxruntime/telemetry/HttpClient;->m_power_receiver:Lai/onnxruntime/telemetry/PowerInfoReceiver;

    .line 116
    .line 117
    invoke-virtual {p3, p1, p2}, Lai/onnxruntime/telemetry/PowerInfoReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 118
    .line 119
    .line 120
    :cond_2
    return-void
.end method

.method private calculateAndSetSystemInfo(Landroid/content/Context;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    :goto_1
    move-object v4, v1

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    const-string v1, ""

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 36
    .line 37
    invoke-static {v1}, Lai/onnxruntime/telemetry/HttpClient;->getLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-static {}, Lai/onnxruntime/telemetry/HttpClient;->getTimeZone()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    invoke-direct {p0, p1}, Lai/onnxruntime/telemetry/HttpClient;->getDeviceClass(Landroid/content/Context;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 50
    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    const-string p1, "GECOS III"

    .line 54
    .line 55
    :cond_1
    move-object v6, p1

    .line 56
    sget-object p1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 57
    .line 58
    const-string v1, " "

    .line 59
    .line 60
    invoke-static {v6, v1, p1}, Lai/onnxruntime/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    const-string p1, "A:"

    .line 65
    .line 66
    invoke-static {p1, v0}, Lai/onnxruntime/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    move-object v2, p0

    .line 71
    invoke-virtual/range {v2 .. v9}, Lai/onnxruntime/telemetry/HttpClient;->setSystemInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method private calculateID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :try_start_0
    const-string v0, "android_id"

    .line 6
    .line 7
    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    if-nez p1, :cond_0

    .line 18
    .line 19
    const-string p1, ""

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    const-string v0, "a:"

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method private getDeviceClass(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x3

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string p1, "Android.PC"

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    const-string p1, "Android.Phone"

    .line 20
    .line 21
    return-object p1
.end method

.method private static getLanguageTag(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static getTimeZone()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "GMT"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 20
    .line 21
    const-string v2, "Z"

    .line 22
    .line 23
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v1, v1, -0x2

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const/16 v3, 0x3a

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    return-object v0
.end method


# virtual methods
.method public native createClientInstance()V
.end method

.method public createExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public createTask(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[I[B)Ljava/util/concurrent/FutureTask;
    .locals 7
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "[I[B)",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v6, Lai/onnxruntime/telemetry/HttpClientRequest$Headers;

    .line 2
    .line 3
    invoke-direct {v6, p5, p6}, Lai/onnxruntime/telemetry/HttpClientRequest$Headers;-><init>([I[B)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lai/onnxruntime/telemetry/HttpClient;->m_requestFactory:Lai/onnxruntime/telemetry/HttpClientRequest$Factory;

    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    invoke-interface/range {v0 .. v6}, Lai/onnxruntime/telemetry/HttpClientRequest$Factory;->create(Lai/onnxruntime/telemetry/HttpClient;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lai/onnxruntime/telemetry/HttpClientRequest$Headers;)Lai/onnxruntime/telemetry/HttpClientRequest;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Lai/onnxruntime/telemetry/HttpClient$FutureShim;

    .line 18
    .line 19
    invoke-direct {p2, p1}, Lai/onnxruntime/telemetry/HttpClient$FutureShim;-><init>(Lai/onnxruntime/telemetry/HttpClientRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-object p2

    .line 23
    :catch_0
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method public native deleteClientInstance()V
.end method

.method public native dispatchCallback(Ljava/lang/String;I[Ljava/lang/Object;[B)V
.end method

.method public executeTask(Ljava/util/concurrent/FutureTask;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lai/onnxruntime/telemetry/HttpClient;->m_executor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public finalize()V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 1
    iget-object v0, p0, Lai/onnxruntime/telemetry/HttpClient;->m_callback:Lai/onnxruntime/telemetry/ConnectivityCallback;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lai/onnxruntime/telemetry/HttpClient;->m_connectivityManager:Landroid/net/ConnectivityManager;

    .line 7
    .line 8
    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lai/onnxruntime/telemetry/HttpClient;->m_callback:Lai/onnxruntime/telemetry/ConnectivityCallback;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lai/onnxruntime/telemetry/HttpClient;->m_context:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v2, p0, Lai/onnxruntime/telemetry/HttpClient;->m_power_receiver:Lai/onnxruntime/telemetry/PowerInfoReceiver;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lai/onnxruntime/telemetry/HttpClient;->m_power_receiver:Lai/onnxruntime/telemetry/PowerInfoReceiver;

    .line 21
    .line 22
    invoke-virtual {p0}, Lai/onnxruntime/telemetry/HttpClient;->deleteClientInstance()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lai/onnxruntime/telemetry/HttpClient;->m_executor:Ljava/util/concurrent/ExecutorService;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public hasConnectivityManager()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public newUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    .line 1
    new-instance v0, Ljava/net/URL;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public native onCostChange(Z)V
.end method

.method public native onPowerChange(ZZ)V
.end method

.method public native setCacheFilePath(Ljava/lang/String;)V
.end method

.method public native setDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native setSystemInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
