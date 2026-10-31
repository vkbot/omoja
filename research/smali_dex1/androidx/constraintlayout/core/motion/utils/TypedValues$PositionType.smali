.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$PositionType;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PositionType"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "KeyPosition"

.field public static final S_DRAWPATH:Ljava/lang/String; = "drawPath"

.field public static final S_PERCENT_HEIGHT:Ljava/lang/String; = "percentHeight"

.field public static final S_PERCENT_WIDTH:Ljava/lang/String; = "percentWidth"

.field public static final S_PERCENT_X:Ljava/lang/String; = "percentX"

.field public static final S_PERCENT_Y:Ljava/lang/String; = "percentY"

.field public static final S_SIZE_PERCENT:Ljava/lang/String; = "sizePercent"

.field public static final S_TRANSITION_EASING:Ljava/lang/String; = "transitionEasing"

.field public static final TYPE_CURVE_FIT:I = 0x1fc

.field public static final TYPE_DRAWPATH:I = 0x1f6

.field public static final TYPE_PATH_MOTION_ARC:I = 0x1fd

.field public static final TYPE_PERCENT_HEIGHT:I = 0x1f8

.field public static final TYPE_PERCENT_WIDTH:I = 0x1f7

.field public static final TYPE_PERCENT_X:I = 0x1fa

.field public static final TYPE_PERCENT_Y:I = 0x1fb

.field public static final TYPE_POSITION_TYPE:I = 0x1fe

.field public static final TYPE_SIZE_PERCENT:I = 0x1f9

.field public static final TYPE_TRANSITION_EASING:I = 0x1f5


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    const-string v5, "percentX"

    .line 2
    .line 3
    const-string v6, "percentY"

    .line 4
    .line 5
    const-string v0, "transitionEasing"

    .line 6
    .line 7
    const-string v1, "drawPath"

    .line 8
    .line 9
    const-string v2, "percentWidth"

    .line 10
    .line 11
    const-string v3, "percentHeight"

    .line 12
    .line 13
    const-string v4, "sizePercent"

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$PositionType;->KEY_WORDS:[Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3

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
    const/4 v1, -0x1

    .line 9
    sparse-switch v0, :sswitch_data_72

    .line 10
    .line 11
    .line 12
    :goto_b
    move p0, v1

    .line 13
    goto :goto_59

    .line 14
    :sswitch_d
    const-string v0, "percentY"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_16

    .line 21
    .line 22
    goto :goto_b

    .line 23
    :cond_16
    const/4 p0, 0x6

    .line 24
    goto :goto_59

    .line 25
    :sswitch_18
    const-string v0, "percentX"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_21

    .line 32
    .line 33
    goto :goto_b

    .line 34
    :cond_21
    const/4 p0, 0x5

    .line 35
    goto :goto_59

    .line 36
    :sswitch_23
    const-string v0, "sizePercent"

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-nez p0, :cond_2c

    .line 43
    .line 44
    goto :goto_b

    .line 45
    :cond_2c
    const/4 p0, 0x4

    .line 46
    goto :goto_59

    .line 47
    :sswitch_2e
    const-string v0, "drawPath"

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-nez p0, :cond_37

    .line 54
    .line 55
    goto :goto_b

    .line 56
    :cond_37
    const/4 p0, 0x3

    .line 57
    goto :goto_59

    .line 58
    :sswitch_39
    const-string v0, "percentHeight"

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-nez p0, :cond_42

    .line 65
    .line 66
    goto :goto_b

    .line 67
    :cond_42
    const/4 p0, 0x2

    .line 68
    goto :goto_59

    .line 69
    :sswitch_44
    const-string v0, "percentWidth"

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-nez p0, :cond_4d

    .line 76
    .line 77
    goto :goto_b

    .line 78
    :cond_4d
    const/4 p0, 0x1

    .line 79
    goto :goto_59

    .line 80
    :sswitch_4f
    const-string v0, "transitionEasing"

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-nez p0, :cond_58

    .line 87
    .line 88
    goto :goto_b

    .line 89
    :cond_58
    const/4 p0, 0x0

    .line 90
    :goto_59
    packed-switch p0, :pswitch_data_90

    .line 91
    .line 92
    .line 93
    return v1

    .line 94
    :pswitch_5d
    const/16 p0, 0x1fb

    .line 95
    .line 96
    return p0

    .line 97
    :pswitch_60
    const/16 p0, 0x1fa

    .line 98
    .line 99
    return p0

    .line 100
    :pswitch_63
    const/16 p0, 0x1f9

    .line 101
    .line 102
    return p0

    .line 103
    :pswitch_66
    const/16 p0, 0x1f6

    .line 104
    .line 105
    return p0

    .line 106
    :pswitch_69
    const/16 p0, 0x1f8

    .line 107
    .line 108
    return p0

    .line 109
    :pswitch_6c
    const/16 p0, 0x1f7

    .line 110
    .line 111
    return p0

    .line 112
    :pswitch_6f
    const/16 p0, 0x1f5

    .line 113
    .line 114
    return p0

    .line 115
    :sswitch_data_72
    .sparse-switch
        -0x6c0d7d20 -> :sswitch_4f
        -0x4330437f -> :sswitch_44
        -0x3ca72634 -> :sswitch_39
        -0x314b3c77 -> :sswitch_2e
        -0xbefb6fc -> :sswitch_23
        0x198424b3 -> :sswitch_18
        0x198424b4 -> :sswitch_d
    .end sparse-switch

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
    .end packed-switch
.end method

.method public static getType(I)I
    .registers 2

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    if-eq p0, v0, :cond_12

    .line 4
    .line 5
    const/16 v0, 0x65

    .line 6
    .line 7
    if-eq p0, v0, :cond_f

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_14

    .line 10
    .line 11
    .line 12
    const/4 p0, -0x1

    .line 13
    return p0

    .line 14
    :pswitch_d
    const/4 p0, 0x4

    .line 15
    return p0

    .line 16
    :cond_f
    :pswitch_f
    const/16 p0, 0x8

    .line 17
    .line 18
    return p0

    .line 19
    :cond_12
    :pswitch_12
    const/4 p0, 0x2

    .line 20
    return p0

    .line 21
    :pswitch_data_14
    .packed-switch 0x1f5
        :pswitch_f
        :pswitch_f
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method
