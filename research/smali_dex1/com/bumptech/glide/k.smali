.class public abstract synthetic Lcom/bumptech/glide/k;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    invoke-static {}, Lcom/bumptech/glide/h;->values()[Lcom/bumptech/glide/h;

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
    sput-object v0, Lcom/bumptech/glide/k;->b:[I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x3

    .line 12
    :try_start_b
    aput v1, v0, v2
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_d} :catch_d

    .line 13
    .line 14
    :catch_d
    const/4 v0, 0x2

    .line 15
    :try_start_e
    sget-object v3, Lcom/bumptech/glide/k;->b:[I

    .line 16
    .line 17
    aput v0, v3, v0
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_12} :catch_12

    .line 18
    .line 19
    :catch_12
    :try_start_12
    sget-object v3, Lcom/bumptech/glide/k;->b:[I

    .line 20
    .line 21
    aput v2, v3, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_16} :catch_16

    .line 22
    .line 23
    :catch_16
    const/4 v3, 0x4

    .line 24
    :try_start_17
    sget-object v4, Lcom/bumptech/glide/k;->b:[I

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    aput v3, v4, v5
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_1c} :catch_1c

    .line 28
    .line 29
    :catch_1c
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    array-length v4, v4

    .line 34
    new-array v4, v4, [I

    .line 35
    .line 36
    sput-object v4, Lcom/bumptech/glide/k;->a:[I

    .line 37
    .line 38
    :try_start_25
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    aput v1, v4, v5
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_2d} :catch_2d

    .line 45
    .line 46
    :catch_2d
    :try_start_2d
    sget-object v1, Lcom/bumptech/glide/k;->a:[I

    .line 47
    .line 48
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    aput v0, v1, v4
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_37} :catch_37

    .line 55
    .line 56
    :catch_37
    :try_start_37
    sget-object v0, Lcom/bumptech/glide/k;->a:[I

    .line 57
    .line 58
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    aput v2, v0, v1
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_41} :catch_41

    .line 65
    .line 66
    :catch_41
    :try_start_41
    sget-object v0, Lcom/bumptech/glide/k;->a:[I

    .line 67
    .line 68
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    aput v3, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_4b} :catch_4b

    .line 75
    .line 76
    :catch_4b
    :try_start_4b
    sget-object v0, Lcom/bumptech/glide/k;->a:[I

    .line 77
    .line 78
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    const/4 v2, 0x5

    .line 85
    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_56

    .line 86
    .line 87
    :catch_56
    :try_start_56
    sget-object v0, Lcom/bumptech/glide/k;->a:[I

    .line 88
    .line 89
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    const/4 v2, 0x6

    .line 96
    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_61} :catch_61

    .line 97
    .line 98
    :catch_61
    :try_start_61
    sget-object v0, Lcom/bumptech/glide/k;->a:[I

    .line 99
    .line 100
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    const/4 v2, 0x7

    .line 107
    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_6c} :catch_6c

    .line 108
    .line 109
    :catch_6c
    :try_start_6c
    sget-object v0, Lcom/bumptech/glide/k;->a:[I

    .line 110
    .line 111
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    const/16 v2, 0x8

    .line 118
    .line 119
    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    .line 120
    .line 121
    :catch_78
    return-void
.end method
