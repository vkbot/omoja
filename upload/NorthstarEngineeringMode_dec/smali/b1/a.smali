.class public Lb1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = ""

.field public static b:Ljava/lang/String; = ""

.field public static c:Ljava/util/Properties;


# direct methods
.method public static A(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageEventListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    return-void
.end method

.method public static B(Landroid/os/Parcel;[B)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Parcel;->writeBlob([BII)V

    return-void
.end method

.method public static varargs a([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 2

    array-length v0, p0

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Lg3/b;

    invoke-direct {v1, p0}, Lg3/b;-><init>([Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static b(Ljava/lang/Object;Lh3/d;Ln3/p;)Lh3/d;
    .locals 1

    const-string v0, "completion"

    invoke-static {p1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lj3/a;

    invoke-virtual {p2, p0, p1}, Lj3/a;->create(Ljava/lang/Object;Lh3/d;)Lh3/d;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/lang/Throwable;)Lf3/c$a;
    .locals 1

    const-string v0, "exception"

    invoke-static {p0, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lf3/c$a;

    invoke-direct {v0, p0}, Lf3/c$a;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static d([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    instance-of v5, v4, [Ljava/lang/Object;

    if-eqz v5, :cond_0

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v4}, Lb1/a;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static e(JJ)J
    .locals 23

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    sget-object v7, Lq4/c;->h1:Lq4/c;

    if-eqz v6, :cond_9

    cmp-long v8, v2, v4

    if-nez v8, :cond_0

    goto/16 :goto_5

    :cond_0
    if-lez v6, :cond_1

    neg-long v9, v0

    goto :goto_0

    :cond_1
    move-wide v9, v0

    :goto_0
    if-lez v8, :cond_2

    neg-long v11, v2

    goto :goto_1

    :cond_2
    move-wide v11, v2

    :goto_1
    const/4 v6, 0x0

    :goto_2
    const-wide/16 v13, 0x1

    and-long v15, v9, v13

    cmp-long v8, v15, v4

    const/16 v4, 0x3f

    const-wide/16 v19, 0x2

    if-nez v8, :cond_3

    and-long v21, v11, v13

    const-wide/16 v17, 0x0

    cmp-long v5, v21, v17

    if-nez v5, :cond_3

    if-ge v6, v4, :cond_3

    div-long v9, v9, v19

    div-long v11, v11, v19

    add-int/lit8 v6, v6, 0x1

    const-wide/16 v4, 0x0

    goto :goto_2

    :cond_3
    if-eq v6, v4, :cond_8

    cmp-long v0, v15, v13

    if-nez v0, :cond_4

    move-wide v0, v11

    goto :goto_3

    :cond_4
    div-long v0, v9, v19

    neg-long v0, v0

    :cond_5
    :goto_3
    and-long v2, v0, v13

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    div-long v0, v0, v19

    goto :goto_3

    :cond_6
    cmp-long v2, v0, v4

    if-lez v2, :cond_7

    neg-long v0, v0

    move-wide v9, v0

    goto :goto_4

    :cond_7
    move-wide v11, v0

    :goto_4
    sub-long v0, v11, v9

    div-long v0, v0, v19

    cmp-long v2, v0, v4

    if-nez v2, :cond_5

    neg-long v0, v9

    shl-long v2, v13, v6

    mul-long/2addr v0, v2

    return-wide v0

    :cond_8
    new-instance v4, Lp4/c;

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v4, v7, v0}, Lp4/c;-><init>(Lq4/c;[Ljava/lang/Object;)V

    throw v4

    :cond_9
    :goto_5
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v0, v4

    if-eqz v6, :cond_a

    cmp-long v4, v2, v4

    if-eqz v4, :cond_a

    invoke-static/range {p0 .. p1}, Lz4/b;->b(J)J

    move-result-wide v0

    invoke-static/range {p2 .. p3}, Lz4/b;->b(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2

    :cond_a
    new-instance v4, Lp4/c;

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v4, v7, v0}, Lp4/c;-><init>(Lq4/c;[Ljava/lang/Object;)V

    throw v4
.end method

.method public static f(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Ls3/b;)Ljava/lang/Class;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lo3/c;

    invoke-interface {p0}, Lo3/c;->a()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v1, "short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const-class p0, Ljava/lang/Short;

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "float"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-class p0, Ljava/lang/Float;

    goto :goto_0

    :sswitch_2
    const-string v1, "boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const-class p0, Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "void"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const-class p0, Ljava/lang/Void;

    goto :goto_0

    :sswitch_4
    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const-class p0, Ljava/lang/Long;

    goto :goto_0

    :sswitch_5
    const-string v1, "char"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const-class p0, Ljava/lang/Character;

    goto :goto_0

    :sswitch_6
    const-string v1, "byte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const-class p0, Ljava/lang/Byte;

    goto :goto_0

    :sswitch_7
    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const-class p0, Ljava/lang/Integer;

    goto :goto_0

    :sswitch_8
    const-string v1, "double"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const-class p0, Ljava/lang/Double;

    :goto_0
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_8
        0x197ef -> :sswitch_7
        0x2e6108 -> :sswitch_6
        0x2e9356 -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x375194 -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch
.end method

.method public static i(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public static j(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lb1/a;->c:Ljava/util/Properties;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    sput-object v0, Lb1/a;->c:Ljava/util/Properties;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/util/Properties;

    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    sput-object p0, Lb1/a;->c:Ljava/util/Properties;

    return-object v1

    :cond_0
    :goto_0
    sget-object v0, Lb1/a;->c:Ljava/util/Properties;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public static l(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmega/log/MLog;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static m()Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lb1/d;->a:Z

    const-string v1, ""

    const-string/jumbo v2, "ro.build.vehicle_model"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "series"

    invoke-static {v2, v1}, Ld/f;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ld/f;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lb1/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2, v1}, Ld/f;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb1/a;->b:Ljava/lang/String;

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getVehicleModel: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lb1/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarConfigUtils"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lb1/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static n(Lh3/d;)Lh3/d;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lj3/c;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lj3/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lj3/c;->intercepted()Lh3/d;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static o(I)I
    .locals 1

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ge p0, v0, :cond_1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_2

    int-to-float p0, p0

    const/high16 v0, 0x3f400000    # 0.75f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p0, v0

    float-to-int p0, p0

    goto :goto_0

    :cond_2
    const p0, 0x7fffffff

    :goto_0
    return p0
.end method

.method public static p(JJ)J
    .locals 5

    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    invoke-static {p2, p3, p0, p1}, Lb1/a;->p(JJ)J

    move-result-wide p0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const-wide v3, 0x7fffffffffffffffL

    if-gez v2, :cond_5

    cmp-long v2, p2, v0

    if-gez v2, :cond_2

    div-long/2addr v3, p2

    cmp-long v0, p0, v3

    if-ltz v0, :cond_1

    :goto_0
    mul-long/2addr p0, p2

    goto :goto_1

    :cond_1
    new-instance p0, Lp4/c;

    invoke-direct {p0}, Lp4/c;-><init>()V

    throw p0

    :cond_2
    if-lez v2, :cond_4

    const-wide/high16 v0, -0x8000000000000000L

    div-long/2addr v0, p2

    cmp-long v0, v0, p0

    if-gtz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Lp4/c;

    invoke-direct {p0}, Lp4/c;-><init>()V

    throw p0

    :cond_4
    move-wide p0, v0

    goto :goto_1

    :cond_5
    if-lez v2, :cond_4

    div-long/2addr v3, p2

    cmp-long v0, p0, v3

    if-gtz v0, :cond_6

    goto :goto_0

    :cond_6
    new-instance p0, Lp4/c;

    invoke-direct {p0}, Lp4/c;-><init>()V

    throw p0

    :goto_1
    return-wide p0
.end method

.method public static q(Landroid/os/Parcel;)[B
    .locals 0

    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    move-result-object p0

    return-object p0
.end method

.method public static r(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public static s(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageEventListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    return-void
.end method

.method public static t(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothA2dp;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    return p0
.end method

.method public static u(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothHeadset;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    return p0
.end method

.method public static v(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    return-void
.end method

.method public static w(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/mega/nexus/bluetooth/MegaBluetoothHeadsetAdapter;->setPriority(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    return-void
.end method

.method public static final x(Ljava/lang/String;JJJ)J
    .locals 24

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    sget v5, Lx3/u;->a:I

    :try_start_0
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_0

    move-wide/from16 v5, p1

    goto/16 :goto_7

    :cond_0
    new-instance v7, Lr3/c;

    const/4 v8, 0x2

    const/16 v9, 0x24

    const/4 v10, 0x1

    invoke-direct {v7, v8, v9, v10}, Lr3/a;-><init>(III)V

    iget v7, v7, Lr3/a;->r:I

    const/16 v11, 0xa

    if-gt v11, v7, :cond_f

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    :cond_1
    :goto_1
    move-object/from16 v19, v6

    :cond_2
    :goto_2
    const/4 v5, 0x0

    goto/16 :goto_6

    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v12, 0x30

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v9, v12, :cond_6

    if-ne v7, v10, :cond_4

    goto :goto_1

    :cond_4
    const/16 v12, 0x2d

    if-ne v9, v12, :cond_5

    const-wide/high16 v13, -0x8000000000000000L

    move v8, v10

    goto :goto_3

    :cond_5
    const/16 v12, 0x2b

    if-ne v9, v12, :cond_1

    goto :goto_3

    :cond_6
    move v10, v8

    :goto_3
    const-wide v15, -0x38e38e38e38e38eL    # -2.772000429909333E291

    const-wide/16 v17, 0x0

    move-wide/from16 v19, v17

    move-wide/from16 v17, v15

    :goto_4
    if-ge v10, v7, :cond_a

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9, v11}, Ljava/lang/Character;->digit(II)I

    move-result v9

    if-gez v9, :cond_7

    goto :goto_1

    :cond_7
    move-wide/from16 v22, v19

    move-object/from16 v19, v6

    move-wide/from16 v5, v22

    cmp-long v20, v5, v17

    if-gez v20, :cond_8

    cmp-long v17, v17, v15

    if-nez v17, :cond_2

    int-to-long v3, v11

    div-long v17, v13, v3

    cmp-long v3, v5, v17

    if-gez v3, :cond_8

    goto :goto_2

    :cond_8
    int-to-long v3, v11

    mul-long/2addr v3, v5

    int-to-long v5, v9

    add-long v20, v13, v5

    cmp-long v9, v3, v20

    if-gez v9, :cond_9

    goto :goto_2

    :cond_9
    sub-long/2addr v3, v5

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v6, v19

    move-wide/from16 v19, v3

    move-wide/from16 v3, p5

    goto :goto_4

    :cond_a
    move-wide/from16 v22, v19

    move-object/from16 v19, v6

    move-wide/from16 v5, v22

    if-eqz v8, :cond_b

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_5
    move-object v5, v3

    goto :goto_6

    :cond_b
    neg-long v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_5

    :goto_6
    const/16 v3, 0x27

    const-string v4, "System property \'"

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-gtz v7, :cond_c

    move-wide/from16 v7, p5

    cmp-long v9, v5, v7

    if-gtz v9, :cond_d

    :goto_7
    return-wide v5

    :cond_c
    move-wide/from16 v7, p5

    :cond_d
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' should be in range "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".."

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", but is \'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' has unrecognized value \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v19

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "radix 10 was not in valid range "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lr3/c;

    invoke-direct {v2, v8, v9, v10}, Lr3/a;-><init>(III)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static y(Ljava/lang/String;IIII)I
    .locals 7

    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_1

    const p3, 0x7fffffff

    :cond_1
    int-to-long v1, p1

    int-to-long v3, p2

    int-to-long v5, p3

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lb1/a;->x(Ljava/lang/String;JJJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static final z(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p0, Lf3/c$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Lf3/c$a;

    iget-object p0, p0, Lf3/c$a;->c:Ljava/lang/Throwable;

    throw p0
.end method
