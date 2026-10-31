.class public abstract Lg4/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:[I

.field public static final b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const/high16 v0, 0x1010000

    .line 2
    .line 3
    sget v1, Landroidx/appcompat/R$attr;->theme:I

    .line 4
    .line 5
    filled-new-array {v0, v1}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lg4/a;->a:[I

    .line 10
    .line 11
    const v0, 0x7f0303a3

    .line 12
    .line 13
    .line 14
    filled-new-array {v0}, [I

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lg4/a;->b:[I

    .line 19
    .line 20
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    invoke-static {p0, p1, v0, p2, p3}, Lg4/a;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/Context;
    .registers 11

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    sget-object v2, Lg4/a;->b:[I

    .line 5
    .line 6
    invoke-virtual {p0, p1, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    aput v4, v1, v3

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    .line 19
    .line 20
    aget v1, v1, v3

    .line 21
    .line 22
    instance-of v2, p0, Landroidx/appcompat/view/ContextThemeWrapper;

    .line 23
    .line 24
    if-eqz v2, :cond_24

    .line 25
    .line 26
    move-object v2, p0

    .line 27
    check-cast v2, Landroidx/appcompat/view/ContextThemeWrapper;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroidx/appcompat/view/ContextThemeWrapper;->getThemeResId()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ne v2, v1, :cond_24

    .line 34
    .line 35
    move v2, v0

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    move v2, v3

    .line 38
    :goto_25
    if-eqz v1, :cond_79

    .line 39
    .line 40
    if-eqz v2, :cond_2a

    .line 41
    .line 42
    goto :goto_79

    .line 43
    :cond_2a
    new-instance v2, Landroidx/appcompat/view/ContextThemeWrapper;

    .line 44
    .line 45
    invoke-direct {v2, p0, v1}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 46
    .line 47
    .line 48
    array-length v1, p2

    .line 49
    new-array v4, v1, [I

    .line 50
    .line 51
    array-length v5, p2

    .line 52
    if-lez v5, :cond_49

    .line 53
    .line 54
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    move p4, v3

    .line 59
    :goto_3a
    array-length v5, p2

    .line 60
    if-ge p4, v5, :cond_46

    .line 61
    .line 62
    invoke-virtual {p3, p4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    aput v5, v4, p4

    .line 67
    .line 68
    add-int/lit8 p4, p4, 0x1

    .line 69
    .line 70
    goto :goto_3a

    .line 71
    :cond_46
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    .line 73
    .line 74
    :cond_49
    move p2, v3

    .line 75
    :goto_4a
    if-ge p2, v1, :cond_5a

    .line 76
    .line 77
    aget p3, v4, p2

    .line 78
    .line 79
    if-eqz p3, :cond_57

    .line 80
    .line 81
    invoke-virtual {v2}, Landroidx/appcompat/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    .line 82
    .line 83
    .line 84
    move-result-object p4

    .line 85
    invoke-virtual {p4, p3, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 86
    .line 87
    .line 88
    :cond_57
    add-int/lit8 p2, p2, 0x1

    .line 89
    .line 90
    goto :goto_4a

    .line 91
    :cond_5a
    sget-object p2, Lg4/a;->a:[I

    .line 92
    .line 93
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    invoke-virtual {p0, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    .line 107
    .line 108
    if-eqz p1, :cond_6e

    .line 109
    .line 110
    goto :goto_6f

    .line 111
    :cond_6e
    move p1, p2

    .line 112
    :goto_6f
    if-eqz p1, :cond_78

    .line 113
    .line 114
    invoke-virtual {v2}, Landroidx/appcompat/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 119
    .line 120
    .line 121
    :cond_78
    return-object v2

    .line 122
    :cond_79
    :goto_79
    return-object p0
.end method
