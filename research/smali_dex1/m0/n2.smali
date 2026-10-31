.class public final synthetic Lm0/n2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lm0/q2;


# direct methods
.method public synthetic constructor <init>(Lm0/q2;I)V
    .registers 3

    .line 1
    iput p2, p0, Lm0/n2;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lm0/n2;->c:Lm0/q2;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    iget p1, p0, Lm0/n2;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_7e

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lm0/n2;->c:Lm0/q2;

    .line 7
    .line 8
    iget-boolean v0, p1, Lm0/q2;->k:Z

    .line 9
    .line 10
    if-nez v0, :cond_5e

    .line 11
    .line 12
    iget-object v0, p1, Lm0/q2;->b:Lp0/e;

    .line 13
    .line 14
    if-nez v0, :cond_10

    .line 15
    .line 16
    goto :goto_5e

    .line 17
    :cond_10
    invoke-static {}, Lp0/e;->e()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_5b

    .line 22
    .line 23
    iget-object v0, p1, Lm0/q2;->c:Lp0/j;

    .line 24
    .line 25
    if-eqz v0, :cond_2b

    .line 26
    .line 27
    iget-boolean v1, v0, Lp0/j;->k:Z

    .line 28
    .line 29
    if-eqz v1, :cond_1f

    .line 30
    .line 31
    goto :goto_2b

    .line 32
    :cond_1f
    iget-object v1, v0, Lp0/j;->i:Landroid/widget/TextView;

    .line 33
    .line 34
    if-nez v1, :cond_27

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1}, Lp0/j;->h(I)V

    .line 38
    .line 39
    .line 40
    :cond_27
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Lp0/j;->f(I)V

    .line 42
    .line 43
    .line 44
    :cond_2b
    :goto_2b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    const v1, 0x7f13041b

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const v1, 0x7f130418

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v1, Lb7/h;

    .line 68
    .line 69
    const/4 v2, 0x1

    .line 70
    invoke-direct {v1, v2, p1}, Lb7/h;-><init>(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    const p1, 0x7f13041a

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const v0, 0x7f130419

    .line 81
    .line 82
    .line 83
    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 89
    .line 90
    .line 91
    goto :goto_5e

    .line 92
    :cond_5b
    invoke-virtual {p1}, Lm0/q2;->t()V

    .line 93
    .line 94
    .line 95
    :cond_5e
    :goto_5e
    return-void

    .line 96
    :pswitch_5f
    iget-object p1, p0, Lm0/n2;->c:Lm0/q2;

    .line 97
    .line 98
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    instance-of v0, v0, Ll0/a;

    .line 103
    .line 104
    if-eqz v0, :cond_73

    .line 105
    .line 106
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Ll0/a;

    .line 111
    .line 112
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 113
    .line 114
    .line 115
    goto :goto_7c

    .line 116
    :cond_73
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_7c

    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 123
    .line 124
    .line 125
    :cond_7c
    :goto_7c
    return-void

    .line 126
    nop

    .line 127
    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_5f
    .end packed-switch
.end method
