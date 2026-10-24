.class public abstract Le1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/view/animation/LinearInterpolator;

.field public static final b:Lp0/b;

.field public static final c:Lp0/a;

.field public static final d:Lp0/c;

.field public static final e:Landroid/view/animation/DecelerateInterpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Le1/a;->a:Landroid/view/animation/LinearInterpolator;

    new-instance v0, Lp0/b;

    invoke-direct {v0}, Lp0/b;-><init>()V

    sput-object v0, Le1/a;->b:Lp0/b;

    new-instance v0, Lp0/a;

    invoke-direct {v0}, Lp0/a;-><init>()V

    sput-object v0, Le1/a;->c:Lp0/a;

    new-instance v0, Lp0/c;

    invoke-direct {v0}, Lp0/c;-><init>()V

    sput-object v0, Le1/a;->d:Lp0/c;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Le1/a;->e:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public static a(FFFFF)F
    .locals 1

    cmpg-float v0, p4, p2

    if-gez v0, :cond_0

    return p0

    :cond_0
    cmpl-float v0, p4, p3

    if-lez v0, :cond_1

    return p1

    :cond_1
    sub-float/2addr p4, p2

    sub-float/2addr p3, p2

    div-float/2addr p4, p3

    invoke-static {p1, p0, p4, p0}, La/a;->a(FFFF)F

    move-result p0

    return p0
.end method
