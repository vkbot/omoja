.class public final synthetic Le0/r0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:[I

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>([ILandroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le0/r0;->a:[I

    .line 5
    .line 6
    iput-object p2, p0, Le0/r0;->b:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 7

    .line 1
    sget-object p1, Lcom/example/navistart/MainActivity;->e1:Ljava/lang/String;

    .line 2
    .line 3
    sget-object p1, Ln0/c;->B:Ln0/c;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    new-array v1, v1, [B

    .line 16
    .line 17
    fill-array-data v1, :array_5e

    .line 18
    .line 19
    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    new-array v3, v2, [B

    .line 23
    .line 24
    fill-array-data v3, :array_68

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v3, ""

    .line 32
    .line 33
    invoke-virtual {v0, v1, v3}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_2b

    .line 42
    .line 43
    goto :goto_5d

    .line 44
    :cond_2b
    const/4 p1, 0x0

    .line 45
    move v0, p1

    .line 46
    :goto_2d
    const/4 v1, 0x5

    .line 47
    if-ge v0, v1, :cond_5d

    .line 48
    .line 49
    iget-object v1, p0, Le0/r0;->a:[I

    .line 50
    .line 51
    aget v1, v1, v0

    .line 52
    .line 53
    if-ne v1, p2, :cond_5a

    .line 54
    .line 55
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    const/16 v1, 0x1d

    .line 60
    .line 61
    new-array v1, v1, [B

    .line 62
    .line 63
    fill-array-data v1, :array_70

    .line 64
    .line 65
    .line 66
    new-array v3, v2, [B

    .line 67
    .line 68
    fill-array-data v3, :array_84

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p2, v1, v0}, Lu0/a;->saveInt(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    const/4 p2, 0x4

    .line 79
    if-ne v0, p2, :cond_51

    .line 80
    .line 81
    move v2, p1

    .line 82
    :cond_51
    iget-object p1, p0, Le0/r0;->b:Landroid/view/View;

    .line 83
    .line 84
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Le0/x;->a()V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    .line 92
    .line 93
    goto :goto_2d

    .line 94
    :cond_5d
    :goto_5d
    return-void

    .line 95
    :array_5e
    .array-data 1
        0x35t
        -0xdt
        -0x4et
        -0x11t
        0xbt
        0x2ct
        0x2et
        -0x78t
        0x1at
        -0x29t
    .end array-data

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    nop

    .line 105
    :array_68
    .array-data 1
        0x76t
        -0x4et
        -0x20t
        -0x41t
        0x79t
        0x43t
        0x48t
        -0x1ft
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    :array_70
    .array-data 1
        0x24t
        0x22t
        0xft
        -0x59t
        -0x75t
        0x3ct
        0x4ft
        0x44t
        0x1et
        0x3et
        0x11t
        -0x51t
        -0x6dt
        0x2dt
        0x79t
        0x51t
        0x2et
        0x3et
        0x6t
        -0x67t
        -0x6at
        0x2dt
        0x4at
        0x59t
        0x22t
        0x2et
        0xat
        -0x57t
        -0x75t
    .end array-data

    .line 114
    .line 115
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
    nop

    .line 133
    :array_84
    .array-data 1
        0x41t
        0x5at
        0x63t
        -0x3at
        -0x1bt
        0x48t
        0x26t
        0x3ct
    .end array-data
.end method
