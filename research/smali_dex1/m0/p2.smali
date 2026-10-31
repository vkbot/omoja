.class public final synthetic Lm0/p2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lm0/q2;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Lo7/i4;

.field public final synthetic f:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lm0/q2;ZZLo7/i4;Landroid/content/Context;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm0/p2;->b:Lm0/q2;

    .line 5
    .line 6
    iput-boolean p2, p0, Lm0/p2;->c:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lm0/p2;->d:Z

    .line 9
    .line 10
    iput-object p4, p0, Lm0/p2;->e:Lo7/i4;

    .line 11
    .line 12
    iput-object p5, p0, Lm0/p2;->f:Landroid/content/Context;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 1
    iget-object v0, p0, Lm0/p2;->b:Lm0/q2;

    .line 2
    .line 3
    iget-object v1, v0, Lm0/q2;->h:Landroid/widget/Button;

    .line 4
    .line 5
    if-eqz v1, :cond_ac

    .line 6
    .line 7
    iget-object v1, v0, Lm0/q2;->f:Landroid/widget/TextView;

    .line 8
    .line 9
    if-nez v1, :cond_c

    .line 10
    .line 11
    goto/16 :goto_ac

    .line 12
    .line 13
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v3, p0, Lm0/p2;->e:Lo7/i4;

    .line 19
    .line 20
    iget v4, v3, Lo7/i4;->c:I

    .line 21
    .line 22
    iget-object v5, v3, Lo7/i4;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v5, Ljava/lang/String;

    .line 25
    .line 26
    if-nez v4, :cond_1f

    .line 27
    .line 28
    const v6, 0x7f130427

    .line 29
    .line 30
    .line 31
    goto :goto_22

    .line 32
    :cond_1f
    const v6, 0x7f130428

    .line 33
    .line 34
    .line 35
    :goto_22
    iget v3, v3, Lo7/i4;->b:I

    .line 36
    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    filled-new-array {v3, v7}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v0, v6, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    if-nez v5, :cond_3c

    .line 57
    .line 58
    const-string v3, ""

    .line 59
    .line 60
    goto :goto_42

    .line 61
    :cond_3c
    const-string v3, "\n"

    .line 62
    .line 63
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    :goto_42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    const/4 v1, 0x0

    .line 78
    iget-boolean v2, p0, Lm0/p2;->c:Z

    .line 79
    .line 80
    if-nez v2, :cond_a7

    .line 81
    .line 82
    iget-boolean v2, p0, Lm0/p2;->d:Z

    .line 83
    .line 84
    if-eqz v2, :cond_a7

    .line 85
    .line 86
    if-nez v4, :cond_a7

    .line 87
    .line 88
    iget-object v2, v0, Lm0/q2;->g:Landroid/widget/ProgressBar;

    .line 89
    .line 90
    if-eqz v2, :cond_60

    .line 91
    .line 92
    const/16 v3, 0x64

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 95
    .line 96
    .line 97
    :cond_60
    new-instance v2, Landroid/content/Intent;

    .line 98
    .line 99
    const-class v3, Lcom/example/navistart/boot;

    .line 100
    .line 101
    iget-object v4, p0, Lm0/p2;->f:Landroid/content/Context;

    .line 102
    .line 103
    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .line 105
    .line 106
    const/4 v3, 0x1

    .line 107
    new-array v3, v3, [B

    .line 108
    .line 109
    const/16 v5, 0x38

    .line 110
    .line 111
    aput-byte v5, v3, v1

    .line 112
    .line 113
    const/16 v1, 0x8

    .line 114
    .line 115
    new-array v1, v1, [B

    .line 116
    .line 117
    fill-array-data v1, :array_ae

    .line 118
    .line 119
    .line 120
    invoke-static {v3, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const/4 v3, -0x1

    .line 125
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    .line 127
    .line 128
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 129
    .line 130
    const/16 v3, 0x1a

    .line 131
    .line 132
    if-lt v1, v3, :cond_89

    .line 133
    .line 134
    invoke-static {v4, v2}, Lc5/h;->r(Landroid/content/Context;Landroid/content/Intent;)V

    .line 135
    .line 136
    .line 137
    goto :goto_8c

    .line 138
    :cond_89
    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 139
    .line 140
    .line 141
    :goto_8c
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    instance-of v1, v1, Ll0/a;

    .line 146
    .line 147
    if-eqz v1, :cond_9d

    .line 148
    .line 149
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    check-cast v1, Ll0/a;

    .line 154
    .line 155
    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 156
    .line 157
    .line 158
    :cond_9d
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    if-eqz v0, :cond_ac

    .line 163
    .line 164
    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :cond_a7
    iput-boolean v1, v0, Lm0/q2;->k:Z

    .line 169
    .line 170
    invoke-virtual {v0}, Lm0/q2;->v()V

    .line 171
    .line 172
    .line 173
    :cond_ac
    :goto_ac
    return-void

    .line 174
    nop

    .line 175
    :array_ae
    .array-data 1
        0x5ct
        0x77t
        -0x19t
        -0x5at
        0x56t
        0x3dt
        -0xct
        -0x5bt
    .end array-data
.end method
