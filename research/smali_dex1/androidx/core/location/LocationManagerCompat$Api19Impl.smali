.class Landroidx/core/location/LocationManagerCompat$Api19Impl;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api19Impl"
.end annotation


# static fields
.field private static sLocationRequestClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static tryRequestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Landroidx/core/location/LocationListenerCompat;Landroid/os/Looper;)Z
    .registers 11
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 73
    :try_start_0
    sget-object v0, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    if-nez v0, :cond_c

    .line 74
    const-string v0, "android.location.LocationRequest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    .line 75
    :cond_c
    sget-object v0, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    if-nez v0, :cond_28

    .line 76
    const-class v0, Landroid/location/LocationManager;

    const-string v2, "requestLocationUpdates"

    sget-object v3, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    const-class v4, Landroid/location/LocationListener;

    const-class v5, Landroid/os/Looper;

    filled-new-array {v3, v4, v5}, [Ljava/lang/Class;

    move-result-object v3

    .line 77
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 79
    :cond_28
    invoke-virtual {p2, p1}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest(Ljava/lang/String;)Landroid/location/LocationRequest;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 80
    sget-object p2, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    filled-new-array {p1, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_37} :catch_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_37} :catch_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_37} :catch_38
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_37} :catch_38
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_37} :catch_38

    return v1

    :catch_38
    :cond_38
    const/4 p0, 0x0

    return p0
.end method

.method public static tryRequestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;)Z
    .registers 10
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_c

    .line 4
    .line 5
    const-string v0, "android.location.LocationRequest"

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    .line 12
    .line 13
    :cond_c
    sget-object v0, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-nez v0, :cond_28

    .line 17
    .line 18
    const-class v0, Landroid/location/LocationManager;

    .line 19
    .line 20
    const-string v2, "requestLocationUpdates"

    .line 21
    .line 22
    sget-object v3, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    .line 23
    .line 24
    const-class v4, Landroid/location/LocationListener;

    .line 25
    .line 26
    const-class v5, Landroid/os/Looper;

    .line 27
    .line 28
    filled-new-array {v3, v4, v5}, [Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 39
    .line 40
    .line 41
    :cond_28
    invoke-virtual {p2, p1}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest(Ljava/lang/String;)Landroid/location/LocationRequest;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_46

    .line 46
    .line 47
    sget-object p2, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    .line 48
    .line 49
    monitor-enter p2
    :try_end_31
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_31} :catch_46
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_31} :catch_46
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_31} :catch_46
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_31} :catch_46
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_31} :catch_46

    .line 50
    :try_start_31
    sget-object v0, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    .line 51
    .line 52
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    filled-new-array {p1, p3, v2}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    invoke-static {p0, p3}, Landroidx/core/location/LocationManagerCompat;->registerLocationListenerTransport(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;)V

    .line 64
    .line 65
    .line 66
    monitor-exit p2

    .line 67
    return v1

    .line 68
    :catchall_43
    move-exception p0

    .line 69
    monitor-exit p2
    :try_end_45
    .catchall {:try_start_31 .. :try_end_45} :catchall_43

    .line 70
    :try_start_45
    throw p0
    :try_end_46
    .catch Ljava/lang/NoSuchMethodException; {:try_start_45 .. :try_end_46} :catch_46
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_45 .. :try_end_46} :catch_46
    .catch Ljava/lang/IllegalAccessException; {:try_start_45 .. :try_end_46} :catch_46
    .catch Ljava/lang/ClassNotFoundException; {:try_start_45 .. :try_end_46} :catch_46
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_45 .. :try_end_46} :catch_46

    .line 71
    :catch_46
    :cond_46
    const/4 p0, 0x0

    .line 72
    return p0
.end method
