.class synthetic Landroidx/core/text/util/LocalePreferences$1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/util/LocalePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$icu$text$DateFormat$HourCycle:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Landroidx/activity/i;->n()[Landroid/icu/text/DateFormat$HourCycle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    sput-object v0, Landroidx/core/text/util/LocalePreferences$1;->$SwitchMap$android$icu$text$DateFormat$HourCycle:[I

    .line 9
    .line 10
    :try_start_9
    invoke-static {}, Landroidx/activity/i;->c()Landroid/icu/text/DateFormat$HourCycle;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroidx/activity/i;->b()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_13} :catch_13

    .line 19
    .line 20
    :catch_13
    :try_start_13
    sget-object v0, Landroidx/core/text/util/LocalePreferences$1;->$SwitchMap$android$icu$text$DateFormat$HourCycle:[I

    .line 21
    .line 22
    invoke-static {}, Landroidx/activity/i;->p()Landroid/icu/text/DateFormat$HourCycle;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroidx/activity/i;->o()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x2

    .line 30
    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1f} :catch_1f

    .line 31
    .line 32
    :catch_1f
    :try_start_1f
    sget-object v0, Landroidx/core/text/util/LocalePreferences$1;->$SwitchMap$android$icu$text$DateFormat$HourCycle:[I

    .line 33
    .line 34
    invoke-static {}, Landroidx/activity/i;->r()Landroid/icu/text/DateFormat$HourCycle;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroidx/activity/i;->q()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v2, 0x3

    .line 42
    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2b} :catch_2b

    .line 43
    .line 44
    :catch_2b
    :try_start_2b
    sget-object v0, Landroidx/core/text/util/LocalePreferences$1;->$SwitchMap$android$icu$text$DateFormat$HourCycle:[I

    .line 45
    .line 46
    invoke-static {}, Landroidx/activity/i;->t()Landroid/icu/text/DateFormat$HourCycle;

    .line 47
    .line 48
    .line 49
    invoke-static {}, Landroidx/activity/i;->s()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const/4 v2, 0x4

    .line 54
    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_37} :catch_37

    .line 55
    .line 56
    :catch_37
    return-void
.end method
