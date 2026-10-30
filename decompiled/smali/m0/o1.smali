.class public final synthetic Lm0/o1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lm0/q1;

.field public final synthetic d:Lm0/p1;


# direct methods
.method public synthetic constructor <init>(Lm0/q1;Lm0/p1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lm0/o1;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lm0/o1;->c:Lm0/q1;

    .line 4
    .line 5
    iput-object p2, p0, Lm0/o1;->d:Lm0/p1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lm0/o1;->b:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    iget-object v1, p0, Lm0/o1;->d:Lm0/p1;

    .line 5
    .line 6
    iget-object v2, p0, Lm0/o1;->c:Lm0/q1;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object p1, v2, Lm0/q1;->a:Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eq v1, v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {v2, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 30
    .line 31
    .line 32
    iget-object p1, v2, Lm0/q1;->d:Lf5/j;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1}, Lf5/j;->run()V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void

    .line 40
    :pswitch_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eq p1, v0, :cond_3

    .line 45
    .line 46
    iget-object v0, v2, Lm0/q1;->c:Landroidx/fragment/app/h;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    iget-object v0, v0, Landroidx/fragment/app/h;->c:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Lm0/e0;

    .line 53
    .line 54
    iget-object v1, v0, Lm0/e0;->n:Ljava/util/ArrayList;

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    if-ltz p1, :cond_3

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-lt p1, v1, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iput p1, v0, Lm0/e0;->s:I

    .line 68
    .line 69
    iget-object v1, v0, Lm0/e0;->m:Lm0/q1;

    .line 70
    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    invoke-virtual {v1, p1}, Lm0/q1;->a(I)V

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-object p1, v0, Lm0/e0;->h:Landroid/widget/TextView;

    .line 77
    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    const/16 v0, 0x3a

    .line 81
    .line 82
    new-array v0, v0, [B

    .line 83
    .line 84
    fill-array-data v0, :array_0

    .line 85
    .line 86
    .line 87
    const/16 v1, 0x8

    .line 88
    .line 89
    new-array v1, v1, [B

    .line 90
    .line 91
    fill-array-data v1, :array_1

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    :cond_3
    :goto_0
    return-void

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    :array_0
    .array-data 1
        0x3t
        -0x58t
        -0x8t
        0x26t
        -0x5ft
        0x67t
        -0x38t
        -0x7ct
        0x3t
        -0x73t
        -0x7t
        0x14t
        -0x5ft
        0x64t
        0x38t
        -0x18t
        0x6et
        -0x1ct
        -0x55t
        0x46t
        -0x39t
        0x1t
        -0x5bt
        -0x17t
        0x50t
        -0x1ct
        -0x5at
        -0x4at
        -0x5ft
        0x6bt
        -0x38t
        -0x7bt
        0x3t
        -0x75t
        -0x8t
        0x29t
        -0x5ft
        0x6bt
        -0x37t
        -0x45t
        -0xdt
        -0x1bt
        -0x6bt
        0x46t
        -0x3ft
        -0xft
        -0x38t
        -0x79t
        0x3t
        -0x7bt
        -0x8t
        0x2bt
        -0x5ft
        0x64t
        -0x38t
        -0x7dt
        0x3t
        -0x73t
    .end array-data

    .line 110
    .line 111
    .line 112
    .line 113
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
    nop

    .line 143
    :array_1
    .array-data 1
        -0x2dt
        0x35t
        0x28t
        -0x6at
        0x71t
        -0x2ft
        0x18t
        0x38t
    .end array-data
.end method
