.class public final synthetic Lt1/d;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/bumptech/glide/m;

.field public final synthetic c:I

.field public final synthetic d:D

.field public final synthetic e:D


# direct methods
.method public synthetic constructor <init>(Lcom/bumptech/glide/m;IDD)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt1/d;->b:Lcom/bumptech/glide/m;

    .line 5
    .line 6
    iput p2, p0, Lt1/d;->c:I

    .line 7
    .line 8
    iput-wide p3, p0, Lt1/d;->d:D

    .line 9
    .line 10
    iput-wide p5, p0, Lt1/d;->e:D

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .line 1
    iget-object v0, p0, Lt1/d;->b:Lcom/bumptech/glide/m;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/bumptech/glide/m;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lt1/e;

    .line 6
    .line 7
    iget v2, v1, Lt1/e;->e:I

    .line 8
    .line 9
    iget-object v3, v1, Lt1/e;->c:Landroid/widget/TextView;

    .line 10
    .line 11
    iget v4, p0, Lt1/d;->c:I

    .line 12
    .line 13
    if-ne v4, v2, :cond_9e

    .line 14
    .line 15
    iget-boolean v2, v1, Lt1/e;->d:Z

    .line 16
    .line 17
    if-eqz v2, :cond_9e

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1a

    .line 24
    .line 25
    goto/16 :goto_9e

    .line 26
    .line 27
    :cond_1a
    iget-wide v4, p0, Lt1/d;->d:D

    .line 28
    .line 29
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2e

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const v6, 0x7f13017f

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    goto :goto_4d

    .line 47
    :cond_2e
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-wide/16 v6, 0x0

    .line 52
    .line 53
    iget-wide v8, p0, Lt1/d;->e:D

    .line 54
    .line 55
    cmpl-double v6, v8, v6

    .line 56
    .line 57
    if-nez v6, :cond_3e

    .line 58
    .line 59
    const v6, 0x7f13017c

    .line 60
    .line 61
    .line 62
    goto :goto_41

    .line 63
    :cond_3e
    const v6, 0x7f130180

    .line 64
    .line 65
    .line 66
    :goto_41
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-virtual {v2, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    :goto_4d
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_62

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    const v4, 0x7f13017b

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    goto :goto_94

    .line 99
    :cond_62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    const v5, 0x7f13017e

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const/4 v4, 0x2

    .line 119
    new-array v4, v4, [B

    .line 120
    .line 121
    fill-array-data v4, :array_a0

    .line 122
    .line 123
    .line 124
    const/16 v5, 0x8

    .line 125
    .line 126
    new-array v5, v5, [B

    .line 127
    .line 128
    fill-array-data v5, :array_a6

    .line 129
    .line 130
    .line 131
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    :goto_94
    invoke-virtual {v3, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    iget-object v1, v1, Lt1/e;->b:Landroid/os/Handler;

    .line 153
    .line 154
    const-wide/16 v2, 0x2710

    .line 155
    .line 156
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 157
    .line 158
    .line 159
    :cond_9e
    :goto_9e
    return-void

    .line 160
    nop

    .line 161
    :array_a0
    .array-data 1
        -0x5ct
        0x2bt
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    nop

    .line 167
    :array_a6
    .array-data 1
        -0x62t
        0xbt
        -0x44t
        0x3ct
        0x76t
        -0x36t
        0x61t
        0x5bt
    .end array-data
.end method
