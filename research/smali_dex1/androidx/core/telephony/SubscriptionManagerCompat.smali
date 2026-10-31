.class public Landroidx/core/telephony/SubscriptionManagerCompat;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x16
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/telephony/SubscriptionManagerCompat$Api29Impl;
    }
.end annotation


# static fields
.field private static sGetSlotIndexMethod:Ljava/lang/reflect/Method;


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

.method public static getSlotIndex(I)I
    .registers 8

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p0, v0, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x1d

    .line 8
    .line 9
    if-lt v1, v2, :cond_f

    .line 10
    .line 11
    invoke-static {p0}, Landroidx/core/telephony/SubscriptionManagerCompat$Api29Impl;->getSlotIndex(I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_f
    :try_start_f
    sget-object v2, Landroidx/core/telephony/SubscriptionManagerCompat;->sGetSlotIndexMethod:Ljava/lang/reflect/Method;
    :try_end_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_11} :catch_53
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_11} :catch_53
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f .. :try_end_11} :catch_53

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x1

    .line 20
    if-nez v2, :cond_3b

    .line 21
    .line 22
    const/16 v2, 0x1a

    .line 23
    .line 24
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 25
    .line 26
    const-class v6, Landroid/telephony/SubscriptionManager;

    .line 27
    .line 28
    if-lt v1, v2, :cond_2a

    .line 29
    .line 30
    :try_start_1d
    const-string v1, "getSlotIndex"

    .line 31
    .line 32
    new-array v2, v4, [Ljava/lang/Class;

    .line 33
    .line 34
    aput-object v5, v2, v3

    .line 35
    .line 36
    invoke-virtual {v6, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    sput-object v1, Landroidx/core/telephony/SubscriptionManagerCompat;->sGetSlotIndexMethod:Ljava/lang/reflect/Method;

    .line 41
    .line 42
    goto :goto_36

    .line 43
    :cond_2a
    const-string v1, "getSlotId"

    .line 44
    .line 45
    new-array v2, v4, [Ljava/lang/Class;

    .line 46
    .line 47
    aput-object v5, v2, v3

    .line 48
    .line 49
    invoke-virtual {v6, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    sput-object v1, Landroidx/core/telephony/SubscriptionManagerCompat;->sGetSlotIndexMethod:Ljava/lang/reflect/Method;

    .line 54
    .line 55
    :goto_36
    sget-object v1, Landroidx/core/telephony/SubscriptionManagerCompat;->sGetSlotIndexMethod:Ljava/lang/reflect/Method;

    .line 56
    .line 57
    invoke-virtual {v1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 58
    .line 59
    .line 60
    :cond_3b
    sget-object v1, Landroidx/core/telephony/SubscriptionManagerCompat;->sGetSlotIndexMethod:Ljava/lang/reflect/Method;

    .line 61
    .line 62
    new-array v2, v4, [Ljava/lang/Object;

    .line 63
    .line 64
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    aput-object p0, v2, v3

    .line 69
    .line 70
    const/4 p0, 0x0

    .line 71
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Ljava/lang/Integer;

    .line 76
    .line 77
    if-eqz p0, :cond_53

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result p0
    :try_end_52
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1d .. :try_end_52} :catch_53
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_52} :catch_53
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1d .. :try_end_52} :catch_53

    .line 83
    return p0

    .line 84
    :catch_53
    :cond_53
    return v0
.end method
