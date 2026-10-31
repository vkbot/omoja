.class Lkotlin/time/DurationUnitKt__DurationUnitKt;
.super Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/DurationUnitKt__DurationUnitKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0001\u001a\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0000\u001a\u00020\u0001H\u0001\u001a\u0018\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0001\u00a8\u0006\t"
    }
    d2 = {
        "shortName",
        "",
        "Lkotlin/time/DurationUnit;",
        "durationUnitByShortName",
        "durationUnitByIsoChar",
        "isoChar",
        "",
        "isTimeComponent",
        "",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x31
    xs = "kotlin/time/DurationUnitKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final durationUnitByIsoChar(CZ)Lkotlin/time/DurationUnit;
    .registers 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .line 1
    if-nez p1, :cond_10

    .line 2
    .line 3
    const/16 p1, 0x44

    .line 4
    .line 5
    if-ne p0, p1, :cond_9

    .line 6
    .line 7
    sget-object p0, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_9
    const-string p1, "Invalid or unsupported duration ISO non-time unit: "

    .line 11
    .line 12
    invoke-static {p0, p1}, Ll9/i;->c(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :goto_e
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_10
    const/16 p1, 0x48

    .line 18
    .line 19
    if-eq p0, p1, :cond_28

    .line 20
    .line 21
    const/16 p1, 0x4d

    .line 22
    .line 23
    if-eq p0, p1, :cond_25

    .line 24
    .line 25
    const/16 p1, 0x53

    .line 26
    .line 27
    if-ne p0, p1, :cond_1f

    .line 28
    .line 29
    sget-object p0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_1f
    const-string p1, "Invalid duration ISO time unit: "

    .line 33
    .line 34
    invoke-static {p0, p1}, Ll9/i;->c(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_e

    .line 38
    :cond_25
    sget-object p0, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_28
    sget-object p0, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    .line 42
    .line 43
    return-object p0
.end method

.method public static final durationUnitByShortName(Ljava/lang/String;)Lkotlin/time/DurationUnit;
    .registers 3
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x64

    .line 9
    .line 10
    if-eq v0, v1, :cond_65

    .line 11
    .line 12
    const/16 v1, 0x68

    .line 13
    .line 14
    if-eq v0, v1, :cond_5a

    .line 15
    .line 16
    const/16 v1, 0x6d

    .line 17
    .line 18
    if-eq v0, v1, :cond_4f

    .line 19
    .line 20
    const/16 v1, 0x73

    .line 21
    .line 22
    if-eq v0, v1, :cond_44

    .line 23
    .line 24
    const/16 v1, 0xda6

    .line 25
    .line 26
    if-eq v0, v1, :cond_39

    .line 27
    .line 28
    const/16 v1, 0xdc5

    .line 29
    .line 30
    if-eq v0, v1, :cond_2e

    .line 31
    .line 32
    const/16 v1, 0xe9e

    .line 33
    .line 34
    if-ne v0, v1, :cond_70

    .line 35
    .line 36
    const-string v0, "us"

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_70

    .line 43
    .line 44
    sget-object p0, Lkotlin/time/DurationUnit;->MICROSECONDS:Lkotlin/time/DurationUnit;

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_2e
    const-string v0, "ns"

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_70

    .line 54
    .line 55
    sget-object p0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_39
    const-string v0, "ms"

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_70

    .line 65
    .line 66
    sget-object p0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_44
    const-string v0, "s"

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_70

    .line 76
    .line 77
    sget-object p0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 78
    .line 79
    return-object p0

    .line 80
    :cond_4f
    const-string v0, "m"

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_70

    .line 87
    .line 88
    sget-object p0, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    .line 89
    .line 90
    return-object p0

    .line 91
    :cond_5a
    const-string v0, "h"

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_70

    .line 98
    .line 99
    sget-object p0, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    .line 100
    .line 101
    return-object p0

    .line 102
    :cond_65
    const-string v0, "d"

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_70

    .line 109
    .line 110
    sget-object p0, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    .line 111
    .line 112
    return-object p0

    .line 113
    :cond_70
    const-string v0, "Unknown duration unit short name: "

    .line 114
    .line 115
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const/4 p0, 0x0

    .line 123
    return-object p0
.end method

.method public static final shortName(Lkotlin/time/DurationUnit;)Ljava/lang/String;
    .registers 3
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/time/DurationUnitKt__DurationUnitKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    aget v0, v0, v1

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_2a

    .line 13
    .line 14
    .line 15
    const-string v0, "Unknown unit: "

    .line 16
    .line 17
    invoke-static {p0, v0}, Lorg/apache/commons/net/ftp/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :pswitch_15
    const-string p0, "d"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_18
    const-string p0, "h"

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_1b
    const-string p0, "m"

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_1e
    const-string p0, "s"

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_21
    const-string p0, "ms"

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_24
    const-string p0, "us"

    .line 38
    .line 39
    return-object p0

    .line 40
    :pswitch_27
    const-string p0, "ns"

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method
