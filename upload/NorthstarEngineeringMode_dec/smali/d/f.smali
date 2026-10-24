.class public Ld/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/a;
.implements Ly/k;


# static fields
.field public static volatile a:Landroid/os/Handler;

.field public static volatile b:Landroid/os/Handler;

.field public static volatile c:Landroid/os/Handler;


# direct methods
.method public static A(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "DataJsonUtils"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "getJson err"

    invoke-static {v0, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "getJson "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static B()Landroid/os/Handler;
    .locals 3

    sget-object v0, Ld/f;->c:Landroid/os/Handler;

    if-nez v0, :cond_1

    const-class v0, Landroid/os/Handler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ld/f;->c:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Ld/f;->c:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Ld/f;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public static C(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result p0

    return p0
.end method

.method public static final D(I)I
    .locals 1

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_9

    const/16 v0, 0x46

    if-eq p0, v0, :cond_8

    const/16 v0, 0x48

    if-eq p0, v0, :cond_7

    const/16 v0, 0x58

    if-eq p0, v0, :cond_6

    const/16 v0, 0x69

    if-eq p0, v0, :cond_5

    const/16 v0, 0x6d

    if-eq p0, v0, :cond_4

    const/16 v0, 0x73

    if-eq p0, v0, :cond_3

    const/16 v0, 0x75

    if-eq p0, v0, :cond_2

    const/16 v0, 0x77

    if-eq p0, v0, :cond_1

    const/16 v0, 0x78

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x10

    goto :goto_0

    :cond_1
    const/16 p0, 0x40

    goto :goto_0

    :cond_2
    const/16 p0, 0x20

    goto :goto_0

    :cond_3
    const/4 p0, 0x4

    goto :goto_0

    :cond_4
    const/16 p0, 0x8

    goto :goto_0

    :cond_5
    const/4 p0, 0x2

    goto :goto_0

    :cond_6
    const/16 p0, 0x200

    goto :goto_0

    :cond_7
    const/16 p0, 0x80

    goto :goto_0

    :cond_8
    const/16 p0, 0x100

    goto :goto_0

    :cond_9
    const/16 p0, 0x400

    :goto_0
    return p0
.end method

.method public static E(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result p0

    return p0
.end method

.method public static F(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getSupportedProfiles()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static G(Landroid/bluetooth/BluetoothAdapter;)[Landroid/os/ParcelUuid;
    .locals 0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p0

    return-object p0
.end method

.method public static final H(Lh3/f;Ljava/lang/Throwable;)V
    .locals 4

    sget-object v0, Lx3/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/x;

    :try_start_0
    invoke-interface {v1, p0, p1}, Lv3/x;->t(Lh3/f;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    if-ne p1, v1, :cond_0

    move-object v2, p1

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception while trying to handle coroutine exception"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2, p1}, Ld/f;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Lx3/f;

    invoke-direct {v0, p0}, Lx3/f;-><init>(Lh3/f;)V

    invoke-static {p1, v0}, Ld/f;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static I(FI)Z
    .locals 1

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_0

    const/16 v0, 0x132

    if-gt p1, v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string p1, " isAutomaticGear  "

    const-string v0, "VehicleUtil"

    invoke-static {p1, p0, v0}, La4/a;->n(Ljava/lang/String;ZLjava/lang/String;)V

    return p0
.end method

.method public static J(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBondingInitiatedLocally()Z

    move-result p0

    return p0
.end method

.method public static K(Landroid/net/wifi/WifiInfo;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result p0

    return p0
.end method

.method public static L(Ljava/lang/Throwable;)Z
    .locals 1

    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/InterruptedException;

    if-nez v0, :cond_1

    instance-of p0, p0, Ljava/lang/LinkageError;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final M(I)Z
    .locals 1

    const v0, 0xfc00

    and-int/2addr p0, v0

    const v0, 0xd800

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static N(FI)Z
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const-string p1, "isInvalidValue "

    const-string v0, "VehicleUtil"

    invoke-static {p1, p0, v0}, La4/a;->n(Ljava/lang/String;ZLjava/lang/String;)V

    return p0
.end method

.method public static O(I)Z
    .locals 2

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_1

    const/16 v0, 0x65

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    const-string v0, "isManualGear  "

    const-string v1, "VehicleUtil"

    invoke-static {v0, p0, v1}, La4/a;->n(Ljava/lang/String;ZLjava/lang/String;)V

    return p0
.end method

.method public static P(Landroid/net/Uri;)Z
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "media"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static Q(Landroid/net/wifi/WifiInfo;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    move-result p0

    return p0
.end method

.method public static R(Landroid/net/wifi/WifiInfo;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result p0

    return p0
.end method

.method public static S(Lx3/d;Ln3/p;)V
    .locals 3

    sget-object v0, Lh3/g;->c:Lh3/g;

    sget-object v1, Lv3/a0;->c:Lv3/a0;

    invoke-static {p0, v0}, Lv3/u;->a(Lv3/z;Lh3/f;)Lh3/f;

    move-result-object p0

    new-instance v0, Lv3/k1;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lv3/a;-><init>(Lh3/f;Z)V

    invoke-virtual {v0, v1, v0, p1}, Lv3/a;->W(Lv3/a0;Lv3/a;Ln3/p;)V

    return-void
.end method

.method public static T([D[D[D[DI)D
    .locals 15

    move/from16 v0, p4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-wide v3, p1, v2

    aget-wide v5, p0, v2

    sub-double/2addr v3, v5

    aput-wide v3, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    move v4, v1

    move-wide v5, v2

    :goto_1
    if-ge v4, v0, :cond_1

    aget-wide v7, p3, v4

    mul-double/2addr v7, v7

    add-double/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    cmpl-double v4, v5, v2

    if-eqz v4, :cond_3

    move v4, v1

    move-wide v7, v2

    :goto_2
    if-ge v4, v0, :cond_2

    aget-wide v9, p3, v4

    aget-wide v11, p2, v4

    aget-wide v13, p0, v4

    sub-double/2addr v11, v13

    mul-double/2addr v11, v9

    add-double/2addr v7, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    div-double/2addr v7, v5

    goto :goto_3

    :cond_3
    move-wide v7, v2

    :goto_3
    cmpg-double v4, v7, v2

    if-gez v4, :cond_4

    move-wide v7, v2

    goto :goto_4

    :cond_4
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v7, v4

    if-lez v6, :cond_5

    move-wide v7, v4

    :cond_5
    :goto_4
    move v4, v1

    :goto_5
    if-ge v4, v0, :cond_6

    aget-wide v5, p0, v4

    aget-wide v9, p3, v4

    mul-double/2addr v9, v7

    add-double/2addr v9, v5

    aput-wide v9, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    aput-wide v7, p3, v0

    :goto_6
    if-ge v1, v0, :cond_7

    aget-wide v4, p2, v1

    aget-wide v6, p3, v1

    sub-double/2addr v4, v6

    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    return-wide v2
.end method

.method public static U(Landroid/content/Context;Lcom/mega/engineeringmode/utils/TextClock$a;Landroid/os/UserHandle;Landroid/content/IntentFilter;Landroid/os/Handler;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public static V(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result p0

    return p0
.end method

.method public static W(Ljava/lang/Throwable;)V
    .locals 1

    instance-of v0, p0, Ljava/lang/Error;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    check-cast p0, Ljava/lang/Error;

    throw p0
.end method

.method public static X(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Y(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    return-void
.end method

.method public static Z(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    return-void
.end method

.method public static a0(Landroid/bluetooth/BluetoothAdapter;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mega/nexus/bluetooth/MegaBluetoothAdapterWrapper;->setScanMode(Landroid/bluetooth/BluetoothAdapter;I)Z

    return-void
.end method

.method public static b0(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothDevice;->setSimAccessPermission(I)Z

    return-void
.end method

.method public static c(IJ)I
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->addExact(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument too large or result overflows"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static c0(Ljava/util/List;)[B
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [B

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [B

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p0, p1, :cond_0

    sget-object v0, Lk3/b;->a:Lk3/a;

    invoke-virtual {v0, p0, p1}, Lk3/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static d0([DIZ)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-ltz p1, :cond_2

    array-length v1, p0

    if-gt p1, v1, :cond_1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance p2, Lp4/l;

    sget-object v0, Lq4/c;->G1:Lq4/c;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p2, v0, p1, p0}, Lp4/l;-><init>(Lq4/c;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p2

    :cond_2
    new-instance p0, Lp4/j;

    sget-object p2, Lq4/c;->u1:Lq4/c;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lp4/j;-><init>(Lq4/c;Ljava/lang/Integer;)V

    throw p0

    :cond_3
    new-instance p0, Lp4/i;

    sget-object p1, Lq4/c;->z1:Lq4/c;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lp4/d;-><init>(Lq4/c;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static e(Lv3/z;Ly3/b;Ln3/p;)Lv3/g0;
    .locals 2

    sget-object v0, Lv3/a0;->c:Lv3/a0;

    invoke-static {p0, p1}, Lv3/u;->a(Lv3/z;Lh3/f;)Lh3/f;

    move-result-object p0

    new-instance p1, Lv3/g0;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Lv3/a;-><init>(Lh3/f;Z)V

    invoke-virtual {p1, v0, p1, p2}, Lv3/a;->W(Lv3/a0;Lv3/a;Ln3/p;)V

    return-object p1
.end method

.method public static e0(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/ByteBuffer;)V
    .locals 4

    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-interface {p0, p1}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to fully write: channel="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " length="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " written="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public static f(ILjava/lang/String;)Lk0/c;
    .locals 16

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lm0/c;

    invoke-direct {v1}, Lm0/c;-><init>()V

    new-instance v2, Lm0/c;

    invoke-direct {v2}, Lm0/c;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_2a

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-eq v9, v10, :cond_1

    const/16 v11, 0x9

    if-eq v9, v11, :cond_1

    const/16 v12, 0xa

    if-ne v9, v12, :cond_2

    :cond_1
    :goto_1
    const/4 v10, 0x0

    goto/16 :goto_e

    :cond_2
    const-string v13, "("

    const/16 v14, 0x2f

    const/16 v15, 0x2a

    const/16 v3, 0x5e

    const/16 v4, 0x29

    const/16 v12, 0x2b

    const/16 v11, 0x2d

    if-eqz v6, :cond_24

    const/16 v10, 0x28

    if-ne v9, v10, :cond_4

    if-nez v8, :cond_3

    invoke-virtual {v2, v13}, Lm0/c;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-instance v0, Lk0/d;

    const-string v1, "Open bracket found after negate."

    invoke-direct {v0, v1, v5}, Lk0/d;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_4
    if-nez v7, :cond_7

    if-eq v9, v12, :cond_5

    if-ne v9, v11, :cond_7

    :cond_5
    const/4 v3, 0x1

    const/4 v7, 0x1

    if-ne v9, v11, :cond_6

    const/4 v8, 0x1

    :cond_6
    :goto_2
    const/4 v10, 0x0

    goto/16 :goto_11

    :cond_7
    const/16 v6, 0x2e

    const/16 v7, 0x39

    const/16 v13, 0x30

    if-lt v9, v13, :cond_8

    if-le v9, v7, :cond_9

    :cond_8
    if-ne v9, v6, :cond_14

    :cond_9
    add-int/lit8 v3, v5, 0x1

    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_12

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v13, :cond_a

    if-le v4, v7, :cond_b

    :cond_a
    if-ne v4, v6, :cond_c

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_c
    const/16 v6, 0x65

    if-eq v4, v6, :cond_d

    const/16 v6, 0x45

    if-ne v4, v6, :cond_12

    :cond_d
    add-int/lit8 v4, v3, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_10

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v12, :cond_f

    if-eq v6, v11, :cond_f

    if-lt v6, v13, :cond_e

    if-gt v6, v7, :cond_e

    goto :goto_4

    :cond_e
    new-instance v0, Lk0/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected digit, plus sign or minus sign but found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int v4, v4, p0

    invoke-direct {v0, v1, v4}, Lk0/d;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_f
    :goto_4
    add-int/lit8 v3, v3, 0x2

    goto :goto_5

    :cond_10
    move v3, v4

    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_12

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v13, :cond_12

    if-le v4, v7, :cond_11

    goto :goto_6

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_12
    :goto_6
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_13

    neg-double v4, v4

    :cond_13
    new-instance v6, Lk0/k;

    invoke-direct {v6}, Lk0/c;-><init>()V

    iput-wide v4, v6, Lk0/k;->b:D

    invoke-virtual {v1, v6}, Lm0/c;->c(Ljava/lang/Object;)V

    add-int/lit8 v5, v3, -0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto/16 :goto_2

    :catchall_0
    new-instance v0, Lk0/d;

    const-string v1, "Improperly formatted value: "

    invoke-static {v1, v4}, Landroidx/activity/result/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int v5, v5, p0

    invoke-direct {v0, v1, v5}, Lk0/d;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_14
    const/16 v6, 0x2c

    if-eq v9, v6, :cond_23

    if-eq v9, v4, :cond_23

    if-eq v9, v3, :cond_23

    if-eq v9, v15, :cond_23

    if-eq v9, v14, :cond_23

    if-eq v9, v12, :cond_23

    if-eq v9, v11, :cond_23

    add-int/lit8 v7, v5, 0x1

    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v7, v13, :cond_15

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v6, :cond_15

    const/16 v13, 0x20

    if-eq v9, v13, :cond_15

    const/16 v13, 0x9

    if-eq v9, v13, :cond_15

    const/16 v13, 0xa

    if-eq v9, v13, :cond_15

    if-eq v9, v10, :cond_15

    if-eq v9, v4, :cond_15

    if-eq v9, v3, :cond_15

    if-eq v9, v15, :cond_15

    if-eq v9, v14, :cond_15

    if-eq v9, v12, :cond_15

    if-eq v9, v11, :cond_15

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_15
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v7, v3, :cond_22

    move v11, v7

    const/16 v3, 0x20

    :goto_8
    const/16 v12, 0x9

    const/16 v13, 0xa

    if-eq v9, v3, :cond_16

    if-eq v9, v12, :cond_16

    if-ne v9, v13, :cond_17

    :cond_16
    add-int/lit8 v11, v11, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-ne v11, v14, :cond_21

    :cond_17
    if-ne v9, v10, :cond_20

    new-instance v3, Lk0/f;

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v8}, Lk0/j;-><init>(Ljava/lang/String;Z)V

    new-instance v7, Lm0/a;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x0

    iput v9, v7, Lm0/a;->a:I

    const/4 v8, 0x1

    new-array v12, v8, [Ljava/lang/Object;

    iput-object v12, v7, Lm0/a;->b:[Ljava/lang/Object;

    iput-object v7, v3, Lk0/f;->d:Lm0/a;

    new-array v7, v8, [D

    iput-object v7, v3, Lk0/f;->e:[D

    add-int/lit8 v7, v11, 0x1

    const/4 v8, 0x1

    :goto_9
    const-string v12, "Incomplete function."

    if-eqz v8, :cond_1d

    add-int/lit8 v13, v11, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v13, v14, :cond_1c

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v4, :cond_19

    add-int/lit8 v8, v8, -0x1

    :cond_18
    :goto_a
    move v11, v13

    goto :goto_9

    :cond_19
    if-ne v14, v10, :cond_1a

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_1a
    if-ne v14, v6, :cond_18

    const/4 v14, 0x1

    if-ne v8, v14, :cond_18

    invoke-virtual {v0, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Ld/f;->f(ILjava/lang/String;)Lk0/c;

    move-result-object v14

    if-eqz v14, :cond_1b

    invoke-virtual {v3, v14}, Lk0/f;->e(Lk0/c;)V

    add-int/lit8 v7, v11, 0x2

    goto :goto_a

    :cond_1b
    new-instance v0, Lk0/d;

    add-int v7, v7, p0

    invoke-direct {v0, v12, v7}, Lk0/d;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1c
    new-instance v0, Lk0/d;

    const-string v1, "Missing function close bracket."

    add-int v5, v5, p0

    invoke-direct {v0, v1, v5}, Lk0/d;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1d
    invoke-virtual {v0, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Ld/f;->f(ILjava/lang/String;)Lk0/c;

    move-result-object v4

    if-nez v4, :cond_1f

    iget-object v4, v3, Lk0/f;->d:Lm0/a;

    iget v4, v4, Lm0/a;->a:I

    if-gtz v4, :cond_1e

    goto :goto_b

    :cond_1e
    new-instance v0, Lk0/d;

    add-int v7, v7, p0

    invoke-direct {v0, v12, v7}, Lk0/d;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1f
    invoke-virtual {v3, v4}, Lk0/f;->e(Lk0/c;)V

    :goto_b
    invoke-virtual {v1, v3}, Lm0/c;->c(Ljava/lang/Object;)V

    goto :goto_c

    :cond_20
    const/4 v9, 0x0

    new-instance v3, Lk0/m;

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v8}, Lk0/j;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v3}, Lm0/c;->c(Ljava/lang/Object;)V

    add-int/lit8 v11, v11, -0x1

    :goto_c
    move v5, v11

    goto :goto_d

    :cond_21
    const/4 v9, 0x0

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move v9, v14

    goto/16 :goto_8

    :cond_22
    const/4 v9, 0x0

    new-instance v3, Lk0/m;

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v8}, Lk0/j;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v3}, Lm0/c;->c(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    :goto_d
    move v6, v9

    move v7, v6

    move v8, v7

    move v10, v8

    :goto_e
    const/4 v3, 0x1

    goto/16 :goto_11

    :cond_23
    new-instance v0, Lk0/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected character: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int v5, v5, p0

    invoke-direct {v0, v1, v5}, Lk0/d;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_24
    const/4 v10, 0x0

    if-ne v9, v4, :cond_27

    new-instance v3, Lm0/c;

    invoke-direct {v3}, Lm0/c;-><init>()V

    new-instance v4, Lm0/c;

    invoke-direct {v4}, Lm0/c;-><init>()V

    :goto_f
    iget v9, v2, Lm0/b;->c:I

    if-eqz v9, :cond_26

    iget-object v9, v2, Lm0/b;->a:Lm0/b$a;

    invoke-virtual {v2, v9}, Lm0/b;->b(Lm0/b$a;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_25

    iget-object v9, v1, Lm0/b;->a:Lm0/b$a;

    invoke-virtual {v1, v9}, Lm0/b;->b(Lm0/b$a;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v9}, Lm0/b;->a(Ljava/lang/Object;)V

    invoke-static {v3, v4}, Ld/f;->g(Lm0/c;Lm0/c;)Lk0/c;

    move-result-object v3

    invoke-virtual {v1, v3}, Lm0/c;->c(Ljava/lang/Object;)V

    goto :goto_e

    :cond_25
    iget-object v11, v1, Lm0/b;->a:Lm0/b$a;

    invoke-virtual {v1, v11}, Lm0/b;->b(Lm0/b$a;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3, v11}, Lm0/b;->a(Ljava/lang/Object;)V

    invoke-virtual {v4, v9}, Lm0/b;->a(Ljava/lang/Object;)V

    goto :goto_f

    :cond_26
    new-instance v0, Lk0/d;

    const-string v1, "Missing open bracket."

    add-int v5, v5, p0

    invoke-direct {v0, v1, v5}, Lk0/d;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_27
    if-eq v9, v3, :cond_29

    if-eq v9, v15, :cond_29

    if-eq v9, v14, :cond_29

    if-eq v9, v12, :cond_29

    if-ne v9, v11, :cond_28

    goto :goto_10

    :cond_28
    new-instance v0, Lk0/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected operator or close bracket but found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int v5, v5, p0

    invoke-direct {v0, v1, v5}, Lk0/d;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_29
    :goto_10
    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lm0/c;->c(Ljava/lang/Object;)V

    const/4 v3, 0x1

    const/4 v6, 0x1

    :goto_11
    add-int/2addr v5, v3

    goto/16 :goto_0

    :cond_2a
    const/4 v3, 0x1

    iget v4, v1, Lm0/b;->c:I

    iget v5, v2, Lm0/b;->c:I

    add-int/2addr v5, v3

    if-ne v4, v5, :cond_2b

    invoke-static {v1, v2}, Ld/f;->g(Lm0/c;Lm0/c;)Lk0/c;

    move-result-object v0

    return-object v0

    :cond_2b
    new-instance v1, Lk0/d;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int v0, v0, p0

    const-string v2, "Incomplete expression."

    invoke-direct {v1, v2, v0}, Lk0/d;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public static f0(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V
    .locals 2

    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v1

    if-lez v1, :cond_0

    int-to-long v0, v1

    add-long/2addr p2, v0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to fully write: channel="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " length="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " written="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public static g(Lm0/c;Lm0/c;)Lk0/c;
    .locals 11

    new-instance v0, Lm0/c;

    invoke-direct {v0}, Lm0/c;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move-object v5, v3

    move v4, v2

    :goto_0
    iget v6, p1, Lm0/b;->c:I

    const/4 v7, 0x1

    if-nez v6, :cond_0

    move v6, v7

    goto :goto_1

    :cond_0
    move v6, v2

    :goto_1
    if-nez v6, :cond_3

    iget-object v6, p1, Lm0/b;->b:Lm0/b$a;

    invoke-virtual {p1, v6}, Lm0/b;->b(Lm0/b$a;)Ljava/lang/Object;

    move-result-object v6

    iget-object v8, p0, Lm0/b;->b:Lm0/b$a;

    invoke-virtual {p0, v8}, Lm0/b;->b(Lm0/b$a;)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p0, Lm0/b;->b:Lm0/b$a;

    invoke-virtual {p0, v9}, Lm0/b;->b(Lm0/b$a;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "^"

    invoke-virtual {v6, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v6, Lk0/b;

    check-cast v8, Lk0/c;

    check-cast v9, Lk0/c;

    invoke-direct {v6, v8, v9, v7}, Lk0/b;-><init>(Lk0/c;Lk0/c;I)V

    invoke-virtual {p0, v6}, Lm0/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v9}, Lm0/b;->a(Ljava/lang/Object;)V

    new-instance v7, Lm0/b$a;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v1, v7, Lm0/b$a;->a:Lm0/b$a;

    iput-object v1, v7, Lm0/b$a;->b:Lm0/b$a;

    iput-object v6, v7, Lm0/b$a;->c:Ljava/lang/Object;

    if-nez v4, :cond_2

    move-object v3, v7

    goto :goto_2

    :cond_2
    iput-object v5, v7, Lm0/b$a;->a:Lm0/b$a;

    iput-object v7, v5, Lm0/b$a;->b:Lm0/b$a;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v8}, Lm0/c;->c(Ljava/lang/Object;)V

    move-object v5, v7

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lm0/b;->a:Lm0/b$a;

    invoke-virtual {p0, v6}, Lm0/b;->b(Lm0/b$a;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Lm0/c;->c(Ljava/lang/Object;)V

    :goto_3
    if-nez v4, :cond_4

    move v6, v7

    goto :goto_4

    :cond_4
    move v6, v2

    :goto_4
    if-nez v6, :cond_a

    if-nez v4, :cond_5

    move-object v6, v1

    goto :goto_6

    :cond_5
    iget-object v6, v3, Lm0/b$a;->c:Ljava/lang/Object;

    if-ne v3, v5, :cond_7

    iget-object v5, v5, Lm0/b$a;->a:Lm0/b$a;

    if-nez v5, :cond_6

    move-object v3, v1

    goto :goto_5

    :cond_6
    iput-object v1, v5, Lm0/b$a;->b:Lm0/b$a;

    goto :goto_5

    :cond_7
    iget-object v3, v3, Lm0/b$a;->b:Lm0/b$a;

    iput-object v1, v3, Lm0/b$a;->a:Lm0/b$a;

    :goto_5
    add-int/lit8 v4, v4, -0x1

    :goto_6
    iget-object v8, v0, Lm0/b;->b:Lm0/b$a;

    invoke-virtual {v0, v8}, Lm0/b;->b(Lm0/b$a;)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, v0, Lm0/b;->b:Lm0/b$a;

    invoke-virtual {v0, v9}, Lm0/b;->b(Lm0/b$a;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "*"

    invoke-virtual {v6, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    new-instance v6, Lk0/a;

    check-cast v8, Lk0/c;

    check-cast v9, Lk0/c;

    invoke-direct {v6, v8, v9, v7}, Lk0/a;-><init>(Lk0/c;Lk0/c;I)V

    invoke-virtual {v0, v6}, Lm0/b;->a(Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    const-string v10, "/"

    invoke-virtual {v6, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    new-instance v6, Lk0/b;

    check-cast v8, Lk0/c;

    check-cast v9, Lk0/c;

    invoke-direct {v6, v8, v9, v2}, Lk0/b;-><init>(Lk0/c;Lk0/c;I)V

    invoke-virtual {v0, v6}, Lm0/b;->a(Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v0, v9}, Lm0/b;->a(Ljava/lang/Object;)V

    invoke-virtual {p1, v6}, Lm0/c;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v8}, Lm0/c;->c(Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    iget-object v1, v0, Lm0/b;->a:Lm0/b$a;

    invoke-virtual {v0, v1}, Lm0/b;->b(Lm0/b$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lm0/c;->c(Ljava/lang/Object;)V

    :goto_7
    iget v0, p1, Lm0/b;->c:I

    if-nez v0, :cond_b

    iget-object p1, p0, Lm0/b;->a:Lm0/b$a;

    invoke-virtual {p0, p1}, Lm0/b;->b(Lm0/b$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk0/c;

    return-object p0

    :cond_b
    iget-object v0, p1, Lm0/b;->b:Lm0/b$a;

    invoke-virtual {p1, v0}, Lm0/b;->b(Lm0/b$a;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lm0/b;->b:Lm0/b$a;

    invoke-virtual {p0, v1}, Lm0/b;->b(Lm0/b$a;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lm0/b;->b:Lm0/b$a;

    invoke-virtual {p0, v3}, Lm0/b;->b(Lm0/b$a;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    new-instance v0, Lk0/a;

    check-cast v1, Lk0/c;

    check-cast v3, Lk0/c;

    invoke-direct {v0, v1, v3, v2}, Lk0/a;-><init>(Lk0/c;Lk0/c;I)V

    invoke-virtual {p0, v0}, Lm0/b;->a(Ljava/lang/Object;)V

    goto :goto_7

    :cond_c
    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    new-instance v0, Lk0/i;

    check-cast v1, Lk0/c;

    check-cast v3, Lk0/c;

    invoke-direct {v0, v1, v3}, Lk0/g;-><init>(Lk0/c;Lk0/c;)V

    invoke-virtual {p0, v0}, Lm0/b;->a(Ljava/lang/Object;)V

    goto :goto_7

    :cond_d
    new-instance p0, Lk0/d;

    const-string p1, "Unknown operator: "

    invoke-static {p1, v0}, La4/a;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lk0/d;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static h(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    return-void
.end method

.method public static i(I[[D)[[D
    .locals 3

    array-length v0, p1

    if-ne p0, v0, :cond_1

    mul-int/lit8 v0, p0, 0x2

    new-array v0, v0, [[D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p1, v1

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    return-object p1
.end method

.method public static final j(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p1, p0}, Ld/f;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static k(ILjava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x1

    if-eq p0, v0, :cond_15

    if-nez p0, :cond_0

    goto/16 :goto_8

    :cond_0
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v3, 0x20

    if-ltz v2, :cond_1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :cond_3
    move-object v1, p1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_5

    return-object v1

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v3, :cond_b

    move v4, p1

    :goto_0
    if-ge v4, p0, :cond_9

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_8

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v5, p0, -0x1

    if-ne v4, v5, :cond_7

    goto :goto_1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_8

    goto :goto_1

    :cond_8
    add-int/2addr v4, p1

    goto :goto_0

    :cond_9
    if-ne v4, p0, :cond_a

    add-int/lit8 p1, v4, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v3, :cond_a

    :goto_1
    move p1, v4

    goto :goto_3

    :cond_a
    return-object v1

    :cond_b
    move v4, v2

    :goto_2
    add-int/lit8 p1, v4, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge p1, v5, :cond_c

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_c

    move v4, p1

    goto :goto_2

    :cond_c
    move p1, v2

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    :cond_d
    :goto_4
    add-int/2addr v4, v0

    if-lt v4, p0, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v3, :cond_d

    :cond_f
    :goto_5
    add-int/lit8 v6, p1, 0x1

    add-int/lit8 v7, v4, 0x1

    aget-char v8, v5, v4

    aput-char v8, v5, p1

    if-lt v7, p0, :cond_10

    move p1, v6

    goto :goto_6

    :cond_10
    aget-char v8, v5, v7

    if-ne v8, v3, :cond_14

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 v4, v4, 0x2

    aput-char v8, v5, v6

    if-lt v4, p0, :cond_13

    :goto_6
    new-instance p0, Ljava/lang/String;

    if-eqz p1, :cond_12

    add-int/lit8 v0, p1, -0x1

    aget-char v1, v5, v0

    if-eq v1, v3, :cond_11

    goto :goto_7

    :cond_11
    move p1, v0

    :cond_12
    :goto_7
    invoke-direct {p0, v5, v2, p1}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_13
    aget-char v6, v5, v4

    if-ne v6, v3, :cond_f

    goto :goto_4

    :cond_14
    move p1, v6

    move v4, v7

    goto :goto_5

    :cond_15
    :goto_8
    return-object p1
.end method

.method public static final l(II)I
    .locals 1

    const v0, 0xd800

    sub-int/2addr p0, v0

    shl-int/lit8 p0, p0, 0xa

    const/high16 v0, 0x10000

    add-int/2addr p0, v0

    add-int/2addr p0, p1

    const p1, 0xdc00

    sub-int/2addr p0, p1

    return p0
.end method

.method public static m(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/mega/nexus/bluetooth/MegaBluetoothAdapterWrapper;->connectAllEnabledProfiles(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public static n(Ljava/lang/String;)[B
    .locals 0

    invoke-static {p0}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/lang/String;Ljava/lang/String;Ln3/l;)V
    .locals 3

    const-string/jumbo v0, "sourcePath"

    invoke-static {p0, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destPath"

    invoke-static {p1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_0
    :goto_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p0, 0x400

    new-array p0, p0, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1, p0, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const/4 p0, 0x0

    :try_start_2
    invoke-static {v1, p0}, Ld/f;->j(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {p1, p0}, Ld/f;->j(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Ln3/l;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_2
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-static {v1, p0}, Ld/f;->j(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v1

    :try_start_7
    invoke-static {p1, p0}, Ld/f;->j(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Error copying file: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IOUtils"

    invoke-static {p1, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Ln3/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    return-void
.end method

.method public static final p(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_0

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_1

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_2

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_3

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_4

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_5

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_6

    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_7

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_8

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_9

    const/16 p0, 0x2c

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final q(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [C

    const/high16 v1, 0x10000

    sub-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0xa

    const v2, 0xd800

    add-int/2addr v1, v2

    int-to-char v1, v1

    const/4 v2, 0x0

    aput-char v1, v0, v2

    and-int/lit16 p0, p0, 0x3ff

    const v1, 0xdc00

    add-int/2addr p0, v1

    int-to-char p0, p0

    const/4 v1, 0x1

    aput-char p0, v0, v1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static r(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mega/nexus/bluetooth/MegaBluetoothAdapterWrapper;->disconnectAllEnabledProfiles(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;)Z

    return-void
.end method

.method public static s(Ljava/util/List;)Ljava/util/List;
    .locals 0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static t(DLjava/text/NumberFormat;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p0, p1, p3, p4}, Ljava/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p2, 0x28

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const/16 p0, 0x29

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    return-void
.end method

.method public static u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static v()Z
    .locals 2

    const-string v0, "bury.point.value"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static w(Landroid/bluetooth/BluetoothAdapter;)I
    .locals 0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result p0

    return p0
.end method

.method public static x()Landroid/os/Handler;
    .locals 3

    sget-object v0, Ld/f;->a:Landroid/os/Handler;

    if-nez v0, :cond_1

    const-class v0, Landroid/os/Handler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ld/f;->a:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "HandlerUtil"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Ld/f;->a:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Ld/f;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static y()Landroid/os/Handler;
    .locals 3

    sget-object v0, Ld/f;->b:Landroid/os/Handler;

    if-nez v0, :cond_1

    const-class v0, Landroid/os/Handler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ld/f;->b:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "HandlerUtil2"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Ld/f;->b:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Ld/f;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public static z(Ljava/lang/String;I)I
    .locals 0

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Li/f;)Ljava/io/File;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public b(Li/f;Ll/g;)V
    .locals 0

    return-void
.end method
