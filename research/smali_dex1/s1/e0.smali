.class public final synthetic Ls1/e0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic b:Ls1/q0;

.field public final synthetic c:Ls1/i0;

.field public final synthetic d:Landroid/app/AlertDialog;

.field public final synthetic e:Z

.field public final synthetic f:Lj0/e;

.field public final synthetic g:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ls1/q0;Ls1/i0;Landroid/app/AlertDialog;ZLj0/e;Ljava/util/ArrayList;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls1/e0;->b:Ls1/q0;

    .line 5
    .line 6
    iput-object p2, p0, Ls1/e0;->c:Ls1/i0;

    .line 7
    .line 8
    iput-object p3, p0, Ls1/e0;->d:Landroid/app/AlertDialog;

    .line 9
    .line 10
    iput-boolean p4, p0, Ls1/e0;->e:Z

    .line 11
    .line 12
    iput-object p5, p0, Ls1/e0;->f:Lj0/e;

    .line 13
    .line 14
    iput-object p6, p0, Ls1/e0;->g:Ljava/util/ArrayList;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ls1/e0;->b:Ls1/q0;

    .line 4
    .line 5
    iget-object v2, v1, Ls1/q0;->q:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v3, v0, Ls1/e0;->c:Ls1/i0;

    .line 8
    .line 9
    iget-object v3, v3, Ls1/i0;->c:Ljava/util/ArrayList;

    .line 10
    .line 11
    move/from16 v4, p3

    .line 12
    .line 13
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lj0/e;

    .line 18
    .line 19
    iget-object v4, v0, Ls1/e0;->d:Landroid/app/AlertDialog;

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 22
    .line 23
    .line 24
    iget-boolean v4, v0, Ls1/e0;->e:Z

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    const v6, 0x3e0f5c29    # 0.14f

    .line 28
    .line 29
    .line 30
    const v7, 0x3dcccccd    # 0.1f

    .line 31
    .line 32
    .line 33
    const/4 v8, 0x1

    .line 34
    if-nez v4, :cond_4a

    .line 35
    .line 36
    invoke-virtual {v1, v7, v6}, Ls1/q0;->n(FF)[F

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    new-instance v9, Ls1/j0;

    .line 41
    .line 42
    sget-object v10, Ls1/m0;->e:Ls1/m0;

    .line 43
    .line 44
    aget v11, v4, v5

    .line 45
    .line 46
    aget v12, v4, v8

    .line 47
    .line 48
    const v14, 0x3e0f5c29    # 0.14f

    .line 49
    .line 50
    .line 51
    invoke-static {v3}, Lj0/f;->g(Lj0/e;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v15

    .line 55
    const v13, 0x3dcccccd    # 0.1f

    .line 56
    .line 57
    .line 58
    invoke-direct/range {v9 .. v15}, Ls1/j0;-><init>(Ls1/m0;FFFFLjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    iget-object v2, v9, Ls1/j0;->a:Ljava/lang/String;

    .line 65
    .line 66
    iput-object v2, v1, Ls1/q0;->v:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v1}, Ls1/q0;->y()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ls1/q0;->A()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_4a
    iget-object v4, v0, Ls1/e0;->f:Lj0/e;

    .line 76
    .line 77
    if-nez v4, :cond_54

    .line 78
    .line 79
    iget-object v2, v0, Ls1/e0;->g:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v1, v2, v8, v3}, Ls1/q0;->M(Ljava/util/ArrayList;ZLj0/e;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_54
    invoke-virtual {v1, v7, v6}, Ls1/q0;->n(FF)[F

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    new-instance v9, Ls1/j0;

    .line 90
    .line 91
    sget-object v11, Ls1/m0;->f:Ls1/m0;

    .line 92
    .line 93
    aget v12, v6, v5

    .line 94
    .line 95
    aget v13, v6, v8

    .line 96
    .line 97
    invoke-static {v4}, Lj0/f;->g(Lj0/e;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v16

    .line 101
    invoke-static {v3}, Lj0/f;->g(Lj0/e;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v17

    .line 105
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    const v14, 0x3dcccccd    # 0.1f

    .line 114
    .line 115
    .line 116
    const v15, 0x3e0f5c29    # 0.14f

    .line 117
    .line 118
    .line 119
    const/16 v18, 0x0

    .line 120
    .line 121
    invoke-direct/range {v9 .. v18}, Ls1/j0;-><init>(Ljava/lang/String;Ls1/m0;FFFFLjava/lang/String;Ljava/lang/String;Z)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    iput-object v10, v1, Ls1/q0;->v:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v1}, Ls1/q0;->y()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ls1/q0;->A()V

    .line 133
    .line 134
    .line 135
    return-void
.end method
