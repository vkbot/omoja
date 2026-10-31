.class public final Lai/onnxruntime/TelemetryInitializer;
.super Landroid/content/ContentProvider;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field private static final TAG:Ljava/lang/String; = "ORTTelemetry"

.field private static client:Lai/onnxruntime/telemetry/HttpClient;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public onCreate()Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    return v1

    .line 9
    :cond_8
    :try_start_8
    const-string v2, "onnxruntime"

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-class v2, Lai/onnxruntime/TelemetryInitializer;

    .line 15
    .line 16
    monitor-enter v2
    :try_end_10
    .catch Ljava/lang/LinkageError; {:try_start_8 .. :try_end_10} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_10} :catch_27

    .line 17
    :try_start_10
    sget-object v3, Lai/onnxruntime/TelemetryInitializer;->client:Lai/onnxruntime/telemetry/HttpClient;

    .line 18
    .line 19
    if-nez v3, :cond_22

    .line 20
    .line 21
    new-instance v3, Lai/onnxruntime/telemetry/HttpClient;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {v3, v0}, Lai/onnxruntime/telemetry/HttpClient;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    sput-object v3, Lai/onnxruntime/TelemetryInitializer;->client:Lai/onnxruntime/telemetry/HttpClient;

    .line 31
    .line 32
    goto :goto_22

    .line 33
    :catchall_20
    move-exception v0

    .line 34
    goto :goto_25

    .line 35
    :cond_22
    :goto_22
    monitor-exit v2

    .line 36
    const/4 v0, 0x1

    .line 37
    return v0

    .line 38
    :goto_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_20

    .line 39
    :try_start_26
    throw v0
    :try_end_27
    .catch Ljava/lang/LinkageError; {:try_start_26 .. :try_end_27} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_27} :catch_27

    .line 40
    :catch_27
    move-exception v0

    .line 41
    goto :goto_2a

    .line 42
    :catch_29
    move-exception v0

    .line 43
    :goto_2a
    const-string v2, "ORTTelemetry"

    .line 44
    .line 45
    const-string v3, "Unable to initialize telemetry"

    .line 46
    .line 47
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method
