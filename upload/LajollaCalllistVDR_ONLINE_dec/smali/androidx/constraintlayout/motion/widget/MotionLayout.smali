.class public Landroidx/constraintlayout/motion/widget/MotionLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Lg0/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
    }
.end annotation


# static fields
.field public static G0:Z


# instance fields
.field public A:Z

.field public final A0:Lq/r;

.field public final B:Ljava/util/HashMap;

.field public B0:Z

.field public C:J

.field public final C0:Landroid/graphics/RectF;

.field public D:F

.field public D0:Landroid/view/View;

.field public E:F

.field public E0:Landroid/graphics/Matrix;

.field public F:F

.field public final F0:Ljava/util/ArrayList;

.field public G:J

.field public H:F

.field public I:Z

.field public J:Z

.field public K:Lq/t;

.field public L:I

.field public M:Lq/q;

.field public N:Z

.field public final O:Lp/b;

.field public final P:Lq/p;

.field public Q:Lq/a;

.field public R:I

.field public S:I

.field public T:Z

.field public U:F

.field public V:F

.field public W:J

.field public a0:F

.field public b0:Z

.field public c0:Ljava/util/ArrayList;

.field public d0:Ljava/util/ArrayList;

.field public e0:Ljava/util/ArrayList;

.field public f0:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public g0:I

.field public h0:J

.field public i0:F

.field public j0:I

.field public k0:F

.field public l0:Z

.field public m0:I

.field public n0:I

.field public o0:I

.field public p0:I

.field public q0:I

.field public r:Landroidx/constraintlayout/motion/widget/c;

.field public r0:I

.field public s:Lq/o;

.field public s0:F

.field public t:Landroid/view/animation/Interpolator;

.field public final t0:Landroidx/appcompat/view/menu/i;

.field public u:F

.field public u0:Z

.field public v:I

.field public v0:Landroidx/constraintlayout/motion/widget/b;

.field public w:I

.field public w0:Ljava/lang/Runnable;

.field public x:I

.field public final x0:Landroid/graphics/Rect;

.field public y:I

.field public y0:Z

.field public z:I

.field public z0:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 5
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    .line 6
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    .line 8
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:I

    const/4 v2, 0x1

    .line 9
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:Z

    .line 10
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/HashMap;

    const-wide/16 v2, 0x0

    .line 11
    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:J

    const/high16 v2, 0x3f800000    # 1.0f

    .line 12
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 13
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    .line 14
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 15
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 16
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    .line 17
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    .line 18
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    .line 19
    new-instance v2, Lp/b;

    invoke-direct {v2}, Lp/b;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Lp/b;

    .line 20
    new-instance v2, Lq/p;

    invoke-direct {v2, p0}, Lq/p;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Lq/p;

    .line 21
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Z

    .line 22
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b0:Z

    .line 23
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c0:Ljava/util/ArrayList;

    .line 24
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Ljava/util/ArrayList;

    .line 25
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Ljava/util/ArrayList;

    .line 26
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f0:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g0:I

    const-wide/16 v2, -0x1

    .line 28
    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h0:J

    .line 29
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i0:F

    .line 30
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:I

    .line 31
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k0:F

    .line 32
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:Z

    .line 33
    new-instance v0, Landroidx/appcompat/view/menu/i;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroidx/appcompat/view/menu/i;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Landroidx/appcompat/view/menu/i;

    .line 34
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u0:Z

    .line 35
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w0:Ljava/lang/Runnable;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x0:Landroid/graphics/Rect;

    .line 38
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y0:Z

    .line 39
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z0:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 40
    new-instance v0, Lq/r;

    invoke-direct {v0, p0}, Lq/r;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A0:Lq/r;

    .line 41
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B0:Z

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroid/graphics/RectF;

    .line 43
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D0:Landroid/view/View;

    .line 44
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E0:Landroid/graphics/Matrix;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F0:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->z(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    const/4 v1, -0x1

    .line 50
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 51
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    .line 52
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    const/4 v1, 0x0

    .line 53
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    .line 54
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:I

    const/4 v2, 0x1

    .line 55
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:Z

    .line 56
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/HashMap;

    const-wide/16 v2, 0x0

    .line 57
    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:J

    const/high16 v2, 0x3f800000    # 1.0f

    .line 58
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 59
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    .line 60
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 61
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 62
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    .line 63
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    .line 64
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    .line 65
    new-instance v2, Lp/b;

    invoke-direct {v2}, Lp/b;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Lp/b;

    .line 66
    new-instance v2, Lq/p;

    invoke-direct {v2, p0}, Lq/p;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Lq/p;

    .line 67
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Z

    .line 68
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b0:Z

    .line 69
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c0:Ljava/util/ArrayList;

    .line 70
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Ljava/util/ArrayList;

    .line 71
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Ljava/util/ArrayList;

    .line 72
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f0:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 73
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g0:I

    const-wide/16 v2, -0x1

    .line 74
    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h0:J

    .line 75
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i0:F

    .line 76
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:I

    .line 77
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k0:F

    .line 78
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:Z

    .line 79
    new-instance v0, Landroidx/appcompat/view/menu/i;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroidx/appcompat/view/menu/i;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Landroidx/appcompat/view/menu/i;

    .line 80
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u0:Z

    .line 81
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w0:Ljava/lang/Runnable;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x0:Landroid/graphics/Rect;

    .line 84
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y0:Z

    .line 85
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z0:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 86
    new-instance v0, Lq/r;

    invoke-direct {v0, p0}, Lq/r;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A0:Lq/r;

    .line 87
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B0:Z

    .line 88
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroid/graphics/RectF;

    .line 89
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D0:Landroid/view/View;

    .line 90
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E0:Landroid/graphics/Matrix;

    .line 91
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F0:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->z(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Landroid/view/animation/Interpolator;

    const/4 p3, 0x0

    .line 95
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    const/4 v0, -0x1

    .line 96
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 97
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    .line 98
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    .line 100
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:I

    const/4 v1, 0x1

    .line 101
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:Z

    .line 102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/HashMap;

    const-wide/16 v1, 0x0

    .line 103
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:J

    const/high16 v1, 0x3f800000    # 1.0f

    .line 104
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 105
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    .line 106
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 107
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 108
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    .line 109
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    .line 110
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    .line 111
    new-instance v1, Lp/b;

    invoke-direct {v1}, Lp/b;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Lp/b;

    .line 112
    new-instance v1, Lq/p;

    invoke-direct {v1, p0}, Lq/p;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Lq/p;

    .line 113
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Z

    .line 114
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b0:Z

    .line 115
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c0:Ljava/util/ArrayList;

    .line 116
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Ljava/util/ArrayList;

    .line 117
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Ljava/util/ArrayList;

    .line 118
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f0:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 119
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g0:I

    const-wide/16 v1, -0x1

    .line 120
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h0:J

    .line 121
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i0:F

    .line 122
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:I

    .line 123
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k0:F

    .line 124
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:Z

    .line 125
    new-instance p3, Landroidx/appcompat/view/menu/i;

    const/4 v1, 0x5

    invoke-direct {p3, v1}, Landroidx/appcompat/view/menu/i;-><init>(I)V

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Landroidx/appcompat/view/menu/i;

    .line 126
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u0:Z

    .line 127
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w0:Ljava/lang/Runnable;

    .line 128
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 129
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x0:Landroid/graphics/Rect;

    .line 130
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y0:Z

    .line 131
    sget-object p3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z0:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 132
    new-instance p3, Lq/r;

    invoke-direct {p3, p0}, Lq/r;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A0:Lq/r;

    .line 133
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B0:Z

    .line 134
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroid/graphics/RectF;

    .line 135
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D0:Landroid/view/View;

    .line 136
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E0:Landroid/graphics/Matrix;

    .line 137
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F0:Ljava/util/ArrayList;

    .line 138
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->z(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static q(Landroidx/constraintlayout/motion/widget/MotionLayout;Lm/f;)Landroid/graphics/Rect;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lm/f;->u()I

    move-result v0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x0:Landroid/graphics/Rect;

    iput v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lm/f;->t()I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lm/f;->s()I

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Lm/f;->m()I

    move-result p1

    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-object p0
.end method


# virtual methods
.method public final A()V
    .locals 7

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    invoke-virtual {v0, v1, p0}, Landroidx/constraintlayout/motion/widget/c;->a(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    return-void

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq/x;

    iget-object v6, v5, Lq/x;->m:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v5, v5, Lq/x;->m:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lq/w;

    invoke-virtual {v6, p0}, Lq/w;->b(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto :goto_0

    :cond_3
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq/x;

    iget-object v6, v5, Lq/x;->m:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    iget-object v5, v5, Lq/x;->m:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lq/w;

    invoke-virtual {v6, p0}, Lq/w;->b(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq/x;

    iget-object v5, v4, Lq/x;->m:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    iget-object v5, v4, Lq/x;->m:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lq/w;

    invoke-virtual {v6, p0, v0, v4}, Lq/w;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;ILq/x;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/x;

    iget-object v4, v3, Lq/x;->m:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    iget-object v4, v3, Lq/x;->m:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq/w;

    invoke-virtual {v5, p0, v0, v3}, Lq/w;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;ILq/x;)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/c;->o()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz v0, :cond_c

    iget v2, v0, Landroidx/constraintlayout/motion/widget/d;->d:I

    if-eq v2, v1, :cond_a

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/d;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cannot find TouchAnchorId @id/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v4, v0, Landroidx/constraintlayout/motion/widget/d;->d:I

    invoke-static {v1, v4}, Lcom/google/android/material/slider/h;->n0(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TouchResponse"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    :cond_b
    :goto_4
    instance-of v1, v2, Landroidx/core/widget/NestedScrollView;

    if-eqz v1, :cond_c

    check-cast v2, Landroidx/core/widget/NestedScrollView;

    new-instance v1, Landroidx/appcompat/widget/p1;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v0}, Landroidx/appcompat/widget/p1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Landroidx/appcompat/view/menu/i;

    const/4 v3, 0x6

    invoke-direct {v1, v3, v0}, Landroidx/appcompat/view/menu/i;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v1}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/g;)V

    :cond_c
    return-void
.end method

.method public final B()V
    .locals 6

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Lq/t;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f0:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Lq/t;

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Lq/t;->a(I)V

    :cond_3
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f0:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq/t;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Lq/t;->a(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final C()V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A0:Lq/r;

    invoke-virtual {v0}, Lq/r;->g()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final D(I)V
    .locals 7

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Lq/r;

    if-eqz v1, :cond_e

    int-to-float v2, v0

    iget v3, v1, Lq/r;->b:I

    const/4 v4, 0x0

    if-ne v3, p1, :cond_8

    if-ne p1, v0, :cond_0

    iget-object p1, v1, Lq/r;->e:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls/f;

    goto :goto_0

    :cond_0
    iget-object p1, v1, Lq/r;->e:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls/f;

    :goto_0
    iget v3, v1, Lq/r;->c:I

    if-eq v3, v0, :cond_1

    iget-object v5, p1, Ls/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls/g;

    invoke-virtual {v3, v2, v2}, Ls/g;->a(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_9

    :cond_1
    :goto_1
    iget-object v3, p1, Ls/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls/g;

    invoke-virtual {v3, v2, v2}, Ls/g;->a(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move v4, v0

    :goto_2
    iget v2, v1, Lq/r;->c:I

    if-ne v2, v4, :cond_4

    goto/16 :goto_9

    :cond_4
    iget-object p1, p1, Ls/f;->b:Ljava/util/ArrayList;

    if-ne v4, v0, :cond_5

    iget-object v2, v1, Lq/r;->a:Ls/n;

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls/g;

    iget-object v2, v2, Ls/g;->f:Ls/n;

    :goto_3
    if-ne v4, v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls/g;

    iget p1, p1, Ls/g;->e:I

    :goto_4
    if-nez v2, :cond_7

    goto/16 :goto_9

    :cond_7
    iput v4, v1, Lq/r;->c:I

    iget-object p1, v1, Lq/r;->g:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    iget-object p1, v1, Lq/r;->d:Ljava/lang/Object;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, p1}, Ls/n;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object p1, v1, Lq/r;->g:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_8
    iput p1, v1, Lq/r;->b:I

    iget-object v3, v1, Lq/r;->e:Ljava/lang/Object;

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls/f;

    :goto_5
    iget-object v5, v3, Ls/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_a

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/g;

    invoke-virtual {v5, v2, v2}, Ls/g;->a(FF)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    move v4, v0

    :goto_6
    iget-object v2, v3, Ls/f;->b:Ljava/util/ArrayList;

    if-ne v4, v0, :cond_b

    iget-object v3, v3, Ls/f;->d:Ls/n;

    goto :goto_7

    :cond_b
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls/g;

    iget-object v3, v3, Ls/g;->f:Ls/n;

    :goto_7
    if-ne v4, v0, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/g;

    iget v0, v0, Ls/g;->e:I

    :goto_8
    if-nez v3, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NO Constraint set found ! id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", dim =-1.0, -1.0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConstraintLayoutStates"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_d
    iput v4, v1, Lq/r;->c:I

    iget-object p1, v1, Lq/r;->g:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    iget-object p1, v1, Lq/r;->d:Ljava/lang/Object;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, p1}, Ls/n;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object p1, v1, Lq/r;->g:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    goto :goto_9

    :cond_e
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/c;->b(I)Ls/n;

    move-result-object p1

    invoke-virtual {p1, p0}, Ls/n;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_f
    :goto_9
    return-void
.end method

.method public final E(II)V
    .locals 1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/widget/b;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/b;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    iput p1, v0, Landroidx/constraintlayout/motion/widget/b;->c:I

    iput p2, v0, Landroidx/constraintlayout/motion/widget/b;->d:I

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-eqz v0, :cond_2

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/c;->n(II)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/c;->b(I)Ls/n;

    move-result-object p1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/motion/widget/c;->b(I)Ls/n;

    move-result-object p2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A0:Lq/r;

    invoke-virtual {v0, p1, p2}, Lq/r;->e(Ls/n;Ls/n;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->C()V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r(F)V

    :cond_2
    return-void
.end method

.method public final F(FFI)V
    .locals 15

    move-object v0, p0

    move/from16 v8, p1

    move/from16 v4, p2

    move/from16 v1, p3

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    cmpl-float v2, v2, v8

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:J

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/c;->c()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float v5, v3, v5

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    iput-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Lp/b;

    const/4 v10, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-eqz v1, :cond_8

    if-eq v1, v2, :cond_8

    if-eq v1, v11, :cond_8

    const/4 v13, 0x4

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Lq/p;

    if-eq v1, v13, :cond_7

    const/4 v13, 0x5

    if-eq v1, v13, :cond_2

    if-eq v1, v7, :cond_8

    if-eq v1, v6, :cond_8

    goto/16 :goto_c

    :cond_2
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/c;->g()F

    move-result v5

    cmpl-float v6, v4, v10

    const/high16 v7, 0x40000000    # 2.0f

    if-lez v6, :cond_3

    div-float v6, v4, v5

    mul-float v11, v4, v6

    mul-float/2addr v5, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    sub-float/2addr v11, v5

    add-float/2addr v11, v1

    cmpl-float v1, v11, v3

    if-lez v1, :cond_4

    goto :goto_0

    :cond_3
    neg-float v3, v4

    div-float/2addr v3, v5

    mul-float v6, v4, v3

    mul-float/2addr v5, v3

    mul-float/2addr v5, v3

    div-float/2addr v5, v7

    add-float/2addr v5, v6

    add-float/2addr v5, v1

    cmpg-float v1, v5, v10

    if-gez v1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v12

    :goto_0
    if-eqz v2, :cond_5

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/c;->g()F

    move-result v2

    iput v4, v14, Lq/p;->a:F

    iput v1, v14, Lq/p;->b:F

    iput v2, v14, Lq/p;->c:F

    iput-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Lq/o;

    goto/16 :goto_c

    :cond_5
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Lp/b;

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/c;->g()F

    move-result v6

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    if-eqz v3, :cond_6

    iget-object v3, v3, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz v3, :cond_6

    iget v3, v3, Landroidx/constraintlayout/motion/widget/d;->s:F

    move v7, v3

    goto :goto_1

    :cond_6
    move v7, v10

    :goto_1
    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v7}, Lp/b;->b(FFFFFF)V

    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iput-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Lq/o;

    goto/16 :goto_c

    :cond_7
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/c;->g()F

    move-result v2

    iput v4, v14, Lq/p;->a:F

    iput v1, v14, Lq/p;->b:F

    iput v2, v14, Lq/p;->c:F

    iput-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Lq/o;

    goto/16 :goto_c

    :cond_8
    if-eq v1, v2, :cond_b

    if-ne v1, v6, :cond_9

    goto :goto_2

    :cond_9
    if-eq v1, v11, :cond_a

    if-ne v1, v7, :cond_c

    :cond_a
    move v8, v3

    goto :goto_3

    :cond_b
    :goto_2
    move v8, v10

    :cond_c
    :goto_3
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    if-eqz v2, :cond_d

    iget-object v3, v2, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz v3, :cond_d

    iget v3, v3, Landroidx/constraintlayout/motion/widget/d;->D:I

    goto :goto_4

    :cond_d
    move v3, v12

    :goto_4
    if-nez v3, :cond_f

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/c;->g()F

    move-result v6

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    if-eqz v1, :cond_e

    iget-object v1, v1, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz v1, :cond_e

    iget v1, v1, Landroidx/constraintlayout/motion/widget/d;->s:F

    move v7, v1

    goto :goto_5

    :cond_e
    move v7, v10

    :goto_5
    move-object v1, v9

    move v3, v8

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v7}, Lp/b;->b(FFFFFF)V

    goto :goto_b

    :cond_f
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    if-eqz v2, :cond_10

    iget-object v3, v2, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz v3, :cond_10

    iget v3, v3, Landroidx/constraintlayout/motion/widget/d;->z:F

    goto :goto_6

    :cond_10
    move v3, v10

    :goto_6
    if-eqz v2, :cond_11

    iget-object v4, v2, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz v4, :cond_11

    iget v4, v4, Landroidx/constraintlayout/motion/widget/d;->A:F

    goto :goto_7

    :cond_11
    move v4, v10

    :goto_7
    if-eqz v2, :cond_12

    iget-object v5, v2, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz v5, :cond_12

    iget v5, v5, Landroidx/constraintlayout/motion/widget/d;->y:F

    goto :goto_8

    :cond_12
    move v5, v10

    :goto_8
    if-eqz v2, :cond_13

    iget-object v6, v2, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz v6, :cond_13

    iget v6, v6, Landroidx/constraintlayout/motion/widget/d;->B:F

    goto :goto_9

    :cond_13
    move v6, v10

    :goto_9
    if-eqz v2, :cond_14

    iget-object v2, v2, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz v2, :cond_14

    iget v2, v2, Landroidx/constraintlayout/motion/widget/d;->C:I

    goto :goto_a

    :cond_14
    move v2, v12

    :goto_a
    iget-object v7, v9, Lp/b;->b:Ll/k;

    if-nez v7, :cond_15

    new-instance v7, Ll/k;

    invoke-direct {v7}, Ll/k;-><init>()V

    iput-object v7, v9, Lp/b;->b:Ll/k;

    :cond_15
    iget-object v7, v9, Lp/b;->b:Ll/k;

    iput-object v7, v9, Lp/b;->c:Ll/m;

    float-to-double v13, v8

    iput-wide v13, v7, Ll/k;->c:D

    float-to-double v13, v5

    iput-wide v13, v7, Ll/k;->a:D

    iput v1, v7, Ll/k;->e:F

    float-to-double v4, v4

    iput-wide v4, v7, Ll/k;->b:D

    iput v3, v7, Ll/k;->g:F

    iput v6, v7, Ll/k;->h:F

    iput v2, v7, Ll/k;->i:I

    iput v10, v7, Ll/k;->d:F

    :goto_b
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iput-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Lq/o;

    :goto_c
    iput-boolean v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:Z

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final G(II)V
    .locals 13

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/c;->b:Ls/u;

    if-eqz v0, :cond_9

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    int-to-float v4, v1

    iget-object v0, v0, Ls/u;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/s;

    if-nez v0, :cond_0

    move v3, p1

    goto :goto_2

    :cond_0
    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v4, v5

    iget-object v6, v0, Ls/s;->b:Ljava/util/ArrayList;

    iget v0, v0, Ls/s;->c:I

    if-eqz v5, :cond_5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v2

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls/t;

    invoke-virtual {v7, v4, v4}, Ls/t;->a(FF)Z

    move-result v8

    if-eqz v8, :cond_2

    iget v6, v7, Ls/t;->e:I

    if-ne v3, v6, :cond_3

    goto :goto_2

    :cond_3
    move-object v6, v7

    goto :goto_0

    :cond_4
    if-eqz v6, :cond_8

    iget v3, v6, Ls/t;->e:I

    goto :goto_2

    :cond_5
    :goto_1
    if-ne v0, v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/t;

    iget v5, v5, Ls/t;->e:I

    if-ne v3, v5, :cond_7

    goto :goto_2

    :cond_8
    move v3, v0

    :goto_2
    if-eq v3, v1, :cond_9

    move p1, v3

    :cond_9
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    if-ne v0, p1, :cond_a

    return-void

    :cond_a
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    const/4 v4, 0x0

    const/high16 v5, 0x447a0000    # 1000.0f

    if-ne v3, p1, :cond_c

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r(F)V

    if-lez p2, :cond_b

    int-to-float p1, p2

    div-float/2addr p1, v5

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    :cond_b
    return-void

    :cond_c
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v3, p1, :cond_e

    invoke-virtual {p0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r(F)V

    if-lez p2, :cond_d

    int-to-float p1, p2

    div-float/2addr p1, v5

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    :cond_d
    return-void

    :cond_e
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    if-eq v0, v1, :cond_10

    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->E(II)V

    invoke-virtual {p0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r(F)V

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    invoke-virtual {p0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r(F)V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w0:Ljava/lang/Runnable;

    if-lez p2, :cond_f

    int-to-float p1, p2

    div-float/2addr p1, v5

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    :cond_f
    return-void

    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v7

    iput-wide v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:J

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v7

    iput-wide v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:J

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:Z

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Lq/o;

    if-ne p2, v1, :cond_11

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/c;->c()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    :cond_11
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    invoke-virtual {v3, v1, v7}, Landroidx/constraintlayout/motion/widget/c;->n(II)V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    if-nez p2, :cond_12

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/c;->c()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v5

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    goto :goto_3

    :cond_12
    if-lez p2, :cond_13

    int-to-float p2, p2

    div-float/2addr p2, v5

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    :cond_13
    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    move v5, v0

    :goto_4
    if-ge v5, p2, :cond_14

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lq/n;

    invoke-direct {v8, v7}, Lq/n;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lq/n;

    invoke-virtual {v1, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_14
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v5, p1}, Landroidx/constraintlayout/motion/widget/c;->b(I)Ls/n;

    move-result-object p1

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A0:Lq/r;

    invoke-virtual {v5, v2, p1}, Lq/r;->e(Ls/n;Ls/n;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->C()V

    invoke-virtual {v5}, Lq/r;->a()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move v2, v0

    :goto_5
    if-ge v2, p1, :cond_17

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lq/n;

    if-nez v7, :cond_15

    goto/16 :goto_7

    :cond_15
    iget-object v8, v7, Lq/n;->f:Lq/u;

    iput v4, v8, Lq/u;->d:F

    iput v4, v8, Lq/u;->e:F

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v10

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lq/u;->d(FFFF)V

    iget-object v7, v7, Lq/n;->h:Lq/l;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v8

    iput v8, v7, Lq/l;->d:I

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_16

    move v8, v4

    goto :goto_6

    :cond_16
    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v8

    :goto_6
    iput v8, v7, Lq/l;->b:F

    invoke-virtual {v5}, Landroid/view/View;->getElevation()F

    move-result v8

    iput v8, v7, Lq/l;->e:F

    invoke-virtual {v5}, Landroid/view/View;->getRotation()F

    move-result v8

    iput v8, v7, Lq/l;->f:F

    invoke-virtual {v5}, Landroid/view/View;->getRotationX()F

    move-result v8

    iput v8, v7, Lq/l;->g:F

    invoke-virtual {v5}, Landroid/view/View;->getRotationY()F

    move-result v8

    iput v8, v7, Lq/l;->h:F

    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v8

    iput v8, v7, Lq/l;->i:F

    invoke-virtual {v5}, Landroid/view/View;->getScaleY()F

    move-result v8

    iput v8, v7, Lq/l;->j:F

    invoke-virtual {v5}, Landroid/view/View;->getPivotX()F

    move-result v8

    iput v8, v7, Lq/l;->k:F

    invoke-virtual {v5}, Landroid/view/View;->getPivotY()F

    move-result v8

    iput v8, v7, Lq/l;->l:F

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v8

    iput v8, v7, Lq/l;->m:F

    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v8

    iput v8, v7, Lq/l;->n:F

    invoke-virtual {v5}, Landroid/view/View;->getTranslationZ()F

    move-result v5

    iput v5, v7, Lq/l;->o:F

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_17
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Ljava/util/ArrayList;

    if-eqz v5, :cond_1c

    move v5, v0

    :goto_8
    if-ge v5, p2, :cond_19

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lq/n;

    if-nez v7, :cond_18

    goto :goto_9

    :cond_18
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v8, v7}, Landroidx/constraintlayout/motion/widget/c;->f(Lq/n;)V

    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_19
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/MotionHelper;

    invoke-virtual {v7, p0, v3}, Landroidx/constraintlayout/motion/widget/MotionHelper;->s(Landroidx/constraintlayout/motion/widget/MotionLayout;Ljava/util/HashMap;)V

    goto :goto_a

    :cond_1a
    move v5, v0

    :goto_b
    if-ge v5, p2, :cond_1e

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lq/n;

    if-nez v7, :cond_1b

    goto :goto_c

    :cond_1b
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v8

    invoke-virtual {v7, p1, v2, v8, v9}, Lq/n;->h(IIJ)V

    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_1c
    move v5, v0

    :goto_d
    if-ge v5, p2, :cond_1e

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lq/n;

    if-nez v7, :cond_1d

    goto :goto_e

    :cond_1d
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v8, v7}, Landroidx/constraintlayout/motion/widget/c;->f(Lq/n;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v8

    invoke-virtual {v7, p1, v2, v8, v9}, Lq/n;->h(IIJ)V

    :goto_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_1e
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    if-eqz p1, :cond_1f

    iget p1, p1, Lq/x;->i:F

    goto :goto_f

    :cond_1f
    move p1, v4

    :goto_f
    cmpl-float v2, p1, v4

    if-eqz v2, :cond_21

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const v5, -0x800001

    move v7, v0

    :goto_10
    if-ge v7, p2, :cond_20

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lq/n;

    iget-object v8, v8, Lq/n;->g:Lq/u;

    iget v9, v8, Lq/u;->f:F

    iget v8, v8, Lq/u;->g:F

    add-float/2addr v8, v9

    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_20
    :goto_11
    if-ge v0, p2, :cond_21

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lq/n;

    iget-object v8, v7, Lq/n;->g:Lq/u;

    iget v9, v8, Lq/u;->f:F

    iget v8, v8, Lq/u;->g:F

    sub-float v10, v6, p1

    div-float v10, v6, v10

    iput v10, v7, Lq/n;->n:F

    add-float/2addr v9, v8

    sub-float/2addr v9, v2

    mul-float/2addr v9, p1

    sub-float v8, v5, v2

    div-float/2addr v9, v8

    sub-float v8, p1, v9

    iput v8, v7, Lq/n;->m:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_21
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final H(ILs/n;)V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/c;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/c;->b(I)Ls/n;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/c;->b(I)Ls/n;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A0:Lq/r;

    invoke-virtual {v2, v0, v1}, Lq/r;->e(Ls/n;Ls/n;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->C()V

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    if-ne v0, p1, :cond_1

    invoke-virtual {p2, p0}, Ls/n;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_1
    return-void
.end method

.method public final b(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:J

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a0:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->U:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->V:F

    return-void
.end method

.method public final c(Landroid/view/View;I)V
    .locals 11

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-eqz p1, :cond_6

    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a0:F

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->U:F

    div-float/2addr v1, p2

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->V:F

    div-float/2addr v2, p2

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz p1, :cond_6

    const/4 p2, 0x0

    iput-boolean p2, p1, Landroidx/constraintlayout/motion/widget/d;->m:Z

    iget-object v3, p1, Landroidx/constraintlayout/motion/widget/d;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v10

    iget-object v4, p1, Landroidx/constraintlayout/motion/widget/d;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v5, p1, Landroidx/constraintlayout/motion/widget/d;->d:I

    iget v7, p1, Landroidx/constraintlayout/motion/widget/d;->h:F

    iget v8, p1, Landroidx/constraintlayout/motion/widget/d;->g:F

    iget-object v9, p1, Landroidx/constraintlayout/motion/widget/d;->n:[F

    move v6, v10

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->w(IFFF[F)V

    iget v4, p1, Landroidx/constraintlayout/motion/widget/d;->k:F

    iget-object v5, p1, Landroidx/constraintlayout/motion/widget/d;->n:[F

    aget v6, v5, p2

    iget v7, p1, Landroidx/constraintlayout/motion/widget/d;->l:F

    const/4 v8, 0x1

    aget v5, v5, v8

    cmpl-float v9, v4, v0

    if-eqz v9, :cond_1

    mul-float/2addr v1, v4

    div-float/2addr v1, v6

    goto :goto_0

    :cond_1
    mul-float/2addr v2, v7

    div-float v1, v2, v5

    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_2

    const/high16 v2, 0x40400000    # 3.0f

    div-float v2, v1, v2

    add-float/2addr v10, v2

    :cond_2
    cmpl-float v2, v10, v0

    if-eqz v2, :cond_6

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v4, v10, v2

    if-eqz v4, :cond_3

    move v4, v8

    goto :goto_1

    :cond_3
    move v4, p2

    :goto_1
    iget p1, p1, Landroidx/constraintlayout/motion/widget/d;->c:I

    const/4 v5, 0x3

    if-eq p1, v5, :cond_4

    move p2, v8

    :cond_4
    and-int/2addr p2, v4

    if-eqz p2, :cond_6

    float-to-double v4, v10

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double p2, v4, v6

    if-gez p2, :cond_5

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_2
    invoke-virtual {v3, v0, v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->F(FFI)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->t(Z)V

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/c;->q:Landroidx/appcompat/widget/b0;

    if-eqz v3, :cond_3

    iget-object v5, v3, Landroidx/appcompat/widget/b0;->e:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lq/z;

    invoke-virtual {v6}, Lq/z;->a()V

    goto :goto_1

    :cond_2
    iget-object v5, v3, Landroidx/appcompat/widget/b0;->e:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    iget-object v6, v3, Landroidx/appcompat/widget/b0;->f:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v5, v3, Landroidx/appcompat/widget/b0;->e:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    iput-object v4, v3, Landroidx/appcompat/widget/b0;->e:Ljava/lang/Object;

    :cond_3
    :goto_2
    invoke-super/range {p0 .. p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-nez v3, :cond_4

    return-void

    :cond_4
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    const/high16 v5, 0x41300000    # 11.0f

    const/high16 v6, 0x41200000    # 10.0f

    if-ne v3, v4, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_8

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g0:I

    add-int/2addr v3, v4

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g0:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v7

    iget-wide v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h0:J

    const-wide/16 v11, -0x1

    cmp-long v3, v9, v11

    if-eqz v3, :cond_5

    sub-long v9, v7, v9

    const-wide/32 v11, 0xbebc200

    cmp-long v3, v9, v11

    if-lez v3, :cond_6

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g0:I

    int-to-float v3, v3

    long-to-float v9, v9

    const v10, 0x3089705f    # 1.0E-9f

    mul-float/2addr v9, v10

    div-float/2addr v3, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v3, v9

    float-to-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i0:F

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g0:I

    iput-wide v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h0:J

    goto :goto_3

    :cond_5
    iput-wide v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h0:J

    :cond_6
    :goto_3
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/high16 v7, 0x42280000    # 42.0f

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v7

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i0:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " fps "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    invoke-static {v9, v0}, Lcom/google/android/material/slider/h;->x0(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroidx/activity/b;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    invoke-static {v9, v0}, Lcom/google/android/material/slider/h;->x0(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " (progress: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " ) state="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    const/4 v9, -0x1

    if-ne v7, v9, :cond_7

    const-string v7, "undefined"

    goto :goto_4

    :cond_7
    invoke-static {v7, v0}, Lcom/google/android/material/slider/h;->x0(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/high16 v8, -0x1000000

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/lit8 v8, v8, -0x1d

    int-to-float v8, v8

    invoke-virtual {v1, v7, v5, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const v8, -0x77ff78

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/lit8 v8, v8, -0x1e

    int-to-float v8, v8

    invoke-virtual {v1, v7, v6, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_8
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    if-le v3, v4, :cond_30

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Lq/q;

    if-nez v3, :cond_9

    new-instance v3, Lq/q;

    invoke-direct {v3, v0}, Lq/q;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Lq/q;

    :cond_9
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Lq/q;

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/HashMap;

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/c;->c()I

    move-result v8

    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v7, :cond_30

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v10

    if-nez v10, :cond_a

    goto/16 :goto_1b

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v10, v3, Lq/q;->n:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v10}, Landroid/view/View;->isInEditMode()Z

    move-result v11

    iget-object v12, v3, Lq/q;->e:Landroid/graphics/Paint;

    const/4 v13, 0x2

    if-nez v11, :cond_b

    and-int/lit8 v11, v9, 0x1

    if-ne v11, v13, :cond_b

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    iget v14, v10, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/lit8 v13, v13, -0x1e

    int-to-float v13, v13

    iget-object v14, v3, Lq/q;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v6, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0x1d

    int-to-float v6, v6

    invoke-virtual {v1, v11, v5, v6, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_b
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v7, v1

    move-object v6, v3

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lq/n;

    iget-object v11, v10, Lq/n;->f:Lq/u;

    iget v11, v11, Lq/u;->c:I

    iget-object v13, v10, Lq/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lq/u;

    iget v15, v15, Lq/u;->c:I

    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_6

    :cond_c
    iget-object v14, v10, Lq/n;->g:Lq/u;

    iget v14, v14, Lq/u;->c:I

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-lez v9, :cond_d

    if-nez v11, :cond_d

    move v11, v4

    :cond_d
    if-nez v11, :cond_e

    goto :goto_5

    :cond_e
    iget-object v4, v6, Lq/q;->c:[F

    if-eqz v4, :cond_11

    iget-object v14, v10, Lq/n;->j:[Lcom/google/android/material/slider/h;

    aget-object v14, v14, v2

    invoke-virtual {v14}, Lcom/google/android/material/slider/h;->y0()[D

    move-result-object v15

    iget-object v14, v6, Lq/q;->b:[I

    if-eqz v14, :cond_f

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v21, v5

    move-object/from16 v5, v17

    check-cast v5, Lq/u;

    add-int/lit8 v17, v2, 0x1

    iget v5, v5, Lq/u;->p:I

    aput v5, v14, v2

    move/from16 v2, v17

    move-object/from16 v5, v21

    goto :goto_7

    :cond_f
    move-object/from16 v21, v5

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_8
    array-length v14, v15

    if-ge v2, v14, :cond_10

    iget-object v14, v10, Lq/n;->j:[Lcom/google/android/material/slider/h;

    const/16 v16, 0x0

    aget-object v14, v14, v16

    aget-wide v0, v15, v2

    move/from16 v22, v9

    iget-object v9, v10, Lq/n;->p:[D

    invoke-virtual {v14, v0, v1, v9}, Lcom/google/android/material/slider/h;->t0(D[D)V

    iget-object v14, v10, Lq/n;->f:Lq/u;

    aget-wide v0, v15, v2

    iget-object v9, v10, Lq/n;->o:[I

    move-object/from16 v23, v3

    iget-object v3, v10, Lq/n;->p:[D

    move-object/from16 v24, v15

    move-wide v15, v0

    move-object/from16 v17, v9

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v5

    invoke-virtual/range {v14 .. v20}, Lq/u;->c(D[I[D[FI)V

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, v22

    move-object/from16 v3, v23

    move-object/from16 v15, v24

    goto :goto_8

    :cond_10
    move-object/from16 v23, v3

    move/from16 v22, v9

    div-int/lit8 v5, v5, 0x2

    goto :goto_9

    :cond_11
    move-object/from16 v23, v3

    move-object/from16 v21, v5

    move/from16 v22, v9

    const/4 v5, 0x0

    :goto_9
    iput v5, v6, Lq/q;->k:I

    const/4 v0, 0x1

    if-lt v11, v0, :cond_2e

    div-int/lit8 v0, v8, 0x10

    iget-object v1, v6, Lq/q;->a:[F

    if-eqz v1, :cond_12

    array-length v1, v1

    mul-int/lit8 v2, v0, 0x2

    if-eq v1, v2, :cond_13

    :cond_12
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [F

    iput-object v1, v6, Lq/q;->a:[F

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v6, Lq/q;->d:Landroid/graphics/Path;

    :cond_13
    iget v1, v6, Lq/q;->m:I

    int-to-float v2, v1

    invoke-virtual {v7, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x77000000

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v6, Lq/q;->i:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v6, Lq/q;->f:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, v6, Lq/q;->g:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v6, Lq/q;->a:[F

    add-int/lit8 v6, v0, -0x1

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    div-float/2addr v7, v6

    iget-object v6, v10, Lq/n;->y:Ljava/util/HashMap;

    const-string v9, "translationX"

    if-nez v6, :cond_14

    const/4 v6, 0x0

    goto :goto_a

    :cond_14
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lp/l;

    :goto_a
    iget-object v14, v10, Lq/n;->y:Ljava/util/HashMap;

    const-string v15, "translationY"

    if-nez v14, :cond_15

    const/4 v14, 0x0

    goto :goto_b

    :cond_15
    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lp/l;

    :goto_b
    move/from16 v24, v8

    iget-object v8, v10, Lq/n;->z:Ljava/util/HashMap;

    if-nez v8, :cond_16

    const/4 v8, 0x0

    goto :goto_c

    :cond_16
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lp/g;

    :goto_c
    iget-object v9, v10, Lq/n;->z:Ljava/util/HashMap;

    if-nez v9, :cond_17

    const/4 v9, 0x0

    goto :goto_d

    :cond_17
    invoke-virtual {v9, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lp/g;

    :goto_d
    const/4 v15, 0x0

    :goto_e
    const/high16 v16, 0x7fc00000    # Float.NaN

    move-object/from16 v17, v14

    iget-object v14, v10, Lq/n;->f:Lq/u;

    if-ge v15, v0, :cond_25

    move/from16 v25, v0

    int-to-float v0, v15

    mul-float/2addr v0, v7

    move/from16 v26, v7

    iget v7, v10, Lq/n;->n:F

    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v18, v7, v18

    if-eqz v18, :cond_19

    move/from16 v27, v1

    iget v1, v10, Lq/n;->m:F

    cmpg-float v18, v0, v1

    if-gez v18, :cond_18

    const/4 v0, 0x0

    :cond_18
    cmpl-float v18, v0, v1

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    if-lez v18, :cond_1a

    float-to-double v3, v0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v3, v18

    if-gez v3, :cond_1a

    sub-float/2addr v0, v1

    mul-float/2addr v0, v7

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_f

    :cond_19
    move/from16 v27, v1

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    :cond_1a
    :goto_f
    float-to-double v3, v0

    iget-object v1, v14, Lq/u;->b:Ll/e;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v14, 0x0

    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-wide/from16 v19, v3

    move-object/from16 v3, v18

    check-cast v3, Lq/u;

    iget-object v4, v3, Lq/u;->b:Ll/e;

    if-eqz v4, :cond_1c

    move-object/from16 v18, v4

    iget v4, v3, Lq/u;->d:F

    cmpg-float v30, v4, v0

    if-gez v30, :cond_1b

    move v14, v4

    move-object/from16 v1, v18

    goto :goto_11

    :cond_1b
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_1c

    iget v3, v3, Lq/u;->d:F

    move/from16 v16, v3

    :cond_1c
    :goto_11
    move-wide/from16 v3, v19

    goto :goto_10

    :cond_1d
    move-wide/from16 v19, v3

    if-eqz v1, :cond_1f

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/high16 v16, 0x3f800000    # 1.0f

    :cond_1e
    sub-float v3, v0, v14

    sub-float v16, v16, v14

    div-float v3, v3, v16

    float-to-double v3, v3

    invoke-virtual {v1, v3, v4}, Ll/e;->a(D)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float v1, v1, v16

    add-float/2addr v1, v14

    float-to-double v3, v1

    goto :goto_12

    :cond_1f
    move-wide/from16 v3, v19

    :goto_12
    iget-object v1, v10, Lq/n;->j:[Lcom/google/android/material/slider/h;

    const/4 v7, 0x0

    aget-object v1, v1, v7

    iget-object v7, v10, Lq/n;->p:[D

    invoke-virtual {v1, v3, v4, v7}, Lcom/google/android/material/slider/h;->t0(D[D)V

    iget-object v1, v10, Lq/n;->k:Ll/b;

    if-eqz v1, :cond_20

    iget-object v7, v10, Lq/n;->p:[D

    array-length v14, v7

    if-lez v14, :cond_20

    invoke-virtual {v1, v3, v4, v7}, Ll/b;->t0(D[D)V

    :cond_20
    iget-object v14, v10, Lq/n;->f:Lq/u;

    iget-object v1, v10, Lq/n;->o:[I

    iget-object v7, v10, Lq/n;->p:[D

    mul-int/lit8 v30, v15, 0x2

    move-object/from16 v31, v13

    move-object/from16 v13, v17

    move/from16 v32, v15

    move-wide v15, v3

    move-object/from16 v17, v1

    move-object/from16 v18, v7

    move-object/from16 v19, v2

    move/from16 v20, v30

    invoke-virtual/range {v14 .. v20}, Lq/u;->c(D[I[D[FI)V

    if-eqz v8, :cond_21

    aget v1, v2, v30

    invoke-virtual {v8, v0}, Lp/g;->a(F)F

    move-result v3

    add-float/2addr v3, v1

    aput v3, v2, v30

    goto :goto_13

    :cond_21
    if-eqz v6, :cond_22

    aget v1, v2, v30

    invoke-virtual {v6, v0}, Lp/l;->a(F)F

    move-result v3

    add-float/2addr v3, v1

    aput v3, v2, v30

    :cond_22
    :goto_13
    if-eqz v9, :cond_23

    add-int/lit8 v30, v30, 0x1

    aget v1, v2, v30

    invoke-virtual {v9, v0}, Lp/g;->a(F)F

    move-result v0

    add-float/2addr v0, v1

    aput v0, v2, v30

    goto :goto_14

    :cond_23
    if-eqz v13, :cond_24

    add-int/lit8 v30, v30, 0x1

    aget v1, v2, v30

    invoke-virtual {v13, v0}, Lp/l;->a(F)F

    move-result v0

    add-float/2addr v0, v1

    aput v0, v2, v30

    :cond_24
    :goto_14
    add-int/lit8 v15, v32, 0x1

    move-object v14, v13

    move/from16 v0, v25

    move/from16 v7, v26

    move/from16 v1, v27

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    move-object/from16 v13, v31

    goto/16 :goto_e

    :cond_25
    move/from16 v27, v1

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    move-object/from16 v1, v23

    iget v0, v1, Lq/q;->k:I

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v11, v0, v10}, Lq/q;->a(Landroid/graphics/Canvas;IILq/n;)V

    const/16 v0, -0x55cd

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    const v0, -0x1f8a66

    move-object/from16 v3, v29

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v3, v28

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    const v0, -0xcc5600

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v0, v27

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v2, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, v1, Lq/q;->k:I

    invoke-virtual {v1, v2, v11, v0, v10}, Lq/q;->a(Landroid/graphics/Canvas;IILq/n;)V

    const/4 v0, 0x5

    if-ne v11, v0, :cond_2d

    iget-object v0, v1, Lq/q;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    :goto_15
    const/16 v3, 0x32

    if-gt v0, v3, :cond_2c

    int-to-float v4, v0

    int-to-float v3, v3

    div-float/2addr v4, v3

    const/4 v3, 0x0

    invoke-virtual {v10, v4, v3}, Lq/n;->b(F[F)F

    move-result v3

    iget-object v4, v10, Lq/n;->j:[Lcom/google/android/material/slider/h;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    float-to-double v5, v3

    iget-object v3, v10, Lq/n;->p:[D

    invoke-virtual {v4, v5, v6, v3}, Lcom/google/android/material/slider/h;->t0(D[D)V

    iget-object v3, v10, Lq/n;->o:[I

    iget-object v4, v10, Lq/n;->p:[D

    iget v5, v14, Lq/u;->f:F

    iget v6, v14, Lq/u;->g:F

    iget v7, v14, Lq/u;->h:F

    iget v8, v14, Lq/u;->i:F

    const/4 v9, 0x0

    :goto_16
    array-length v11, v3

    if-ge v9, v11, :cond_2a

    move-object v13, v10

    aget-wide v10, v4, v9

    double-to-float v10, v10

    aget v11, v3, v9

    const/4 v15, 0x1

    if-eq v11, v15, :cond_29

    const/4 v15, 0x2

    if-eq v11, v15, :cond_28

    const/4 v15, 0x3

    if-eq v11, v15, :cond_27

    const/4 v15, 0x4

    if-eq v11, v15, :cond_26

    goto :goto_17

    :cond_26
    move v8, v10

    goto :goto_17

    :cond_27
    move v7, v10

    goto :goto_17

    :cond_28
    move v6, v10

    goto :goto_17

    :cond_29
    move v5, v10

    :goto_17
    add-int/lit8 v9, v9, 0x1

    move-object v10, v13

    goto :goto_16

    :cond_2a
    move-object v13, v10

    iget-object v3, v14, Lq/u;->n:Lq/n;

    if-eqz v3, :cond_2b

    const/4 v3, 0x0

    float-to-double v3, v3

    float-to-double v9, v5

    float-to-double v5, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v17, v17, v9

    add-double v17, v17, v3

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v7, v11

    move-object/from16 v19, v13

    move-object v15, v14

    float-to-double v13, v11

    sub-double v13, v17, v13

    double-to-float v11, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v9

    sub-double/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v8, v5

    float-to-double v5, v5

    sub-double/2addr v3, v5

    double-to-float v6, v3

    move v5, v11

    goto :goto_18

    :cond_2b
    move-object/from16 v19, v13

    move-object v15, v14

    :goto_18
    add-float/2addr v7, v5

    add-float/2addr v8, v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    const/4 v3, 0x0

    add-float/2addr v5, v3

    add-float/2addr v6, v3

    add-float/2addr v7, v3

    add-float/2addr v8, v3

    iget-object v3, v1, Lq/q;->j:[F

    const/4 v4, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v6, v3, v4

    const/4 v4, 0x2

    aput v7, v3, v4

    const/4 v9, 0x3

    aput v6, v3, v9

    const/4 v10, 0x4

    aput v7, v3, v10

    const/4 v7, 0x5

    aput v8, v3, v7

    const/4 v7, 0x6

    aput v5, v3, v7

    const/4 v10, 0x7

    aput v8, v3, v10

    iget-object v8, v1, Lq/q;->d:Landroid/graphics/Path;

    invoke-virtual {v8, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, v1, Lq/q;->d:Landroid/graphics/Path;

    aget v4, v3, v4

    aget v6, v3, v9

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v1, Lq/q;->d:Landroid/graphics/Path;

    const/4 v5, 0x4

    aget v5, v3, v5

    const/4 v6, 0x5

    aget v6, v3, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v1, Lq/q;->d:Landroid/graphics/Path;

    aget v5, v3, v7

    aget v3, v3, v10

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, v1, Lq/q;->d:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    add-int/lit8 v0, v0, 0x1

    move-object v14, v15

    move-object/from16 v10, v19

    goto/16 :goto_15

    :cond_2c
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x44000000    # 512.0f

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, v1, Lq/q;->d:Landroid/graphics/Path;

    invoke-virtual {v2, v4, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v4, -0x40000000    # -2.0f

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v4, -0x10000

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v1, Lq/q;->d:Landroid/graphics/Path;

    invoke-virtual {v2, v4, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_19

    :cond_2d
    const/4 v0, 0x0

    const/4 v3, 0x1

    :goto_19
    move-object v6, v1

    move-object v7, v2

    move v4, v3

    goto :goto_1a

    :cond_2e
    move-object/from16 v2, p1

    move/from16 v24, v8

    move-object/from16 v1, v23

    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    :goto_1a
    move-object v3, v1

    move-object v1, v2

    move-object/from16 v5, v21

    move/from16 v9, v22

    move/from16 v8, v24

    move v2, v0

    move-object/from16 v0, p0

    goto/16 :goto_5

    :cond_2f
    move-object v2, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_30
    move-object/from16 v0, p0

    :goto_1b
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Ljava/util/ArrayList;

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1c

    :cond_31
    return-void
.end method

.method public final e(Landroid/view/View;II[II)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    if-eqz v5, :cond_14

    iget-boolean v6, v5, Lq/x;->o:Z

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    if-nez v6, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v8, -0x1

    if-eqz v6, :cond_2

    iget-object v6, v5, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz v6, :cond_2

    iget v6, v6, Landroidx/constraintlayout/motion/widget/d;->e:I

    if-eq v6, v8, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v9

    if-eq v9, v6, :cond_2

    return-void

    :cond_2
    iget-object v6, v4, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    const/4 v9, 0x0

    if-eqz v6, :cond_3

    iget-object v6, v6, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz v6, :cond_3

    iget-boolean v6, v6, Landroidx/constraintlayout/motion/widget/d;->u:Z

    goto :goto_0

    :cond_3
    move v6, v9

    :goto_0
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    if-eqz v6, :cond_6

    iget-object v6, v5, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz v6, :cond_4

    iget v6, v6, Landroidx/constraintlayout/motion/widget/d;->w:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_4

    move v8, v3

    :cond_4
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    cmpl-float v12, v6, v10

    if-eqz v12, :cond_5

    cmpl-float v6, v6, v11

    if-nez v6, :cond_6

    :cond_5
    invoke-virtual {v1, v8}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v6

    if-eqz v6, :cond_6

    return-void

    :cond_6
    iget-object v5, v5, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz v5, :cond_d

    iget v5, v5, Landroidx/constraintlayout/motion/widget/d;->w:I

    and-int/2addr v5, v7

    if-eqz v5, :cond_d

    int-to-float v5, v2

    int-to-float v6, v3

    iget-object v8, v4, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    if-eqz v8, :cond_a

    iget-object v8, v8, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz v8, :cond_a

    iget-object v12, v8, Landroidx/constraintlayout/motion/widget/d;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v15

    iget-object v13, v8, Landroidx/constraintlayout/motion/widget/d;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v14, v8, Landroidx/constraintlayout/motion/widget/d;->d:I

    iget v12, v8, Landroidx/constraintlayout/motion/widget/d;->h:F

    iget v10, v8, Landroidx/constraintlayout/motion/widget/d;->g:F

    iget-object v7, v8, Landroidx/constraintlayout/motion/widget/d;->n:[F

    move/from16 v16, v12

    move/from16 v17, v10

    move-object/from16 v18, v7

    invoke-virtual/range {v13 .. v18}, Landroidx/constraintlayout/motion/widget/MotionLayout;->w(IFFF[F)V

    iget v7, v8, Landroidx/constraintlayout/motion/widget/d;->k:F

    cmpl-float v10, v7, v11

    const v12, 0x33d6bf95    # 1.0E-7f

    iget-object v13, v8, Landroidx/constraintlayout/motion/widget/d;->n:[F

    if-eqz v10, :cond_8

    aget v6, v13, v9

    cmpl-float v6, v6, v11

    if-nez v6, :cond_7

    aput v12, v13, v9

    :cond_7
    mul-float/2addr v5, v7

    aget v6, v13, v9

    div-float/2addr v5, v6

    goto :goto_1

    :cond_8
    const/4 v5, 0x1

    aget v7, v13, v5

    cmpl-float v7, v7, v11

    if-nez v7, :cond_9

    aput v12, v13, v5

    :cond_9
    iget v7, v8, Landroidx/constraintlayout/motion/widget/d;->l:F

    mul-float/2addr v6, v7

    aget v7, v13, v5

    div-float v5, v6, v7

    goto :goto_1

    :cond_a
    move v5, v11

    :goto_1
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    cmpg-float v7, v6, v11

    if-gtz v7, :cond_b

    cmpg-float v7, v5, v11

    if-ltz v7, :cond_c

    :cond_b
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_d

    cmpl-float v5, v5, v11

    if-lez v5, :cond_d

    :cond_c
    invoke-virtual {v1, v9}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    new-instance v2, Landroidx/appcompat/widget/k;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0, v1}, Landroidx/appcompat/widget/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_d
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v5

    int-to-float v7, v2

    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->U:F

    int-to-float v8, v3

    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->V:F

    iget-wide v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:J

    sub-long v12, v5, v12

    long-to-double v12, v12

    const-wide v14, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v12, v14

    double-to-float v10, v12

    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a0:F

    iput-wide v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:J

    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    if-eqz v4, :cond_11

    iget-object v4, v4, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz v4, :cond_11

    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/d;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v6

    iget-boolean v10, v4, Landroidx/constraintlayout/motion/widget/d;->m:Z

    if-nez v10, :cond_e

    const/4 v10, 0x1

    iput-boolean v10, v4, Landroidx/constraintlayout/motion/widget/d;->m:Z

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_e
    iget-object v12, v4, Landroidx/constraintlayout/motion/widget/d;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v13, v4, Landroidx/constraintlayout/motion/widget/d;->d:I

    iget v15, v4, Landroidx/constraintlayout/motion/widget/d;->h:F

    iget v10, v4, Landroidx/constraintlayout/motion/widget/d;->g:F

    iget-object v14, v4, Landroidx/constraintlayout/motion/widget/d;->n:[F

    move-object/from16 v17, v14

    move v14, v6

    move/from16 v16, v10

    invoke-virtual/range {v12 .. v17}, Landroidx/constraintlayout/motion/widget/MotionLayout;->w(IFFF[F)V

    iget v10, v4, Landroidx/constraintlayout/motion/widget/d;->k:F

    iget-object v12, v4, Landroidx/constraintlayout/motion/widget/d;->n:[F

    aget v13, v12, v9

    mul-float/2addr v10, v13

    iget v13, v4, Landroidx/constraintlayout/motion/widget/d;->l:F

    const/4 v14, 0x1

    aget v15, v12, v14

    mul-float/2addr v13, v15

    add-float/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v14, v10

    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v10, v14, v16

    if-gez v10, :cond_f

    const v10, 0x3c23d70a    # 0.01f

    aput v10, v12, v9

    const/4 v13, 0x1

    aput v10, v12, v13

    :cond_f
    iget v10, v4, Landroidx/constraintlayout/motion/widget/d;->k:F

    cmpl-float v13, v10, v11

    if-eqz v13, :cond_10

    mul-float/2addr v7, v10

    aget v4, v12, v9

    div-float/2addr v7, v4

    goto :goto_2

    :cond_10
    iget v4, v4, Landroidx/constraintlayout/motion/widget/d;->l:F

    mul-float/2addr v8, v4

    const/4 v4, 0x1

    aget v7, v12, v4

    div-float v7, v8, v7

    :goto_2
    add-float/2addr v6, v7

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4, v11}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v6

    cmpl-float v6, v4, v6

    if-eqz v6, :cond_11

    invoke-virtual {v5, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_11
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_12

    aput v2, p4, v9

    const/4 v1, 0x1

    aput v3, p4, v1

    goto :goto_3

    :cond_12
    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->t(Z)V

    aget v2, p4, v9

    if-nez v2, :cond_13

    aget v2, p4, v1

    if-eqz v2, :cond_14

    :cond_13
    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Z

    :cond_14
    :goto_4
    return-void
.end method

.method public final f(Landroid/view/View;IIIII[I)V
    .locals 0

    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Z

    const/4 p6, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    aget p1, p7, p6

    add-int/2addr p1, p4

    aput p1, p7, p6

    const/4 p1, 0x1

    aget p2, p7, p1

    add-int/2addr p2, p5

    aput p2, p7, p1

    :cond_1
    iput-boolean p6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Z

    return-void
.end method

.method public getConstraintSetIds()[I
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/c;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getCurrentState()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    return v0
.end method

.method public getDefinedTransitions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lq/x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/c;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDesignTool()Lq/a;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:Lq/a;

    if-nez v0, :cond_0

    new-instance v0, Lq/a;

    invoke-direct {v0}, Lq/a;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:Lq/a;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:Lq/a;

    return-object v0
.end method

.method public getEndState()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    return v0
.end method

.method public getNanoTime()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgress()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    return v0
.end method

.method public getScene()Landroidx/constraintlayout/motion/widget/c;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    return-object v0
.end method

.method public getStartState()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    return v0
.end method

.method public getTargetPosition()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    return v0
.end method

.method public getTransitionState()Landroid/os/Bundle;
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/widget/b;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/b;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/b;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    iput v2, v0, Landroidx/constraintlayout/motion/widget/b;->d:I

    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    iput v2, v0, Landroidx/constraintlayout/motion/widget/b;->c:I

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getVelocity()F

    move-result v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/b;->b:F

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/b;->a:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "motion.progress"

    iget v3, v0, Landroidx/constraintlayout/motion/widget/b;->a:F

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "motion.velocity"

    iget v3, v0, Landroidx/constraintlayout/motion/widget/b;->b:F

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "motion.StartState"

    iget v3, v0, Landroidx/constraintlayout/motion/widget/b;->c:I

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "motion.EndState"

    iget v0, v0, Landroidx/constraintlayout/motion/widget/b;->d:I

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method public getTransitionTimeMs()J
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    const/high16 v1, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/c;->c()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getVelocity()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    return v0
.end method

.method public final i(Landroid/view/View;IIIII)V
    .locals 0

    return-void
.end method

.method public final isAttachedToWindow()Z
    .locals 1

    invoke-super {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    return v0
.end method

.method public final j(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz p1, :cond_1

    iget p1, p1, Landroidx/constraintlayout/motion/widget/d;->w:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final l(I)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Lq/r;

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 9

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-eqz v0, :cond_8

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/c;->b(I)Ls/n;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/c;->g:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v5, v1, Landroidx/constraintlayout/motion/widget/c;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    :goto_1
    if-lez v6, :cond_3

    if-ne v6, v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v7, -0x1

    if-gez v7, :cond_2

    :goto_2
    const/4 v5, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    move v7, v8

    goto :goto_1

    :cond_3
    move v5, v2

    :goto_3
    if-eqz v5, :cond_4

    const-string v1, "MotionScene"

    const-string v2, "Cannot be derived from yourself"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    invoke-virtual {v1, v4, p0}, Landroidx/constraintlayout/motion/widget/c;->m(ILandroidx/constraintlayout/motion/widget/MotionLayout;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_4
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_5

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Ls/n;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_7
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    :cond_8
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->A()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    if-eqz v0, :cond_a

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y0:Z

    if-eqz v1, :cond_9

    new-instance v0, Landroidx/activity/c;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroidx/activity/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/b;->a()V

    goto :goto_6

    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-eqz v0, :cond_b

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    if-eqz v0, :cond_b

    iget v0, v0, Lq/x;->n:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r(F)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w0:Ljava/lang/Runnable;

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_b
    :goto_6
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-eqz v1, :cond_2f

    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:Z

    if-nez v3, :cond_0

    goto/16 :goto_14

    :cond_0
    const/4 v3, -0x1

    const/4 v4, 0x1

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/c;->q:Landroidx/appcompat/widget/b0;

    if-eqz v1, :cond_2a

    iget-object v5, v1, Landroidx/appcompat/widget/b0;->a:Ljava/lang/Object;

    move-object v14, v5

    check-cast v14, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v14}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v15

    if-ne v15, v3, :cond_1

    goto/16 :goto_13

    :cond_1
    iget-object v5, v1, Landroidx/appcompat/widget/b0;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashSet;

    iget-object v6, v1, Landroidx/appcompat/widget/b0;->b:Ljava/lang/Object;

    if-nez v5, :cond_4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, v1, Landroidx/appcompat/widget/b0;->c:Ljava/lang/Object;

    move-object v5, v6

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lq/a0;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_2

    invoke-virtual {v14, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v7, v10}, Lq/a0;->a(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    iget-object v11, v1, Landroidx/appcompat/widget/b0;->c:Ljava/lang/Object;

    check-cast v11, Ljava/util/HashSet;

    invoke-virtual {v11, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    iget-object v5, v1, Landroidx/appcompat/widget/b0;->e:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    const/4 v9, 0x2

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, v1, Landroidx/appcompat/widget/b0;->e:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lq/z;

    if-eq v10, v4, :cond_6

    if-eq v10, v9, :cond_5

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_5
    iget-object v8, v7, Lq/z;->c:Lq/n;

    iget-object v8, v8, Lq/n;->b:Landroid/view/View;

    iget-object v3, v7, Lq/z;->l:Landroid/graphics/Rect;

    invoke-virtual {v8, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v8, v13

    float-to-int v2, v12

    invoke-virtual {v3, v8, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_7

    iget-boolean v2, v7, Lq/z;->h:Z

    if-nez v2, :cond_7

    invoke-virtual {v7}, Lq/z;->b()V

    goto :goto_2

    :cond_6
    iget-boolean v2, v7, Lq/z;->h:Z

    if-nez v2, :cond_7

    invoke-virtual {v7}, Lq/z;->b()V

    :cond_7
    :goto_2
    const/4 v3, -0x1

    goto :goto_1

    :cond_8
    if-eqz v10, :cond_9

    if-eq v10, v4, :cond_9

    goto/16 :goto_13

    :cond_9
    iget-object v2, v14, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-nez v2, :cond_a

    const/4 v2, 0x0

    goto :goto_3

    :cond_a
    invoke-virtual {v2, v15}, Landroidx/constraintlayout/motion/widget/c;->b(I)Ls/n;

    move-result-object v2

    :goto_3
    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lq/a0;

    iget v5, v8, Lq/a0;->b:I

    if-ne v5, v4, :cond_b

    if-nez v10, :cond_d

    goto :goto_5

    :cond_b
    if-ne v5, v9, :cond_c

    if-ne v10, v4, :cond_d

    goto :goto_5

    :cond_c
    const/4 v6, 0x3

    if-ne v5, v6, :cond_d

    if-nez v10, :cond_d

    :goto_5
    move v5, v4

    goto :goto_6

    :cond_d
    const/4 v5, 0x0

    :goto_6
    if-eqz v5, :cond_29

    iget-object v5, v1, Landroidx/appcompat/widget/b0;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v8, v5}, Lq/a0;->a(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {v5, v11}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v6, v13

    float-to-int v7, v12

    invoke-virtual {v11, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_28

    new-array v6, v4, [Landroid/view/View;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    iget-boolean v7, v8, Lq/a0;->c:Z

    if-eqz v7, :cond_f

    goto/16 :goto_11

    :cond_f
    iget v7, v8, Lq/a0;->e:I

    iget-object v3, v8, Lq/a0;->f:Lq/g;

    if-ne v7, v9, :cond_1b

    new-instance v7, Lq/n;

    invoke-direct {v7, v5}, Lq/n;-><init>(Landroid/view/View;)V

    iget-object v6, v7, Lq/n;->f:Lq/u;

    const/4 v9, 0x0

    iput v9, v6, Lq/u;->d:F

    iput v9, v6, Lq/u;->e:F

    iput-boolean v4, v7, Lq/n;->G:Z

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v4

    move/from16 v20, v10

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    move-object/from16 v21, v11

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v6, v9, v4, v10, v11}, Lq/u;->d(FFFF)V

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, v7, Lq/n;->g:Lq/u;

    invoke-virtual {v11, v4, v6, v9, v10}, Lq/u;->d(FFFF)V

    iget-object v4, v7, Lq/n;->h:Lq/l;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    iput v6, v4, Lq/l;->d:I

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_10

    const/4 v6, 0x0

    goto :goto_8

    :cond_10
    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v6

    :goto_8
    iput v6, v4, Lq/l;->b:F

    invoke-virtual {v5}, Landroid/view/View;->getElevation()F

    move-result v6

    iput v6, v4, Lq/l;->e:F

    invoke-virtual {v5}, Landroid/view/View;->getRotation()F

    move-result v6

    iput v6, v4, Lq/l;->f:F

    invoke-virtual {v5}, Landroid/view/View;->getRotationX()F

    move-result v6

    iput v6, v4, Lq/l;->g:F

    invoke-virtual {v5}, Landroid/view/View;->getRotationY()F

    move-result v6

    iput v6, v4, Lq/l;->h:F

    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v6

    iput v6, v4, Lq/l;->i:F

    invoke-virtual {v5}, Landroid/view/View;->getScaleY()F

    move-result v6

    iput v6, v4, Lq/l;->j:F

    invoke-virtual {v5}, Landroid/view/View;->getPivotX()F

    move-result v6

    iput v6, v4, Lq/l;->k:F

    invoke-virtual {v5}, Landroid/view/View;->getPivotY()F

    move-result v6

    iput v6, v4, Lq/l;->l:F

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v6

    iput v6, v4, Lq/l;->m:F

    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v6

    iput v6, v4, Lq/l;->n:F

    invoke-virtual {v5}, Landroid/view/View;->getTranslationZ()F

    move-result v6

    iput v6, v4, Lq/l;->o:F

    iget-object v4, v7, Lq/n;->i:Lq/l;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    iput v6, v4, Lq/l;->d:I

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_11

    const/4 v9, 0x0

    goto :goto_9

    :cond_11
    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v9

    :goto_9
    iput v9, v4, Lq/l;->b:F

    invoke-virtual {v5}, Landroid/view/View;->getElevation()F

    move-result v6

    iput v6, v4, Lq/l;->e:F

    invoke-virtual {v5}, Landroid/view/View;->getRotation()F

    move-result v6

    iput v6, v4, Lq/l;->f:F

    invoke-virtual {v5}, Landroid/view/View;->getRotationX()F

    move-result v6

    iput v6, v4, Lq/l;->g:F

    invoke-virtual {v5}, Landroid/view/View;->getRotationY()F

    move-result v6

    iput v6, v4, Lq/l;->h:F

    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v6

    iput v6, v4, Lq/l;->i:F

    invoke-virtual {v5}, Landroid/view/View;->getScaleY()F

    move-result v6

    iput v6, v4, Lq/l;->j:F

    invoke-virtual {v5}, Landroid/view/View;->getPivotX()F

    move-result v6

    iput v6, v4, Lq/l;->k:F

    invoke-virtual {v5}, Landroid/view/View;->getPivotY()F

    move-result v6

    iput v6, v4, Lq/l;->l:F

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v6

    iput v6, v4, Lq/l;->m:F

    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v6

    iput v6, v4, Lq/l;->n:F

    invoke-virtual {v5}, Landroid/view/View;->getTranslationZ()F

    move-result v5

    iput v5, v4, Lq/l;->o:F

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v3, v3, Lq/g;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_12

    iget-object v4, v7, Lq/n;->w:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_12
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-virtual {v7, v3, v4, v5, v6}, Lq/n;->h(IIJ)V

    new-instance v5, Lq/z;

    iget v3, v8, Lq/a0;->h:I

    iget v9, v8, Lq/a0;->i:I

    iget v10, v8, Lq/a0;->b:I

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v6, v8, Lq/a0;->l:I

    const/4 v11, -0x2

    if-eq v6, v11, :cond_1a

    const/4 v11, -0x1

    if-eq v6, v11, :cond_19

    if-eqz v6, :cond_18

    const/4 v4, 0x1

    if-eq v6, v4, :cond_17

    const/4 v11, 0x2

    if-eq v6, v11, :cond_16

    const/4 v4, 0x4

    if-eq v6, v4, :cond_15

    const/4 v4, 0x5

    if-eq v6, v4, :cond_14

    const/4 v4, 0x6

    if-eq v6, v4, :cond_13

    const/4 v4, 0x0

    goto :goto_a

    :cond_13
    new-instance v4, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    goto :goto_a

    :cond_14
    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    goto :goto_a

    :cond_15
    new-instance v4, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v4}, Landroid/view/animation/BounceInterpolator;-><init>()V

    goto :goto_a

    :cond_16
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_a

    :cond_17
    const/4 v11, 0x2

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_a

    :cond_18
    const/4 v11, 0x2

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_a

    :cond_19
    const/4 v11, 0x2

    iget-object v4, v8, Lq/a0;->m:Ljava/lang/String;

    invoke-static {v4}, Ll/e;->c(Ljava/lang/String;)Ll/e;

    move-result-object v4

    new-instance v6, Lq/v;

    const/4 v11, 0x1

    invoke-direct {v6, v8, v4, v11}, Lq/v;-><init>(Ljava/lang/Object;Ll/e;I)V

    move-object v11, v6

    goto :goto_b

    :cond_1a
    iget v6, v8, Lq/a0;->n:I

    invoke-static {v4, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    :goto_a
    move-object v11, v4

    :goto_b
    iget v4, v8, Lq/a0;->p:I

    iget v6, v8, Lq/a0;->q:I

    move/from16 v19, v6

    move-object v6, v1

    move-object/from16 v22, v1

    move-object v1, v8

    move v8, v3

    const/16 v18, 0x2

    move/from16 v23, v12

    move v12, v4

    move v4, v13

    move/from16 v13, v19

    invoke-direct/range {v5 .. v13}, Lq/z;-><init>(Landroidx/appcompat/widget/b0;Lq/n;IIILandroid/view/animation/Interpolator;II)V

    goto/16 :goto_12

    :cond_1b
    move-object/from16 v22, v1

    move-object v1, v8

    move/from16 v18, v9

    move/from16 v20, v10

    move-object/from16 v21, v11

    move/from16 v23, v12

    move v4, v13

    iget-object v5, v1, Lq/a0;->g:Ls/i;

    const/4 v8, 0x1

    if-ne v7, v8, :cond_20

    invoke-virtual {v14}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSetIds()[I

    move-result-object v7

    const/4 v8, 0x0

    :goto_c
    array-length v9, v7

    if-ge v8, v9, :cond_20

    aget v9, v7, v8

    if-ne v9, v15, :cond_1c

    goto :goto_e

    :cond_1c
    iget-object v10, v14, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-nez v10, :cond_1d

    const/4 v9, 0x0

    goto :goto_d

    :cond_1d
    invoke-virtual {v10, v9}, Landroidx/constraintlayout/motion/widget/c;->b(I)Ls/n;

    move-result-object v9

    :goto_d
    const/4 v10, 0x0

    aget-object v11, v6, v10

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Ls/n;->i(I)Ls/i;

    move-result-object v9

    if-eqz v5, :cond_1f

    iget-object v10, v5, Ls/i;->h:Ls/h;

    if-eqz v10, :cond_1e

    invoke-virtual {v10, v9}, Ls/h;->e(Ls/i;)V

    :cond_1e
    iget-object v9, v9, Ls/i;->g:Ljava/util/HashMap;

    iget-object v10, v5, Ls/i;->g:Ljava/util/HashMap;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1f
    :goto_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_20
    new-instance v7, Ls/n;

    invoke-direct {v7}, Ls/n;-><init>()V

    iget-object v8, v7, Ls/n;->f:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    iget-object v9, v2, Ls/n;->f:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    iget-object v11, v2, Ls/n;->f:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ls/i;

    if-nez v11, :cond_21

    goto :goto_f

    :cond_21
    invoke-virtual {v11}, Ls/i;->b()Ls/i;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_22
    const/4 v10, 0x0

    aget-object v8, v6, v10

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ls/n;->i(I)Ls/i;

    move-result-object v8

    if-eqz v5, :cond_24

    iget-object v9, v5, Ls/i;->h:Ls/h;

    if-eqz v9, :cond_23

    invoke-virtual {v9, v8}, Ls/h;->e(Ls/i;)V

    :cond_23
    iget-object v8, v8, Ls/i;->g:Ljava/util/HashMap;

    iget-object v5, v5, Ls/i;->g:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_24
    invoke-virtual {v14, v15, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->H(ILs/n;)V

    sget v5, Landroidx/constraintlayout/widget/R$id;->view_transition:I

    invoke-virtual {v14, v5, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->H(ILs/n;)V

    sget v5, Landroidx/constraintlayout/widget/R$id;->view_transition:I

    invoke-virtual {v14, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->D(I)V

    new-instance v5, Lq/x;

    iget-object v7, v14, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    sget v8, Landroidx/constraintlayout/widget/R$id;->view_transition:I

    invoke-direct {v5, v7, v8, v15}, Lq/x;-><init>(Landroidx/constraintlayout/motion/widget/c;II)V

    const/4 v7, 0x0

    aget-object v8, v6, v7

    iget v7, v1, Lq/a0;->h:I

    const/4 v9, -0x1

    if-eq v7, v9, :cond_25

    const/16 v9, 0x8

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v5, Lq/x;->h:I

    :cond_25
    iget v7, v1, Lq/a0;->d:I

    iput v7, v5, Lq/x;->p:I

    iget v7, v1, Lq/a0;->l:I

    iget-object v9, v1, Lq/a0;->m:Ljava/lang/String;

    iget v10, v1, Lq/a0;->n:I

    iput v7, v5, Lq/x;->e:I

    iput-object v9, v5, Lq/x;->f:Ljava/lang/String;

    iput v10, v5, Lq/x;->g:I

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v7

    if-eqz v3, :cond_27

    iget-object v3, v3, Lq/g;->a:Ljava/util/HashMap;

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    new-instance v8, Lq/g;

    invoke-direct {v8}, Lq/g;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lq/c;

    invoke-virtual {v9}, Lq/c;->b()Lq/c;

    move-result-object v9

    iput v7, v9, Lq/c;->b:I

    invoke-virtual {v8, v9}, Lq/g;->b(Lq/c;)V

    goto :goto_10

    :cond_26
    iget-object v3, v5, Lq/x;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    invoke-virtual {v14, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Lq/x;)V

    new-instance v3, Lq/y;

    invoke-direct {v3, v1, v6}, Lq/y;-><init>(Lq/a0;[Landroid/view/View;)V

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v14, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r(F)V

    iput-object v3, v14, Landroidx/constraintlayout/motion/widget/MotionLayout;->w0:Ljava/lang/Runnable;

    goto :goto_12

    :cond_28
    :goto_11
    move-object/from16 v22, v1

    move-object v1, v8

    move/from16 v18, v9

    move/from16 v20, v10

    move-object/from16 v21, v11

    move/from16 v23, v12

    move v4, v13

    :goto_12
    move-object v8, v1

    move v13, v4

    move/from16 v9, v18

    move/from16 v10, v20

    move-object/from16 v11, v21

    move-object/from16 v1, v22

    move/from16 v12, v23

    const/4 v4, 0x1

    goto/16 :goto_7

    :cond_29
    move-object/from16 v22, v1

    move/from16 v18, v9

    move/from16 v20, v10

    move-object/from16 v21, v11

    move/from16 v23, v12

    move v4, v13

    move v13, v4

    move/from16 v9, v18

    move/from16 v10, v20

    move-object/from16 v11, v21

    move-object/from16 v1, v22

    move/from16 v12, v23

    const/4 v4, 0x1

    goto/16 :goto_4

    :cond_2a
    :goto_13
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    if-eqz v1, :cond_2e

    iget-boolean v2, v1, Lq/x;->o:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_2e

    iget-object v1, v1, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz v1, :cond_2e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2b

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroidx/constraintlayout/motion/widget/d;->b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_2b

    const/4 v2, 0x0

    return v2

    :cond_2b
    iget v1, v1, Landroidx/constraintlayout/motion/widget/d;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2e

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D0:Landroid/view/View;

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v1, :cond_2d

    :cond_2c
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D0:Landroid/view/View;

    :cond_2d
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D0:Landroid/view/View;

    if-eqz v1, :cond_2e

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D0:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D0:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D0:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D0:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D0:Landroid/view/View;

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v4, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->y(FFLandroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_2e
    const/4 v1, 0x0

    return v1

    :cond_2f
    :goto_14
    const/4 v1, 0x0

    return v1
.end method

.method public final onLayout(ZIIII)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u0:Z

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-nez v2, :cond_0

    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u0:Z

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    :try_start_1
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:I

    if-ne p1, p4, :cond_1

    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    if-eq p1, p5, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->C()V

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->t(Z)V

    :cond_2
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:I

    iput p5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u0:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u0:Z

    throw p1
.end method

.method public final onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-nez v3, :cond_0

    invoke-super/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    return-void

    :cond_0
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v1, :cond_2

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:I

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v4

    :goto_1
    iget-boolean v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B0:Z

    if-eqz v6, :cond_3

    iput-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B0:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->A()V

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->B()V

    move v3, v4

    :cond_3
    iget-boolean v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    if-eqz v6, :cond_4

    move v3, v4

    :cond_4
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:I

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/c;->h()I

    move-result v6

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    const/4 v8, -0x1

    if-nez v7, :cond_5

    move v7, v8

    goto :goto_2

    :cond_5
    iget v7, v7, Lq/x;->c:I

    :goto_2
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A0:Lq/r;

    if-nez v3, :cond_8

    iget v10, v9, Lq/r;->b:I

    if-ne v6, v10, :cond_7

    iget v10, v9, Lq/r;->c:I

    if-eq v7, v10, :cond_6

    goto :goto_3

    :cond_6
    move v10, v5

    goto :goto_4

    :cond_7
    :goto_3
    move v10, v4

    :goto_4
    if-eqz v10, :cond_9

    :cond_8
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    if-eq v10, v8, :cond_9

    invoke-super/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/motion/widget/c;->b(I)Ls/n;

    move-result-object v1

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v2, v7}, Landroidx/constraintlayout/motion/widget/c;->b(I)Ls/n;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lq/r;->e(Ls/n;Ls/n;)V

    invoke-virtual {v9}, Lq/r;->g()V

    iput v6, v9, Lq/r;->b:I

    iput v7, v9, Lq/r;->c:I

    move v1, v5

    goto :goto_5

    :cond_9
    if-eqz v3, :cond_a

    invoke-super/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    :cond_a
    move v1, v4

    :goto_5
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:Z

    if-nez v2, :cond_b

    if-eqz v1, :cond_10

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lm/g;

    invoke-virtual {v1}, Lm/f;->s()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v1}, Lm/f;->m()I

    move-result v1

    add-int/2addr v1, v2

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q0:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_c

    if-nez v2, :cond_d

    :cond_c
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:I

    int-to-float v6, v2

    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:F

    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o0:I

    sub-int/2addr v8, v2

    int-to-float v2, v8

    mul-float/2addr v7, v2

    add-float/2addr v7, v6

    float-to-int v6, v7

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_d
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:I

    if-eq v2, v3, :cond_e

    if-nez v2, :cond_f

    :cond_e
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n0:I

    int-to-float v2, v1

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:F

    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p0:I

    sub-int/2addr v7, v1

    int-to-float v1, v7

    mul-float/2addr v3, v1

    add-float/2addr v3, v2

    float-to-int v1, v3

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_f
    invoke-virtual {v0, v6, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_10
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v2

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Lq/o;

    instance-of v7, v6, Lp/b;

    const v8, 0x3089705f    # 1.0E-9f

    const/4 v9, 0x0

    if-nez v7, :cond_11

    iget-wide v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:J

    sub-long v10, v2, v10

    long-to-float v7, v10

    mul-float/2addr v7, v1

    mul-float/2addr v7, v8

    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    div-float/2addr v7, v10

    goto :goto_6

    :cond_11
    move v7, v9

    :goto_6
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    add-float/2addr v10, v7

    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:Z

    if-eqz v7, :cond_12

    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    :cond_12
    cmpl-float v7, v1, v9

    if-lez v7, :cond_13

    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    cmpl-float v11, v10, v11

    if-gez v11, :cond_14

    :cond_13
    cmpg-float v11, v1, v9

    if-gtz v11, :cond_15

    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    cmpg-float v11, v10, v11

    if-gtz v11, :cond_15

    :cond_14
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    goto :goto_7

    :cond_15
    move v4, v5

    :goto_7
    if-eqz v6, :cond_17

    if-nez v4, :cond_17

    iget-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    if-eqz v4, :cond_16

    iget-wide v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:J

    sub-long/2addr v2, v10

    long-to-float v2, v2

    mul-float/2addr v2, v8

    invoke-interface {v6, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v10

    goto :goto_8

    :cond_16
    invoke-interface {v6, v10}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v10

    :cond_17
    :goto_8
    if-lez v7, :cond_18

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    cmpl-float v2, v10, v2

    if-gez v2, :cond_19

    :cond_18
    cmpg-float v1, v1, v9

    if-gtz v1, :cond_1a

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    cmpg-float v1, v10, v1

    if-gtz v1, :cond_1a

    :cond_19
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    :cond_1a
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v2

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Landroid/view/animation/Interpolator;

    if-nez v4, :cond_1b

    goto :goto_9

    :cond_1b
    invoke-interface {v4, v10}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v10

    :goto_9
    if-ge v5, v1, :cond_1d

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/HashMap;

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lq/n;

    if-eqz v11, :cond_1c

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Landroidx/appcompat/view/menu/i;

    move v12, v10

    move-wide v13, v2

    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v16}, Lq/n;->e(FJLandroid/view/View;Landroidx/appcompat/view/menu/i;)Z

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_1d
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:Z

    if-eqz v1, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_1e
    return-void
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 1

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->k()Z

    move-result v0

    iput-boolean v0, p1, Landroidx/constraintlayout/motion/widget/c;->p:Z

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/d;->c(Z)V

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-eqz v2, :cond_65

    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:Z

    if-eqz v3, :cond_65

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/c;->o()Z

    move-result v2

    if-eqz v2, :cond_65

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget-boolean v3, v3, Lq/x;->o:Z

    xor-int/2addr v3, v4

    if-nez v3, :cond_0

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v3

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/c;->o:Lq/s;

    iget-object v7, v2, Landroidx/constraintlayout/motion/widget/c;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-nez v6, :cond_1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lq/s;->b:Lq/s;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, v6, Lq/s;->a:Landroid/view/VelocityTracker;

    iput-object v6, v2, Landroidx/constraintlayout/motion/widget/c;->o:Lq/s;

    :cond_1
    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/c;->o:Lq/s;

    iget-object v6, v6, Lq/s;->a:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_2

    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_2
    const/4 v6, 0x2

    const/4 v9, -0x1

    if-eq v3, v9, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    if-eqz v12, :cond_16

    if-eq v12, v6, :cond_3

    goto/16 :goto_c

    :cond_3
    iget-boolean v12, v2, Landroidx/constraintlayout/motion/widget/c;->m:Z

    if-eqz v12, :cond_4

    goto/16 :goto_c

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    iget v13, v2, Landroidx/constraintlayout/motion/widget/c;->s:F

    sub-float/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    iget v14, v2, Landroidx/constraintlayout/motion/widget/c;->r:F

    sub-float/2addr v13, v14

    float-to-double v14, v13

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_5

    float-to-double v14, v12

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_1a

    :cond_5
    iget-object v14, v2, Landroidx/constraintlayout/motion/widget/c;->l:Landroid/view/MotionEvent;

    if-nez v14, :cond_6

    goto/16 :goto_d

    :cond_6
    if-eq v3, v9, :cond_14

    iget-object v15, v2, Landroidx/constraintlayout/motion/widget/c;->b:Ls/u;

    if-eqz v15, :cond_7

    invoke-virtual {v15, v3}, Ls/u;->a(I)I

    move-result v15

    if-eq v15, v9, :cond_7

    goto :goto_0

    :cond_7
    move v15, v3

    :goto_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v2, Landroidx/constraintlayout/motion/widget/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v6, v18

    check-cast v6, Lq/x;

    iget v4, v6, Lq/x;->d:I

    if-eq v4, v15, :cond_8

    iget v4, v6, Lq/x;->c:I

    if-ne v4, v15, :cond_9

    :cond_8
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const/4 v4, 0x1

    const/4 v6, 0x2

    goto :goto_1

    :cond_a
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lq/x;

    iget-boolean v8, v15, Lq/x;->o:Z

    if-eqz v8, :cond_b

    goto/16 :goto_6

    :cond_b
    iget-object v8, v15, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz v8, :cond_11

    iget-boolean v10, v2, Landroidx/constraintlayout/motion/widget/c;->p:Z

    invoke-virtual {v8, v10}, Landroidx/constraintlayout/motion/widget/d;->c(Z)V

    iget-object v8, v15, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    invoke-virtual {v8, v7, v4}, Landroidx/constraintlayout/motion/widget/d;->b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v8

    if-eqz v8, :cond_c

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    move-object/from16 v20, v6

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v8, v10, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_3

    :cond_c
    move-object/from16 v20, v6

    :cond_d
    iget-object v6, v15, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    invoke-virtual {v6, v7, v4}, Landroidx/constraintlayout/motion/widget/d;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {v6, v8, v10}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-nez v6, :cond_e

    :goto_3
    move-object/from16 v21, v4

    move-object v6, v5

    move-object/from16 v23, v11

    move/from16 v22, v12

    move v8, v13

    move-object/from16 v24, v14

    goto/16 :goto_7

    :cond_e
    iget-object v6, v15, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    iget v8, v6, Landroidx/constraintlayout/motion/widget/d;->k:F

    mul-float/2addr v8, v13

    iget v10, v6, Landroidx/constraintlayout/motion/widget/d;->l:F

    mul-float/2addr v10, v12

    add-float/2addr v10, v8

    iget-boolean v6, v6, Landroidx/constraintlayout/motion/widget/d;->j:Z

    if-eqz v6, :cond_f

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v8, v15, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v6, v8

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    move-object/from16 v21, v4

    iget-object v4, v15, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-float/2addr v10, v8

    add-float v4, v13, v6

    add-float v8, v12, v10

    move-object/from16 v23, v11

    move/from16 v22, v12

    float-to-double v11, v8

    move v8, v13

    move-object/from16 v24, v14

    float-to-double v13, v4

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    float-to-double v13, v6

    move-object v6, v5

    float-to-double v4, v10

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    sub-double/2addr v11, v4

    double-to-float v4, v11

    const/high16 v5, 0x41200000    # 10.0f

    mul-float v10, v4, v5

    goto :goto_4

    :cond_f
    move-object/from16 v21, v4

    move-object v6, v5

    move-object/from16 v23, v11

    move/from16 v22, v12

    move v8, v13

    move-object/from16 v24, v14

    :goto_4
    iget v4, v15, Lq/x;->c:I

    if-ne v4, v3, :cond_10

    const/high16 v4, -0x40800000    # -1.0f

    goto :goto_5

    :cond_10
    const v4, 0x3f8ccccd    # 1.1f

    :goto_5
    mul-float/2addr v4, v10

    cmpl-float v5, v4, v9

    if-lez v5, :cond_12

    move v9, v4

    move-object v11, v15

    goto :goto_8

    :cond_11
    :goto_6
    move-object/from16 v21, v4

    move-object/from16 v20, v6

    move-object/from16 v23, v11

    move/from16 v22, v12

    move v8, v13

    move-object/from16 v24, v14

    move-object v6, v5

    :cond_12
    :goto_7
    move-object/from16 v11, v23

    :goto_8
    move-object v5, v6

    move v13, v8

    move-object/from16 v6, v20

    move-object/from16 v4, v21

    move/from16 v12, v22

    move-object/from16 v14, v24

    goto/16 :goto_2

    :cond_13
    move-object v6, v5

    move-object/from16 v23, v11

    goto :goto_9

    :cond_14
    move-object v6, v5

    iget-object v11, v2, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    :goto_9
    if-eqz v11, :cond_19

    invoke-virtual {v0, v11}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Lq/x;)V

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    iget-object v3, v3, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    invoke-virtual {v3, v7, v6}, Landroidx/constraintlayout/motion/widget/d;->b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_15

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/c;->l:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, v2, Landroidx/constraintlayout/motion/widget/c;->l:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_15

    const/4 v3, 0x1

    goto :goto_a

    :cond_15
    const/4 v3, 0x0

    :goto_a
    iput-boolean v3, v2, Landroidx/constraintlayout/motion/widget/c;->n:Z

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    iget-object v3, v3, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    iget v4, v2, Landroidx/constraintlayout/motion/widget/c;->r:F

    iget v5, v2, Landroidx/constraintlayout/motion/widget/c;->s:F

    iput v4, v3, Landroidx/constraintlayout/motion/widget/d;->p:F

    iput v5, v3, Landroidx/constraintlayout/motion/widget/d;->q:F

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/motion/widget/d;->m:Z

    goto :goto_c

    :cond_16
    move-object v6, v5

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/motion/widget/c;->r:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/motion/widget/c;->s:F

    iput-object v1, v2, Landroidx/constraintlayout/motion/widget/c;->l:Landroid/view/MotionEvent;

    iput-boolean v4, v2, Landroidx/constraintlayout/motion/widget/c;->m:Z

    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    iget-object v1, v1, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz v1, :cond_1a

    invoke-virtual {v1, v7, v6}, Landroidx/constraintlayout/motion/widget/d;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/c;->l:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/c;->l:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x0

    iput-object v1, v2, Landroidx/constraintlayout/motion/widget/c;->l:Landroid/view/MotionEvent;

    const/4 v1, 0x1

    iput-boolean v1, v2, Landroidx/constraintlayout/motion/widget/c;->m:Z

    goto :goto_d

    :cond_17
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    iget-object v1, v1, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    invoke-virtual {v1, v7, v6}, Landroidx/constraintlayout/motion/widget/d;->b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/c;->l:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/c;->l:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x1

    iput-boolean v1, v2, Landroidx/constraintlayout/motion/widget/c;->n:Z

    goto :goto_b

    :cond_18
    const/4 v1, 0x0

    iput-boolean v1, v2, Landroidx/constraintlayout/motion/widget/c;->n:Z

    :goto_b
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    iget-object v1, v1, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    iget v3, v2, Landroidx/constraintlayout/motion/widget/c;->r:F

    iget v2, v2, Landroidx/constraintlayout/motion/widget/c;->s:F

    iput v3, v1, Landroidx/constraintlayout/motion/widget/d;->p:F

    iput v2, v1, Landroidx/constraintlayout/motion/widget/d;->q:F

    goto :goto_d

    :cond_19
    :goto_c
    iget-boolean v3, v2, Landroidx/constraintlayout/motion/widget/c;->m:Z

    if-eqz v3, :cond_1b

    :cond_1a
    :goto_d
    move-object v3, v0

    const/4 v0, 0x0

    goto/16 :goto_2b

    :cond_1b
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    if-eqz v3, :cond_3e

    iget-object v3, v3, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz v3, :cond_3e

    iget-boolean v4, v2, Landroidx/constraintlayout/motion/widget/c;->n:Z

    if-nez v4, :cond_3e

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/c;->o:Lq/s;

    iget-boolean v5, v3, Landroidx/constraintlayout/motion/widget/d;->j:Z

    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/d;->n:[F

    iget-object v12, v3, Landroidx/constraintlayout/motion/widget/d;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v5, :cond_3f

    iget-object v5, v4, Lq/s;->a:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_1c

    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eqz v5, :cond_3c

    const/high16 v22, 0x43b40000    # 360.0f

    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/d;->o:[I

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x1

    if-eq v5, v8, :cond_2c

    const/4 v8, 0x2

    if-eq v5, v8, :cond_1d

    goto/16 :goto_1a

    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    iget v13, v3, Landroidx/constraintlayout/motion/widget/d;->i:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_1e

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v12, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v8, 0x0

    aget v13, v6, v8

    int-to-float v8, v13

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v14

    add-int/2addr v14, v13

    int-to-float v13, v14

    div-float/2addr v13, v7

    add-float/2addr v8, v13

    const/4 v13, 0x1

    aget v6, v6, v13

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v13

    int-to-float v5, v5

    div-float/2addr v5, v7

    add-float/2addr v5, v6

    move/from16 v33, v8

    move v8, v5

    move/from16 v5, v33

    goto :goto_e

    :cond_1e
    iget v13, v3, Landroidx/constraintlayout/motion/widget/d;->d:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_20

    iget-object v14, v12, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/HashMap;

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lq/n;

    iget-object v13, v13, Lq/n;->f:Lq/u;

    iget v13, v13, Lq/u;->l:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_1f

    const-string v6, "TouchResponse"

    const-string v7, "could not find view to animate to"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_1f
    invoke-virtual {v12, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v5, 0x0

    aget v8, v6, v5

    int-to-float v5, v8

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v14

    add-int/2addr v14, v8

    int-to-float v8, v14

    div-float/2addr v8, v7

    add-float/2addr v5, v8

    const/4 v8, 0x1

    aget v6, v6, v8

    int-to-float v6, v6

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v8

    int-to-float v8, v13

    div-float/2addr v8, v7

    add-float/2addr v8, v6

    :cond_20
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    sub-float/2addr v6, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    sub-float/2addr v7, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    sub-float/2addr v13, v8

    float-to-double v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    sub-float v15, v19, v5

    float-to-double v9, v15

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    iget v13, v3, Landroidx/constraintlayout/motion/widget/d;->q:F

    sub-float/2addr v13, v8

    float-to-double v13, v13

    iget v8, v3, Landroidx/constraintlayout/motion/widget/d;->p:F

    sub-float/2addr v8, v5

    float-to-double v0, v8

    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    sub-double v0, v9, v0

    const-wide v13, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v13

    const-wide v13, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v13

    double-to-float v0, v0

    const/high16 v1, 0x43a50000    # 330.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_21

    sub-float v0, v0, v22

    goto :goto_f

    :cond_21
    const/high16 v1, -0x3c5b0000    # -330.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_22

    add-float v0, v0, v22

    :cond_22
    :goto_f
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v13, v1

    const-wide v20, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v1, v13, v20

    if-gtz v1, :cond_23

    iget-boolean v1, v3, Landroidx/constraintlayout/motion/widget/d;->m:Z

    if-eqz v1, :cond_3d

    :cond_23
    invoke-virtual {v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v1

    iget-boolean v5, v3, Landroidx/constraintlayout/motion/widget/d;->m:Z

    if-nez v5, :cond_24

    const/4 v5, 0x1

    iput-boolean v5, v3, Landroidx/constraintlayout/motion/widget/d;->m:Z

    invoke-virtual {v12, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_24
    iget v5, v3, Landroidx/constraintlayout/motion/widget/d;->d:I

    const/4 v8, -0x1

    if-eq v5, v8, :cond_25

    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/d;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v13, v3, Landroidx/constraintlayout/motion/widget/d;->h:F

    iget v14, v3, Landroidx/constraintlayout/motion/widget/d;->g:F

    iget-object v15, v3, Landroidx/constraintlayout/motion/widget/d;->n:[F

    move-object/from16 v25, v8

    move/from16 v26, v5

    move/from16 v27, v1

    move/from16 v28, v13

    move/from16 v29, v14

    move-object/from16 v30, v15

    invoke-virtual/range {v25 .. v30}, Landroidx/constraintlayout/motion/widget/MotionLayout;->w(IFFF[F)V

    const/4 v5, 0x1

    aget v8, v11, v5

    float-to-double v13, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    double-to-float v8, v13

    aput v8, v11, v5

    goto :goto_10

    :cond_25
    const/4 v5, 0x1

    aput v22, v11, v5

    :goto_10
    iget v8, v3, Landroidx/constraintlayout/motion/widget/d;->v:F

    mul-float/2addr v0, v8

    aget v8, v11, v5

    div-float/2addr v0, v8

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v5, 0x0

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v8

    cmpl-float v11, v0, v8

    if-eqz v11, :cond_2b

    cmpl-float v11, v8, v5

    if-eqz v11, :cond_26

    cmpl-float v1, v8, v1

    if-nez v1, :cond_27

    :cond_26
    invoke-virtual {v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->s()V

    :cond_27
    invoke-virtual {v12, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    iget-object v0, v4, Lq/s;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_28

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    :cond_28
    iget-object v0, v4, Lq/s;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_11

    :cond_29
    const/4 v0, 0x0

    :goto_11
    iget-object v1, v4, Lq/s;->a:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v11

    goto :goto_12

    :cond_2a
    const/4 v11, 0x0

    :goto_12
    float-to-double v4, v11

    float-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v13

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    sub-double/2addr v0, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v13

    float-to-double v4, v6

    float-to-double v6, v7

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    div-double/2addr v0, v4

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, v12, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    goto :goto_13

    :cond_2b
    move v0, v5

    iput v0, v12, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, v3, Landroidx/constraintlayout/motion/widget/d;->p:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, v3, Landroidx/constraintlayout/motion/widget/d;->q:F

    goto/16 :goto_1a

    :cond_2c
    const/4 v0, 0x0

    iput-boolean v0, v3, Landroidx/constraintlayout/motion/widget/d;->m:Z

    iget-object v0, v4, Lq/s;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2d

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    :cond_2d
    iget-object v0, v4, Lq/s;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_14

    :cond_2e
    const/4 v0, 0x0

    :goto_14
    iget-object v1, v4, Lq/s;->a:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    goto :goto_15

    :cond_2f
    const/4 v1, 0x0

    :goto_15
    invoke-virtual {v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v4

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    iget v9, v3, Landroidx/constraintlayout/motion/widget/d;->i:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_30

    invoke-virtual {v12, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v12, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v8, 0x0

    aget v9, v6, v8

    int-to-float v8, v9

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v10

    add-int/2addr v10, v9

    int-to-float v9, v10

    div-float/2addr v9, v7

    add-float/2addr v9, v8

    const/4 v8, 0x1

    aget v6, v6, v8

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    goto :goto_16

    :cond_30
    iget v9, v3, Landroidx/constraintlayout/motion/widget/d;->d:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_31

    iget-object v5, v12, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/HashMap;

    invoke-virtual {v12, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq/n;

    iget-object v5, v5, Lq/n;->f:Lq/u;

    iget v5, v5, Lq/u;->l:I

    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v12, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v8, 0x0

    aget v9, v6, v8

    int-to-float v8, v9

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v10

    add-int/2addr v10, v9

    int-to-float v9, v10

    div-float/2addr v9, v7

    add-float/2addr v9, v8

    const/4 v8, 0x1

    aget v6, v6, v8

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    :goto_16
    add-int/2addr v5, v8

    int-to-float v5, v5

    div-float/2addr v5, v7

    add-float v8, v5, v6

    move v5, v9

    :cond_31
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    sub-float/2addr v6, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    sub-float/2addr v5, v8

    float-to-double v7, v5

    float-to-double v9, v6

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    iget v9, v3, Landroidx/constraintlayout/motion/widget/d;->d:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_32

    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/d;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v14, v3, Landroidx/constraintlayout/motion/widget/d;->h:F

    iget v15, v3, Landroidx/constraintlayout/motion/widget/d;->g:F

    iget-object v13, v3, Landroidx/constraintlayout/motion/widget/d;->n:[F

    move-object/from16 v25, v10

    move/from16 v26, v9

    move/from16 v27, v4

    move/from16 v28, v14

    move/from16 v29, v15

    move-object/from16 v30, v13

    invoke-virtual/range {v25 .. v30}, Landroidx/constraintlayout/motion/widget/MotionLayout;->w(IFFF[F)V

    const/4 v9, 0x1

    aget v10, v11, v9

    float-to-double v13, v10

    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    double-to-float v10, v13

    aput v10, v11, v9

    goto :goto_17

    :cond_32
    const/4 v9, 0x1

    aput v22, v11, v9

    :goto_17
    add-float/2addr v1, v5

    float-to-double v9, v1

    add-float/2addr v0, v6

    float-to-double v0, v0

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    sub-double/2addr v0, v7

    double-to-float v0, v0

    const/high16 v1, 0x427a0000    # 62.5f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_33

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v13, v0, v1

    iget v1, v3, Landroidx/constraintlayout/motion/widget/d;->v:F

    mul-float/2addr v13, v1

    const/4 v1, 0x1

    aget v5, v11, v1

    div-float/2addr v13, v5

    add-float/2addr v13, v4

    goto :goto_18

    :cond_33
    move v13, v4

    :goto_18
    const/4 v1, 0x0

    cmpl-float v5, v13, v1

    if-eqz v5, :cond_3a

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v5, v13, v1

    if-eqz v5, :cond_3a

    iget v1, v3, Landroidx/constraintlayout/motion/widget/d;->c:I

    const/4 v5, 0x3

    if-eq v1, v5, :cond_3a

    iget v5, v3, Landroidx/constraintlayout/motion/widget/d;->v:F

    mul-float/2addr v0, v5

    const/4 v5, 0x1

    aget v6, v11, v5

    div-float/2addr v0, v6

    float-to-double v5, v13

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    cmpg-double v5, v5, v7

    if-gez v5, :cond_34

    const/4 v5, 0x0

    goto :goto_19

    :cond_34
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_19
    const/4 v6, 0x6

    if-ne v1, v6, :cond_36

    add-float v1, v4, v0

    const/4 v5, 0x0

    cmpg-float v1, v1, v5

    if-gez v1, :cond_35

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :cond_35
    const/high16 v5, 0x3f800000    # 1.0f

    :cond_36
    iget v1, v3, Landroidx/constraintlayout/motion/widget/d;->c:I

    const/4 v6, 0x7

    if-ne v1, v6, :cond_38

    add-float v1, v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v5

    if-lez v1, :cond_37

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    neg-float v0, v0

    :cond_37
    const/4 v5, 0x0

    :cond_38
    iget v1, v3, Landroidx/constraintlayout/motion/widget/d;->c:I

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v0, v3

    invoke-virtual {v12, v5, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->F(FFI)V

    const/4 v0, 0x0

    cmpl-float v0, v0, v4

    if-gez v0, :cond_39

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_3d

    :cond_39
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v12, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_1a

    :cond_3a
    const/4 v0, 0x0

    cmpl-float v0, v0, v13

    if-gez v0, :cond_3b

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v13

    if-gtz v0, :cond_3d

    :cond_3b
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v12, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_1a

    :cond_3c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, v3, Landroidx/constraintlayout/motion/widget/d;->p:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, v3, Landroidx/constraintlayout/motion/widget/d;->q:F

    const/4 v0, 0x0

    iput-boolean v0, v3, Landroidx/constraintlayout/motion/widget/d;->m:Z

    :cond_3d
    :goto_1a
    move-object/from16 v1, p1

    :cond_3e
    :goto_1b
    const/4 v0, 0x0

    goto/16 :goto_29

    :cond_3f
    iget-object v0, v4, Lq/s;->a:Landroid/view/VelocityTracker;

    move-object/from16 v1, p1

    if-eqz v0, :cond_40

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_40
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_5f

    const/4 v5, 0x1

    if-eq v0, v5, :cond_50

    const/4 v5, 0x2

    if-eq v0, v5, :cond_41

    goto :goto_1b

    :cond_41
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v5, v3, Landroidx/constraintlayout/motion/widget/d;->q:F

    sub-float/2addr v0, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget v6, v3, Landroidx/constraintlayout/motion/widget/d;->p:F

    sub-float/2addr v5, v6

    iget v6, v3, Landroidx/constraintlayout/motion/widget/d;->k:F

    mul-float/2addr v6, v5

    iget v7, v3, Landroidx/constraintlayout/motion/widget/d;->l:F

    mul-float/2addr v7, v0

    add-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, v3, Landroidx/constraintlayout/motion/widget/d;->x:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_42

    iget-boolean v6, v3, Landroidx/constraintlayout/motion/widget/d;->m:Z

    if-eqz v6, :cond_3e

    :cond_42
    invoke-virtual {v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v6

    iget-boolean v7, v3, Landroidx/constraintlayout/motion/widget/d;->m:Z

    if-nez v7, :cond_43

    const/4 v7, 0x1

    iput-boolean v7, v3, Landroidx/constraintlayout/motion/widget/d;->m:Z

    invoke-virtual {v12, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_43
    iget v7, v3, Landroidx/constraintlayout/motion/widget/d;->d:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_44

    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/d;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v9, v3, Landroidx/constraintlayout/motion/widget/d;->h:F

    iget v10, v3, Landroidx/constraintlayout/motion/widget/d;->g:F

    iget-object v13, v3, Landroidx/constraintlayout/motion/widget/d;->n:[F

    move-object/from16 v27, v8

    move/from16 v28, v7

    move/from16 v29, v6

    move/from16 v30, v9

    move/from16 v31, v10

    move-object/from16 v32, v13

    invoke-virtual/range {v27 .. v32}, Landroidx/constraintlayout/motion/widget/MotionLayout;->w(IFFF[F)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_1c

    :cond_44
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    iget v8, v3, Landroidx/constraintlayout/motion/widget/d;->l:F

    mul-float/2addr v8, v7

    const/4 v9, 0x1

    aput v8, v11, v9

    iget v8, v3, Landroidx/constraintlayout/motion/widget/d;->k:F

    mul-float/2addr v7, v8

    const/4 v8, 0x0

    aput v7, v11, v8

    :goto_1c
    iget v7, v3, Landroidx/constraintlayout/motion/widget/d;->k:F

    aget v10, v11, v8

    mul-float/2addr v7, v10

    iget v8, v3, Landroidx/constraintlayout/motion/widget/d;->l:F

    aget v10, v11, v9

    mul-float/2addr v8, v10

    add-float/2addr v8, v7

    iget v7, v3, Landroidx/constraintlayout/motion/widget/d;->v:F

    mul-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v7, v7

    const-wide v13, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v7, v7, v13

    const v8, 0x3c23d70a    # 0.01f

    if-gez v7, :cond_45

    const/4 v7, 0x0

    aput v8, v11, v7

    aput v8, v11, v9

    goto :goto_1d

    :cond_45
    const/4 v7, 0x0

    :goto_1d
    iget v10, v3, Landroidx/constraintlayout/motion/widget/d;->k:F

    const/4 v13, 0x0

    cmpl-float v10, v10, v13

    if-eqz v10, :cond_46

    aget v0, v11, v7

    div-float/2addr v5, v0

    goto :goto_1e

    :cond_46
    aget v5, v11, v9

    div-float v5, v0, v5

    :goto_1e
    add-float/2addr v6, v5

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v5, v13}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v5, v3, Landroidx/constraintlayout/motion/widget/d;->c:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_47

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_47
    iget v5, v3, Landroidx/constraintlayout/motion/widget/d;->c:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_48

    const v5, 0x3f7d70a4    # 0.99f

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_48
    invoke-virtual {v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v5

    cmpl-float v6, v0, v5

    if-eqz v6, :cond_4f

    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    if-eqz v7, :cond_49

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_4a

    :cond_49
    invoke-virtual {v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->s()V

    :cond_4a
    invoke-virtual {v12, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    iget-object v0, v4, Lq/s;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_4b

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    :cond_4b
    iget-object v0, v4, Lq/s;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_1f

    :cond_4c
    const/4 v0, 0x0

    :goto_1f
    iget-object v4, v4, Lq/s;->a:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_4d

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    goto :goto_20

    :cond_4d
    const/4 v4, 0x0

    :goto_20
    iget v5, v3, Landroidx/constraintlayout/motion/widget/d;->k:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_4e

    const/4 v5, 0x0

    aget v4, v11, v5

    div-float/2addr v0, v4

    goto :goto_21

    :cond_4e
    const/4 v0, 0x1

    aget v5, v11, v0

    div-float v0, v4, v5

    :goto_21
    iput v0, v12, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    goto :goto_22

    :cond_4f
    const/4 v6, 0x0

    iput v6, v12, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    :goto_22
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, v3, Landroidx/constraintlayout/motion/widget/d;->p:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, v3, Landroidx/constraintlayout/motion/widget/d;->q:F

    goto/16 :goto_1b

    :cond_50
    const/4 v0, 0x0

    iput-boolean v0, v3, Landroidx/constraintlayout/motion/widget/d;->m:Z

    iget-object v0, v4, Lq/s;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_51

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    :cond_51
    iget-object v0, v4, Lq/s;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_23

    :cond_52
    const/4 v0, 0x0

    :goto_23
    iget-object v4, v4, Lq/s;->a:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_53

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    goto :goto_24

    :cond_53
    const/4 v4, 0x0

    :goto_24
    invoke-virtual {v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v13

    iget v6, v3, Landroidx/constraintlayout/motion/widget/d;->d:I

    const/4 v5, -0x1

    if-eq v6, v5, :cond_54

    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/d;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v8, v3, Landroidx/constraintlayout/motion/widget/d;->h:F

    iget v9, v3, Landroidx/constraintlayout/motion/widget/d;->g:F

    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/d;->n:[F

    move v7, v13

    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->w(IFFF[F)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_25

    :cond_54
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    iget v6, v3, Landroidx/constraintlayout/motion/widget/d;->l:F

    mul-float/2addr v6, v5

    const/4 v7, 0x1

    aput v6, v11, v7

    iget v6, v3, Landroidx/constraintlayout/motion/widget/d;->k:F

    mul-float/2addr v5, v6

    const/4 v6, 0x0

    aput v5, v11, v6

    :goto_25
    iget v5, v3, Landroidx/constraintlayout/motion/widget/d;->k:F

    aget v8, v11, v6

    aget v6, v11, v7

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_55

    div-float/2addr v0, v8

    goto :goto_26

    :cond_55
    div-float v0, v4, v6

    :goto_26
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_56

    const/high16 v4, 0x40400000    # 3.0f

    div-float v4, v0, v4

    add-float/2addr v4, v13

    goto :goto_27

    :cond_56
    move v4, v13

    :goto_27
    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    if-eqz v6, :cond_5d

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, v4, v5

    if-eqz v6, :cond_5d

    iget v5, v3, Landroidx/constraintlayout/motion/widget/d;->c:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_5d

    float-to-double v6, v4

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v6, v8

    if-gez v4, :cond_57

    const/4 v4, 0x0

    goto :goto_28

    :cond_57
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_28
    const/4 v6, 0x6

    if-ne v5, v6, :cond_59

    add-float v4, v13, v0

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_58

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :cond_58
    const/high16 v4, 0x3f800000    # 1.0f

    :cond_59
    iget v5, v3, Landroidx/constraintlayout/motion/widget/d;->c:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_5b

    add-float v4, v13, v0

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5a

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    neg-float v0, v0

    :cond_5a
    const/4 v4, 0x0

    :cond_5b
    iget v3, v3, Landroidx/constraintlayout/motion/widget/d;->c:I

    invoke-virtual {v12, v4, v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->F(FFI)V

    const/4 v0, 0x0

    cmpl-float v0, v0, v13

    if-gez v0, :cond_5c

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v13

    if-gtz v0, :cond_3e

    :cond_5c
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v12, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto/16 :goto_1b

    :cond_5d
    const/4 v0, 0x0

    cmpl-float v0, v0, v4

    if-gez v0, :cond_5e

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_3e

    :cond_5e
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v12, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto/16 :goto_1b

    :cond_5f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, v3, Landroidx/constraintlayout/motion/widget/d;->p:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, v3, Landroidx/constraintlayout/motion/widget/d;->q:F

    const/4 v0, 0x0

    iput-boolean v0, v3, Landroidx/constraintlayout/motion/widget/d;->m:Z

    :goto_29
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/motion/widget/c;->r:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/motion/widget/c;->s:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_61

    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/c;->o:Lq/s;

    if-eqz v1, :cond_61

    iget-object v3, v1, Lq/s;->a:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_60

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v3, 0x0

    iput-object v3, v1, Lq/s;->a:Landroid/view/VelocityTracker;

    goto :goto_2a

    :cond_60
    const/4 v3, 0x0

    :goto_2a
    iput-object v3, v2, Landroidx/constraintlayout/motion/widget/c;->o:Lq/s;

    move-object/from16 v3, p0

    iget v1, v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_62

    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/motion/widget/c;->a(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Z

    goto :goto_2b

    :cond_61
    move-object/from16 v3, p0

    :cond_62
    :goto_2b
    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    iget v2, v1, Lq/x;->r:I

    const/4 v4, 0x4

    and-int/2addr v2, v4

    if-eqz v2, :cond_63

    const/4 v10, 0x1

    goto :goto_2c

    :cond_63
    move v10, v0

    :goto_2c
    if-eqz v10, :cond_64

    iget-object v0, v1, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    iget-boolean v0, v0, Landroidx/constraintlayout/motion/widget/d;->m:Z

    return v0

    :cond_64
    const/4 v0, 0x1

    return v0

    :cond_65
    move-object v3, v0

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    instance-of v0, p1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    if-eqz v0, :cond_6

    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f0:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f0:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/MotionHelper;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c0:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c0:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/MotionHelper;->k:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    instance-of v0, p1, Landroidx/constraintlayout/helper/widget/MotionEffect;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Ljava/util/ArrayList;

    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c0:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final r(F)V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:Z

    if-eqz v1, :cond_1

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    :cond_1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    cmpl-float v2, v1, p1

    if-nez v2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/c;->c()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Lq/o;

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/c;->e()Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Landroid/view/animation/Interpolator;

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:Z

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final requestLayout()V
    .locals 4

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    if-eqz v0, :cond_2

    iget v0, v0, Lq/x;->q:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/n;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lq/n;->d:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public final s()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/n;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lq/n;->b:Landroid/view/View;

    invoke-static {v2}, Lcom/google/android/material/slider/h;->o0(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "button"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDebugMode(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDelayedApplicationOfInitialState(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y0:Z

    return-void
.end method

.method public setInteractionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:Z

    return-void
.end method

.method public setInterpolatedProgress(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/c;->e()Landroid/view/animation/Interpolator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    return-void
.end method

.method public setOnHide(F)V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnShow(F)V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c0:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 5

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_0

    cmpl-float v3, p1, v2

    if-lez v3, :cond_1

    :cond_0
    const-string v3, "MotionLayout"

    const-string v4, "Warning! Progress is defined for values between 0.0 and 1.0 inclusive"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/constraintlayout/motion/widget/b;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/b;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    iput p1, v0, Landroidx/constraintlayout/motion/widget/b;->a:F

    return-void

    :cond_3
    if-gtz v1, :cond_5

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    if-ne v1, v2, :cond_4

    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_4
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_8

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_0

    :cond_5
    cmpl-float v1, p1, v2

    if-ltz v1, :cond_7

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_6

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    if-ne v0, v1, :cond_6

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_8

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_0

    :cond_7
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_8
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:Z

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:J

    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:J

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Lq/o;

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScene(Landroidx/constraintlayout/motion/widget/c;)V
    .locals 1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->k()Z

    move-result v0

    iput-boolean v0, p1, Landroidx/constraintlayout/motion/widget/c;->p:Z

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/d;->c(Z)V

    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->C()V

    return-void
.end method

.method public setStartState(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/widget/b;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/b;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    iput p1, v0, Landroidx/constraintlayout/motion/widget/b;->c:I

    iput p1, v0, Landroidx/constraintlayout/motion/widget/b;->d:I

    return-void

    :cond_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    return-void
.end method

.method public setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V
    .locals 4

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-ne p1, v0, :cond_0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z0:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z0:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-ne v1, v2, :cond_1

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->u()V

    :cond_1
    sget-object v3, Landroidx/constraintlayout/motion/widget/a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->v()V

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_4

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->u()V

    :cond_4
    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->v()V

    :cond_5
    :goto_0
    return-void
.end method

.method public setTransition(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->x(I)Lq/x;

    move-result-object p1

    .line 3
    iget v0, p1, Lq/x;->d:I

    .line 4
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 5
    iget v0, p1, Lq/x;->c:I

    .line 6
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    .line 7
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    if-nez p1, :cond_0

    .line 9
    new-instance p1, Landroidx/constraintlayout/motion/widget/b;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/motion/widget/b;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    .line 10
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 11
    iput v0, p1, Landroidx/constraintlayout/motion/widget/b;->c:I

    .line 12
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    .line 13
    iput v0, p1, Landroidx/constraintlayout/motion/widget/b;->d:I

    return-void

    .line 14
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    .line 15
    :cond_2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    if-ne v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 16
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    .line 17
    iput-object p1, v1, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    .line 18
    iget-object p1, p1, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz p1, :cond_4

    .line 19
    iget-boolean v1, v1, Landroidx/constraintlayout/motion/widget/c;->p:Z

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/d;->c(Z)V

    .line 20
    :cond_4
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/c;->b(I)Ls/n;

    move-result-object p1

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/motion/widget/c;->b(I)Ls/n;

    move-result-object v1

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A0:Lq/r;

    invoke-virtual {v4, p1, v1}, Lq/r;->e(Ls/n;Ls/n;)V

    .line 21
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->C()V

    .line 22
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_6

    cmpl-float p1, v0, v3

    if-nez p1, :cond_5

    .line 23
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->s()V

    .line 24
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/c;->b(I)Ls/n;

    move-result-object p1

    invoke-virtual {p1, p0}, Ls/n;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_1

    :cond_5
    cmpl-float p1, v0, v2

    if-nez p1, :cond_6

    .line 25
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->s()V

    .line 26
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/c;->b(I)Ls/n;

    move-result-object p1

    invoke-virtual {p1, p0}, Ls/n;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 27
    :cond_6
    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_7

    move p1, v3

    goto :goto_2

    :cond_7
    move p1, v0

    :goto_2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 28
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/android/material/slider/h;->l0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " transitionToStart "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MotionLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r(F)V

    goto :goto_3

    .line 31
    :cond_8
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_9
    :goto_3
    return-void
.end method

.method public setTransition(Lq/x;)V
    .locals 3

    .line 32
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    .line 33
    iput-object p1, v0, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    if-eqz p1, :cond_0

    .line 34
    iget-object v1, p1, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz v1, :cond_0

    .line 35
    iget-boolean v0, v0, Landroidx/constraintlayout/motion/widget/c;->p:Z

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/d;->c(Z)V

    .line 36
    :cond_0
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 37
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    .line 38
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    const/4 v2, -0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 39
    :cond_1
    iget v1, v1, Lq/x;->c:I

    :goto_0
    if-ne v0, v1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 41
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    .line 42
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 43
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 44
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    .line 45
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    .line 46
    :goto_1
    iget p1, p1, Lq/x;->r:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    const-wide/16 v0, -0x1

    goto :goto_3

    .line 47
    :cond_4
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    :goto_3
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:J

    .line 48
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/c;->h()I

    move-result p1

    .line 49
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    .line 50
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    if-nez v1, :cond_5

    goto :goto_4

    .line 51
    :cond_5
    iget v2, v1, Lq/x;->c:I

    .line 52
    :goto_4
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    if-ne p1, v1, :cond_6

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    if-ne v2, v1, :cond_6

    return-void

    .line 53
    :cond_6
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 54
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    .line 55
    invoke-virtual {v0, p1, v2}, Landroidx/constraintlayout/motion/widget/c;->n(II)V

    .line 56
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/c;->b(I)Ls/n;

    move-result-object p1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/c;->b(I)Ls/n;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A0:Lq/r;

    invoke-virtual {v1, p1, v0}, Lq/r;->e(Ls/n;Ls/n;)V

    .line 57
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    .line 58
    iput p1, v1, Lq/r;->b:I

    .line 59
    iput v0, v1, Lq/r;->c:I

    .line 60
    invoke-virtual {v1}, Lq/r;->g()V

    .line 61
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->C()V

    return-void
.end method

.method public setTransitionDuration(I)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-nez v0, :cond_0

    const-string p1, "MotionLayout"

    const-string v0, "MotionScene not defined"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v1, Lq/x;->h:I

    goto :goto_0

    :cond_1
    iput p1, v0, Landroidx/constraintlayout/motion/widget/c;->j:I

    :goto_0
    return-void
.end method

.method public setTransitionListener(Lq/t;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Lq/t;

    return-void
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/widget/b;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/b;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "motion.progress"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/b;->a:F

    const-string v1, "motion.velocity"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/b;->b:F

    const-string v1, "motion.StartState"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/b;->c:I

    const-string v1, "motion.EndState"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Landroidx/constraintlayout/motion/widget/b;->d:I

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/b;->a()V

    :cond_1
    return-void
.end method

.method public final t(Z)V
    .locals 22

    move-object/from16 v0, p0

    iget-wide v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:J

    :cond_0
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v3, :cond_1

    cmpg-float v3, v1, v5

    if-gez v3, :cond_1

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    :cond_1
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b0:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v3, :cond_2

    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    if-eqz v3, :cond_28

    if-nez p1, :cond_2

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_28

    :cond_2
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v8

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Lq/o;

    instance-of v10, v3, Lq/o;

    const v11, 0x3089705f    # 1.0E-9f

    if-nez v10, :cond_3

    iget-wide v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:J

    sub-long v12, v8, v12

    long-to-float v10, v12

    mul-float/2addr v10, v1

    mul-float/2addr v10, v11

    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    div-float/2addr v10, v12

    goto :goto_0

    :cond_3
    move v10, v2

    :goto_0
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    add-float/2addr v12, v10

    iget-boolean v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:Z

    if-eqz v13, :cond_4

    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    :cond_4
    cmpl-float v13, v1, v2

    if-lez v13, :cond_5

    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    cmpl-float v14, v12, v14

    if-gez v14, :cond_6

    :cond_5
    cmpg-float v14, v1, v2

    if-gtz v14, :cond_7

    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    cmpg-float v14, v12, v14

    if-gtz v14, :cond_7

    :cond_6
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    move v14, v6

    goto :goto_1

    :cond_7
    move v14, v7

    :goto_1
    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    iput-wide v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:J

    const v15, 0x3727c5ac    # 1.0E-5f

    if-eqz v3, :cond_e

    if-nez v14, :cond_e

    iget-boolean v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    if-eqz v14, :cond_c

    iget-wide v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:J

    sub-long v4, v8, v4

    long-to-float v4, v4

    mul-float/2addr v4, v11

    invoke-interface {v3, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Lq/o;

    const/4 v5, 0x2

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Lp/b;

    if-ne v4, v10, :cond_9

    iget-object v4, v10, Lp/b;->c:Ll/m;

    invoke-interface {v4}, Ll/m;->a()Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v5

    goto :goto_2

    :cond_8
    move v4, v6

    goto :goto_2

    :cond_9
    move v4, v7

    :goto_2
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    iput-wide v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:J

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Lq/o;

    instance-of v9, v8, Lq/o;

    if-eqz v9, :cond_f

    invoke-virtual {v8}, Lq/o;->a()F

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    mul-float/2addr v9, v10

    cmpg-float v9, v9, v15

    if-gtz v9, :cond_a

    if-ne v4, v5, :cond_a

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    :cond_a
    cmpl-float v5, v8, v2

    if-lez v5, :cond_b

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v9, v3, v5

    if-ltz v9, :cond_b

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_b
    cmpg-float v5, v8, v2

    if-gez v5, :cond_f

    cmpg-float v5, v3, v2

    if-gtz v5, :cond_f

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    move v3, v2

    goto :goto_5

    :cond_c
    invoke-interface {v3, v12}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Lq/o;

    instance-of v5, v4, Lq/o;

    if-eqz v5, :cond_d

    invoke-virtual {v4}, Lq/o;->a()F

    move-result v4

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    goto :goto_3

    :cond_d
    add-float/2addr v12, v10

    invoke-interface {v4, v12}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v4

    sub-float/2addr v4, v3

    mul-float/2addr v4, v1

    div-float/2addr v4, v10

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    :goto_3
    move v12, v3

    goto :goto_4

    :cond_e
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    :goto_4
    move v4, v7

    move v3, v12

    :cond_f
    :goto_5
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v15

    if-lez v5, :cond_10

    sget-object v5, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_10
    if-eq v4, v6, :cond_15

    if-lez v13, :cond_11

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    cmpl-float v4, v3, v4

    if-gez v4, :cond_12

    :cond_11
    cmpg-float v4, v1, v2

    if-gtz v4, :cond_13

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_13

    :cond_12
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    :cond_13
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v4

    if-gez v5, :cond_14

    cmpg-float v4, v3, v2

    if-gtz v4, :cond_15

    :cond_14
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    sget-object v4, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b0:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v8

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:F

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Landroid/view/animation/Interpolator;

    if-nez v5, :cond_16

    move v5, v3

    goto :goto_6

    :cond_16
    invoke-interface {v5, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v5

    :goto_6
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Landroid/view/animation/Interpolator;

    if-eqz v10, :cond_17

    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    div-float v11, v1, v11

    add-float/2addr v11, v3

    invoke-interface {v10, v11}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v10

    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Landroid/view/animation/Interpolator;

    invoke-interface {v11, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v11

    sub-float/2addr v10, v11

    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    :cond_17
    move v10, v7

    :goto_7
    if-ge v10, v4, :cond_19

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v16, v12

    check-cast v16, Lq/n;

    if-eqz v16, :cond_18

    iget-boolean v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b0:Z

    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Landroidx/appcompat/view/menu/i;

    move/from16 v17, v5

    move-wide/from16 v18, v8

    move-object/from16 v20, v11

    move-object/from16 v21, v15

    invoke-virtual/range {v16 .. v21}, Lq/n;->e(FJLandroid/view/View;Landroidx/appcompat/view/menu/i;)Z

    move-result v11

    or-int/2addr v11, v12

    iput-boolean v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b0:Z

    :cond_18
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_19
    if-lez v13, :cond_1a

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    cmpl-float v4, v3, v4

    if-gez v4, :cond_1b

    :cond_1a
    cmpg-float v4, v1, v2

    if-gtz v4, :cond_1c

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_1c

    :cond_1b
    move v4, v6

    goto :goto_8

    :cond_1c
    move v4, v7

    :goto_8
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b0:Z

    if-nez v5, :cond_1d

    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    if-nez v5, :cond_1d

    if-eqz v4, :cond_1d

    sget-object v5, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_1d
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:Z

    if-eqz v5, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_1e
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b0:Z

    xor-int/2addr v4, v6

    or-int/2addr v4, v5

    iput-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b0:Z

    cmpg-float v4, v3, v2

    if-gtz v4, :cond_1f

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1f

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    if-eq v5, v4, :cond_1f

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v5, v4}, Landroidx/constraintlayout/motion/widget/c;->b(I)Ls/n;

    move-result-object v4

    invoke-virtual {v4, v0}, Ls/n;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget-object v4, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    move v7, v6

    :cond_1f
    float-to-double v4, v3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v8

    if-ltz v4, :cond_20

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    if-eq v4, v5, :cond_20

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/motion/widget/c;->b(I)Ls/n;

    move-result-object v4

    invoke-virtual {v4, v0}, Ls/n;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget-object v4, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    move v7, v6

    :cond_20
    iget-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b0:Z

    if-nez v4, :cond_24

    iget-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    if-eqz v4, :cond_21

    goto :goto_9

    :cond_21
    if-lez v13, :cond_22

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_23

    :cond_22
    cmpg-float v4, v1, v2

    if-gez v4, :cond_25

    cmpl-float v4, v3, v2

    if-nez v4, :cond_25

    :cond_23
    sget-object v4, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_a

    :cond_24
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_25
    :goto_a
    iget-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b0:Z

    if-nez v4, :cond_28

    iget-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    if-nez v4, :cond_28

    if-lez v13, :cond_26

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_27

    :cond_26
    cmpg-float v1, v1, v2

    if-gez v1, :cond_28

    cmpl-float v1, v3, v2

    if-nez v1, :cond_28

    :cond_27
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->A()V

    :cond_28
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_2a

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    if-eq v1, v2, :cond_29

    goto :goto_b

    :cond_29
    move v6, v7

    :goto_b
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    :goto_c
    move v7, v6

    goto :goto_e

    :cond_2a
    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2c

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    if-eq v1, v2, :cond_2b

    goto :goto_d

    :cond_2b
    move v6, v7

    :goto_d
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    goto :goto_c

    :cond_2c
    :goto_e
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B0:Z

    or-int/2addr v1, v7

    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B0:Z

    if-eqz v7, :cond_2d

    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u0:Z

    if-nez v1, :cond_2d

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_2d
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    invoke-static {v0, v2}, Lcom/google/android/material/slider/h;->n0(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    invoke-static {v0, v2}, Lcom/google/android/material/slider/h;->n0(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (pos:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " Dpos/Dt:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Lq/t;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f0:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k0:F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f0:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/t;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:I

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k0:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Lq/t;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lq/t;->b()V

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f0:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/t;

    invoke-interface {v1}, Lq/t;->b()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final v()V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Lq/t;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f0:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    if-eq v2, v3, :cond_2

    if-eq v3, v1, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->B()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w0:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method public final w(IFFF[F)V
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/n;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2, p3, p4, p5}, Lq/n;->d(FFF[F)V

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    const-string p2, ""

    invoke-static {p2, p1}, Landroidx/activity/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "WARNING could not find view id "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final x(I)Lq/x;
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/x;

    iget v2, v1, Lq/x;->a:I

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public final y(FFLandroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 7

    instance-of v0, p4, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move-object v0, p4

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p1

    invoke-virtual {p4}, Landroid/view/View;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, p2

    invoke-virtual {p4}, Landroid/view/View;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0, v4, v5, p3, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->y(FFLandroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_5

    invoke-virtual {p4}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p1

    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p4}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p2

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroid/graphics/RectF;

    invoke-virtual {v4, p1, p2, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    neg-float p1, p1

    neg-float p2, p2

    invoke-virtual {p4}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p3, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p4, p3}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p4

    neg-float p1, p1

    neg-float p2, p2

    invoke-virtual {p3, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_2

    :cond_3
    invoke-static {p3}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E0:Landroid/graphics/Matrix;

    if-nez p1, :cond_4

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E0:Landroid/graphics/Matrix;

    :cond_4
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E0:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E0:Landroid/graphics/Matrix;

    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {p4, p3}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->recycle()V

    :goto_2
    if-eqz p4, :cond_5

    goto :goto_3

    :cond_5
    move v1, v0

    :goto_3
    return v1
.end method

.method public final z(Landroid/util/AttributeSet;)V
    .locals 12

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    sput-boolean v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G0:Z

    const-string v0, "MotionLayout"

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout:[I

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    const/4 v4, 0x1

    move v5, v2

    move v6, v4

    :goto_0
    if-ge v5, v3, :cond_7

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    sget v8, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_layoutDescription:I

    if-ne v7, v8, :cond_0

    invoke-virtual {p1, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    new-instance v8, Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, p0, v7}, Landroidx/constraintlayout/motion/widget/c;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    iput-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    goto :goto_2

    :cond_0
    sget v8, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_currentState:I

    if-ne v7, v8, :cond_1

    invoke-virtual {p1, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    goto :goto_2

    :cond_1
    sget v8, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_motionProgress:I

    if-ne v7, v8, :cond_2

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:F

    iput-boolean v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    goto :goto_2

    :cond_2
    sget v8, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_applyMotionScene:I

    if-ne v7, v8, :cond_3

    invoke-virtual {p1, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    goto :goto_2

    :cond_3
    sget v8, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_showPaths:I

    if-ne v7, v8, :cond_5

    iget v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    if-nez v8, :cond_6

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x2

    goto :goto_1

    :cond_4
    move v7, v2

    :goto_1
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    goto :goto_2

    :cond_5
    sget v8, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_motionDebug:I

    if-ne v7, v8, :cond_6

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-nez p1, :cond_8

    const-string p1, "WARNING NO app:layoutDescription tag"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-nez v6, :cond_9

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    :cond_9
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    if-eqz p1, :cond_19

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-nez p1, :cond_a

    const-string p1, "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\""

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_a
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/c;->h()I

    move-result p1

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/c;->h()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/c;->b(I)Ls/n;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/google/android/material/slider/h;->n0(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v2

    :goto_3
    const-string v6, "CHECK: "

    if-ge v5, v4, :cond_d

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v8

    if-ne v8, v1, :cond_b

    const-string v9, " ALL VIEWS SHOULD HAVE ID\'s "

    invoke-static {v6, p1, v9}, Landroidx/activity/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " does not!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {v3, v8}, Ls/n;->i(I)Ls/i;

    move-result-object v8

    if-nez v8, :cond_c

    const-string v8, " NO CONSTRAINTS for "

    invoke-static {v6, p1, v8}, Landroidx/activity/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v7}, Lcom/google/android/material/slider/h;->o0(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_d
    iget-object v4, v3, Ls/n;->f:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Integer;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Integer;

    array-length v5, v4

    new-array v7, v5, [I

    move v8, v2

    :goto_4
    if-ge v8, v5, :cond_e

    aget-object v9, v4, v8

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_e
    :goto_5
    if-ge v2, v5, :cond_12

    aget v4, v7, v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/google/android/material/slider/h;->n0(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    aget v9, v7, v2

    invoke-virtual {p0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_f

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " NO View matches id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-virtual {v3, v4}, Ls/n;->h(I)Ls/i;

    move-result-object v9

    iget-object v9, v9, Ls/i;->e:Ls/j;

    iget v9, v9, Ls/j;->d:I

    const-string v10, ") no LAYOUT_HEIGHT"

    const-string v11, "("

    if-ne v9, v1, :cond_10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-virtual {v3, v4}, Ls/n;->h(I)Ls/i;

    move-result-object v4

    iget-object v4, v4, Ls/i;->e:Ls/j;

    iget v4, v4, Ls/j;->c:I

    if-ne v4, v1, :cond_11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_12
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq/x;

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    if-ne v4, v5, :cond_14

    const-string v5, "CHECK: CURRENT"

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget v5, v4, Lq/x;->d:I

    iget v6, v4, Lq/x;->c:I

    if-ne v5, v6, :cond_15

    const-string v5, "CHECK: start and end constraint set should not be the same!"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    iget v5, v4, Lq/x;->d:I

    iget v4, v4, Lq/x;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/google/android/material/slider/h;->n0(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/google/android/material/slider/h;->n0(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    const-string v9, "->"

    if-ne v8, v4, :cond_16

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "CHECK: two transitions with the same start and end "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    if-ne v8, v5, :cond_17

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "CHECK: you can\'t have reverse transitions"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    invoke-virtual {p1, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v7, v5}, Landroidx/constraintlayout/motion/widget/c;->b(I)Ls/n;

    move-result-object v5

    if-nez v5, :cond_18

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, " no such constraintSetStart "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v5, v4}, Landroidx/constraintlayout/motion/widget/c;->b(I)Ls/n;

    move-result-object v4

    if-nez v4, :cond_13

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " no such constraintSetEnd "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_19
    :goto_7
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    if-ne p1, v1, :cond_1b

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/c;->h()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/c;->h()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    if-nez p1, :cond_1a

    goto :goto_8

    :cond_1a
    iget v1, p1, Lq/x;->c:I

    :goto_8
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    :cond_1b
    return-void
.end method
