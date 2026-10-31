.class public final synthetic Ls1/j;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Ls1/k;

.field public final synthetic b:Landroid/app/AlertDialog;

.field public final synthetic c:Landroidx/appcompat/widget/SwitchCompat;

.field public final synthetic d:Landroidx/appcompat/widget/SwitchCompat;

.field public final synthetic e:Landroidx/appcompat/widget/SwitchCompat;

.field public final synthetic f:Landroid/widget/RadioGroup;

.field public final synthetic g:Landroid/widget/RadioGroup;

.field public final synthetic h:Landroidx/appcompat/widget/SwitchCompat;

.field public final synthetic i:Landroidx/appcompat/widget/SwitchCompat;

.field public final synthetic j:Landroid/widget/RadioGroup;

.field public final synthetic k:[Landroid/widget/Spinner;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog;Landroid/widget/RadioGroup;Landroid/widget/RadioGroup;Landroid/widget/RadioGroup;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Ls1/k;[Landroid/widget/Spinner;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p10, p0, Ls1/j;->a:Ls1/k;

    .line 5
    .line 6
    iput-object p1, p0, Ls1/j;->b:Landroid/app/AlertDialog;

    .line 7
    .line 8
    iput-object p5, p0, Ls1/j;->c:Landroidx/appcompat/widget/SwitchCompat;

    .line 9
    .line 10
    iput-object p6, p0, Ls1/j;->d:Landroidx/appcompat/widget/SwitchCompat;

    .line 11
    .line 12
    iput-object p7, p0, Ls1/j;->e:Landroidx/appcompat/widget/SwitchCompat;

    .line 13
    .line 14
    iput-object p2, p0, Ls1/j;->f:Landroid/widget/RadioGroup;

    .line 15
    .line 16
    iput-object p3, p0, Ls1/j;->g:Landroid/widget/RadioGroup;

    .line 17
    .line 18
    iput-object p8, p0, Ls1/j;->h:Landroidx/appcompat/widget/SwitchCompat;

    .line 19
    .line 20
    iput-object p9, p0, Ls1/j;->i:Landroidx/appcompat/widget/SwitchCompat;

    .line 21
    .line 22
    iput-object p4, p0, Ls1/j;->j:Landroid/widget/RadioGroup;

    .line 23
    .line 24
    iput-object p11, p0, Ls1/j;->k:[Landroid/widget/Spinner;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 14

    .line 1
    iget-object v1, p0, Ls1/j;->b:Landroid/app/AlertDialog;

    .line 2
    .line 3
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v10, p0, Ls1/j;->a:Ls1/k;

    .line 8
    .line 9
    const/4 v0, -0x2

    .line 10
    if-eqz p1, :cond_49

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    .line 17
    .line 18
    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 19
    .line 20
    .line 21
    const v3, -0xf4eee7

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 25
    .line 26
    .line 27
    const/16 v3, 0x14

    .line 28
    .line 29
    invoke-virtual {v10, v3}, Ls1/k;->h(I)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    int-to-float v3, v3

    .line 34
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 49
    .line 50
    const/16 v2, 0x20

    .line 51
    .line 52
    invoke-virtual {v10, v2}, Ls1/k;->h(I)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    sub-int/2addr p1, v2

    .line 57
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const/16 v3, 0x2d0

    .line 62
    .line 63
    invoke-virtual {v10, v3}, Ls1/k;->h(I)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    invoke-virtual {v2, p1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 72
    .line 73
    .line 74
    :cond_49
    const/4 p1, -0x1

    .line 75
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const v3, -0xaf461e

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const v2, -0x645546

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    new-instance v0, Ls1/h;

    .line 100
    .line 101
    iget-object v2, p0, Ls1/j;->f:Landroid/widget/RadioGroup;

    .line 102
    .line 103
    iget-object v3, p0, Ls1/j;->g:Landroid/widget/RadioGroup;

    .line 104
    .line 105
    iget-object v4, p0, Ls1/j;->j:Landroid/widget/RadioGroup;

    .line 106
    .line 107
    iget-object v5, p0, Ls1/j;->c:Landroidx/appcompat/widget/SwitchCompat;

    .line 108
    .line 109
    iget-object v6, p0, Ls1/j;->d:Landroidx/appcompat/widget/SwitchCompat;

    .line 110
    .line 111
    iget-object v7, p0, Ls1/j;->e:Landroidx/appcompat/widget/SwitchCompat;

    .line 112
    .line 113
    iget-object v8, p0, Ls1/j;->h:Landroidx/appcompat/widget/SwitchCompat;

    .line 114
    .line 115
    iget-object v9, p0, Ls1/j;->i:Landroidx/appcompat/widget/SwitchCompat;

    .line 116
    .line 117
    iget-object v11, p0, Ls1/j;->k:[Landroid/widget/Spinner;

    .line 118
    .line 119
    invoke-direct/range {v0 .. v11}, Ls1/h;-><init>(Landroid/app/AlertDialog;Landroid/widget/RadioGroup;Landroid/widget/RadioGroup;Landroid/widget/RadioGroup;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Ls1/k;[Landroid/widget/Spinner;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method
