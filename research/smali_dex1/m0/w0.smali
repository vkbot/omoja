.class public final synthetic Lm0/w0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lm0/z0;


# direct methods
.method public synthetic constructor <init>(Lm0/z0;I)V
    .registers 3

    .line 1
    iput p2, p0, Lm0/w0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lm0/w0;->c:Lm0/z0;

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
    .registers 7

    .line 1
    iget p1, p0, Lm0/w0;->b:I

    .line 2
    .line 3
    iget-object v0, p0, Lm0/w0;->c:Lm0/z0;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_94

    .line 6
    .line 7
    .line 8
    iget-boolean p1, v0, Lm0/z0;->j:Z

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    if-eqz p1, :cond_19

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, v0, Lm0/z0;->j:Z

    .line 16
    .line 17
    iput-object v1, v0, Lm0/z0;->k:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {}, Lm0/z0;->t()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lm0/z0;->v()V

    .line 23
    .line 24
    .line 25
    goto :goto_75

    .line 26
    :cond_19
    iget-object p1, v0, Lm0/z0;->d:Landroid/widget/EditText;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-nez p1, :cond_22

    .line 33
    .line 34
    goto :goto_30

    .line 35
    :cond_22
    iget-object p1, v0, Lm0/z0;->d:Landroid/widget/EditText;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :goto_30
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iget-object v2, v0, Lm0/z0;->d:Landroid/widget/EditText;

    .line 54
    .line 55
    if-eqz p1, :cond_43

    .line 56
    .line 57
    const p1, 0x7f130212

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    goto :goto_75

    .line 68
    :cond_43
    const/4 p1, 0x0

    .line 69
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    const v2, 0x7f130219

    .line 73
    .line 74
    .line 75
    :try_start_4a
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    if-nez v3, :cond_5a

    .line 84
    .line 85
    iget-object p1, v0, Lm0/z0;->e:Landroid/widget/TextView;

    .line 86
    .line 87
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 88
    .line 89
    .line 90
    goto :goto_75

    .line 91
    :cond_5a
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v3}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    sget-object v4, Lm0/z0;->n:Ljava/lang/String;

    .line 100
    .line 101
    invoke-interface {v3, v4, p1, p1}, Lcom/example/navistart/cores/InterC;->lo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iput-object v1, v0, Lm0/z0;->k:Ljava/lang/String;

    .line 105
    .line 106
    const/4 p1, 0x1

    .line 107
    iput-boolean p1, v0, Lm0/z0;->j:Z

    .line 108
    .line 109
    invoke-virtual {v0}, Lm0/z0;->v()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_6f} :catch_70

    .line 110
    .line 111
    .line 112
    goto :goto_75

    .line 113
    :catch_70
    iget-object p1, v0, Lm0/z0;->e:Landroid/widget/TextView;

    .line 114
    .line 115
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 116
    .line 117
    .line 118
    :goto_75
    return-void

    .line 119
    :pswitch_76
    sget-object p1, Lm0/z0;->m:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    instance-of p1, p1, Ll0/a;

    .line 126
    .line 127
    if-eqz p1, :cond_8a

    .line 128
    .line 129
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Ll0/a;

    .line 134
    .line 135
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 136
    .line 137
    .line 138
    goto :goto_93

    .line 139
    :cond_8a
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    if-eqz p1, :cond_93

    .line 144
    .line 145
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 146
    .line 147
    .line 148
    :cond_93
    :goto_93
    return-void

    .line 149
    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_76
    .end packed-switch
.end method
