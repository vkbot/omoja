.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$Custom;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Custom"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "Custom"

.field public static final S_BOOLEAN:Ljava/lang/String; = "boolean"

.field public static final S_COLOR:Ljava/lang/String; = "color"

.field public static final S_DIMENSION:Ljava/lang/String; = "dimension"

.field public static final S_FLOAT:Ljava/lang/String; = "float"

.field public static final S_INT:Ljava/lang/String; = "integer"

.field public static final S_REFERENCE:Ljava/lang/String; = "reference"

.field public static final S_STRING:Ljava/lang/String; = "string"

.field public static final TYPE_BOOLEAN:I = 0x388

.field public static final TYPE_COLOR:I = 0x386

.field public static final TYPE_DIMENSION:I = 0x389

.field public static final TYPE_FLOAT:I = 0x385

.field public static final TYPE_INT:I = 0x384

.field public static final TYPE_REFERENCE:I = 0x38a

.field public static final TYPE_STRING:I = 0x387


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    const-string v4, "dimension"

    .line 2
    .line 3
    const-string v5, "reference"

    .line 4
    .line 5
    const-string v0, "float"

    .line 6
    .line 7
    const-string v1, "color"

    .line 8
    .line 9
    const-string v2, "string"

    .line 10
    .line 11
    const-string v3, "boolean"

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Custom;->KEY_WORDS:[Ljava/lang/String;

    .line 18
    .line 19
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
    const-string v0, "integer"

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
    const-string v0, "float"

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
    const-string v0, "color"

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
    const-string v0, "boolean"

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
    const-string v0, "string"

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
    const-string v0, "reference"

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
    const-string v0, "dimension"

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
    const/16 p0, 0x384

    .line 95
    .line 96
    return p0

    .line 97
    :pswitch_60
    const/16 p0, 0x385

    .line 98
    .line 99
    return p0

    .line 100
    :pswitch_63
    const/16 p0, 0x386

    .line 101
    .line 102
    return p0

    .line 103
    :pswitch_66
    const/16 p0, 0x388

    .line 104
    .line 105
    return p0

    .line 106
    :pswitch_69
    const/16 p0, 0x387

    .line 107
    .line 108
    return p0

    .line 109
    :pswitch_6c
    const/16 p0, 0x38a

    .line 110
    .line 111
    return p0

    .line 112
    :pswitch_6f
    const/16 p0, 0x389

    .line 113
    .line 114
    return p0

    .line 115
    :sswitch_data_72
    .sparse-switch
        -0x4144929a -> :sswitch_4f
        -0x3724c0b5 -> :sswitch_44
        -0x352a9fef -> :sswitch_39
        0x3db6c28 -> :sswitch_2e
        0x5a72f63 -> :sswitch_23
        0x5d0225c -> :sswitch_18
        0x74b5813e -> :sswitch_d
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
