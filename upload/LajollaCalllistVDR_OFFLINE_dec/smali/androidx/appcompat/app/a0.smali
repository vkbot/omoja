.class public final Landroidx/appcompat/app/a0;
.super Landroidx/appcompat/app/o;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/n;
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field public static final Z:Lk/j;

.field public static final a0:[I

.field public static final b0:Z

.field public static final c0:Z


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:[Landroidx/appcompat/app/z;

.field public G:Landroidx/appcompat/app/z;

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Landroid/content/res/Configuration;

.field public final M:I

.field public N:I

.field public O:Z

.field public P:Z

.field public Q:Landroidx/appcompat/app/u;

.field public R:Landroidx/appcompat/app/u;

.field public S:Z

.field public T:I

.field public final U:Landroidx/appcompat/app/p;

.field public V:Z

.field public W:Landroid/graphics/Rect;

.field public X:Landroid/graphics/Rect;

.field public Y:Landroidx/appcompat/app/e0;

.field public final c:Ljava/lang/Object;

.field public final d:Landroid/content/Context;

.field public e:Landroid/view/Window;

.field public f:Landroidx/appcompat/app/t;

.field public final g:Landroidx/appcompat/app/n;

.field public h:Landroidx/appcompat/app/k0;

.field public i:Lf/k;

.field public j:Ljava/lang/CharSequence;

.field public k:Landroidx/appcompat/widget/y0;

.field public l:Landroidx/appcompat/app/q;

.field public m:Landroidx/appcompat/app/q;

.field public n:Lf/c;

.field public o:Landroidx/appcompat/widget/ActionBarContextView;

.field public p:Landroid/widget/PopupWindow;

.field public q:Landroidx/appcompat/app/p;

.field public r:Lh0/t0;

.field public final s:Z

.field public t:Z

.field public u:Landroid/view/ViewGroup;

.field public v:Landroid/widget/TextView;

.field public w:Landroid/view/View;

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk/j;

    invoke-direct {v0}, Lk/j;-><init>()V

    sput-object v0, Landroidx/appcompat/app/a0;->Z:Lk/j;

    const v0, 0x1010054

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/a0;->a0:[I

    const-string v0, "robolectric"

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Landroidx/appcompat/app/a0;->b0:Z

    sput-boolean v1, Landroidx/appcompat/app/a0;->c0:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/n;Ljava/lang/Object;)V
    .locals 4

    invoke-direct {p0}, Landroidx/appcompat/app/o;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/app/a0;->r:Lh0/t0;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/app/a0;->s:Z

    const/16 v1, -0x64

    iput v1, p0, Landroidx/appcompat/app/a0;->M:I

    new-instance v2, Landroidx/appcompat/app/p;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroidx/appcompat/app/p;-><init>(Landroidx/appcompat/app/a0;I)V

    iput-object v2, p0, Landroidx/appcompat/app/a0;->U:Landroidx/appcompat/app/p;

    iput-object p1, p0, Landroidx/appcompat/app/a0;->d:Landroid/content/Context;

    iput-object p3, p0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/app/n;

    iput-object p4, p0, Landroidx/appcompat/app/a0;->c:Ljava/lang/Object;

    instance-of p3, p4, Landroid/app/Dialog;

    if-eqz p3, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    instance-of p3, p1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz p3, :cond_0

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_1

    :cond_0
    instance-of p3, p1, Landroid/content/ContextWrapper;

    if-eqz p3, :cond_1

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/a0;

    iget p1, p1, Landroidx/appcompat/app/a0;->M:I

    iput p1, p0, Landroidx/appcompat/app/a0;->M:I

    :cond_2
    iget p1, p0, Landroidx/appcompat/app/a0;->M:I

    if-ne p1, v1, :cond_3

    sget-object p1, Landroidx/appcompat/app/a0;->Z:Lk/j;

    iget-object p3, p0, Landroidx/appcompat/app/a0;->c:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, v0}, Lk/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/a0;->M:I

    iget-object p3, p0, Landroidx/appcompat/app/a0;->c:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lk/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Landroidx/appcompat/app/a0;->l(Landroid/view/Window;)V

    :cond_4
    invoke-static {}, Landroidx/appcompat/widget/c0;->d()V

    return-void
.end method

.method public static q(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    goto :goto_0

    :cond_0
    const/16 p0, 0x20

    goto :goto_0

    :cond_1
    const/16 p0, 0x10

    :goto_0
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    const/4 v0, 0x0

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_2
    iget p2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, -0x31

    or-int/2addr p0, p2

    iput p0, p1, Landroid/content/res/Configuration;->uiMode:I

    return-object p1
.end method

.method public static v(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 3

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    :cond_1
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_2

    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    iput v1, v0, Landroid/content/res/Configuration;->mcc:I

    :cond_2
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_3

    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    iput v1, v0, Landroid/content/res/Configuration;->mnc:I

    :cond_3
    invoke-static {p0, p1, v0}, Ly1/l;->c0(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v1, v2, :cond_4

    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v1, v0, Landroid/content/res/Configuration;->touchscreen:I

    :cond_4
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_5

    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v1, v0, Landroid/content/res/Configuration;->keyboard:I

    :cond_5
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v1, v2, :cond_6

    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v1, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_6
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v1, v2, :cond_7

    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    iput v1, v0, Landroid/content/res/Configuration;->navigation:I

    :cond_7
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v1, v2, :cond_8

    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v1, v0, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_8
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_9

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    :cond_9
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    if-eq v1, v2, :cond_a

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_a
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    if-eq v1, v2, :cond_b

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_b
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    if-eq v1, v2, :cond_c

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_c
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0x300

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    if-eq v1, v2, :cond_d

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_d
    invoke-static {p0, p1, v0}, Ly1/l;->a0(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    if-eq v1, v2, :cond_e

    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    :cond_e
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    if-eq v1, v2, :cond_f

    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    :cond_f
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v1, v2, :cond_10

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_10
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v2, :cond_11

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_11
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v1, v2, :cond_12

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_12
    invoke-static {p0, p1, v0}, Ly1/l;->b0(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final A(Landroid/content/Context;I)I
    .locals 2

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p2, v0, :cond_5

    if-eq p2, v1, :cond_4

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Landroidx/appcompat/app/a0;->R:Landroidx/appcompat/app/u;

    if-nez p2, :cond_0

    new-instance p2, Landroidx/appcompat/app/u;

    invoke-direct {p2, p0, p1}, Landroidx/appcompat/app/u;-><init>(Landroidx/appcompat/app/a0;Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/appcompat/app/a0;->R:Landroidx/appcompat/app/u;

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/a0;->R:Landroidx/appcompat/app/u;

    invoke-virtual {p0}, Landroidx/appcompat/app/u;->b()I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "uimode"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p2

    if-nez p2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->w(Landroid/content/Context;)Landroidx/appcompat/app/w;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/w;->b()I

    move-result p0

    return p0

    :cond_4
    return p2

    :cond_5
    return v1
.end method

.method public final B(Landroidx/appcompat/app/z;Landroid/view/KeyEvent;)V
    .locals 13

    iget-boolean v0, p1, Landroidx/appcompat/app/z;->m:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->K:Z

    if-eqz v0, :cond_0

    goto/16 :goto_d

    :cond_0
    iget v0, p1, Landroidx/appcompat/app/z;->a:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/a0;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->y()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v4, p1, Landroidx/appcompat/app/z;->a:I

    iget-object v5, p1, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, v3}, Landroidx/appcompat/app/a0;->o(Landroidx/appcompat/app/z;Z)V

    return-void

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/a0;->d:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/a0;->D(Landroidx/appcompat/app/z;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    :cond_5
    iget-object p2, p1, Landroidx/appcompat/app/z;->e:Landroidx/appcompat/app/x;

    const/4 v4, -0x2

    if-eqz p2, :cond_7

    iget-boolean v5, p1, Landroidx/appcompat/app/z;->n:Z

    if-eqz v5, :cond_6

    goto :goto_1

    :cond_6
    iget-object p0, p1, Landroidx/appcompat/app/z;->g:Landroid/view/View;

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_1c

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 p2, -0x1

    if-ne p0, p2, :cond_1c

    move v6, p2

    goto/16 :goto_b

    :cond_7
    :goto_1
    if-nez p2, :cond_c

    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->z()V

    iget-object p2, p0, Landroidx/appcompat/app/a0;->h:Landroidx/appcompat/app/k0;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroidx/appcompat/app/k0;->b()Landroid/content/Context;

    move-result-object p2

    goto :goto_2

    :cond_8
    const/4 p2, 0x0

    :goto_2
    if-nez p2, :cond_9

    iget-object p2, p0, Landroidx/appcompat/app/a0;->d:Landroid/content/Context;

    :cond_9
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    sget v7, Landroidx/appcompat/R$attr;->actionBarPopupTheme:I

    invoke-virtual {v6, v7, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_a

    invoke-virtual {v6, v7, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_a
    sget v7, Landroidx/appcompat/R$attr;->panelMenuListTheme:I

    invoke-virtual {v6, v7, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_b

    invoke-virtual {v6, v5, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_3

    :cond_b
    sget v5, Landroidx/appcompat/R$style;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v6, v5, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_3
    new-instance v5, Lf/e;

    invoke-direct {v5, p2, v2}, Lf/e;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5}, Lf/e;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iput-object v5, p1, Landroidx/appcompat/app/z;->j:Lf/e;

    sget-object p2, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v5, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTheme_panelBackground:I

    invoke-virtual {p2, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p1, Landroidx/appcompat/app/z;->b:I

    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTheme_android_windowAnimationStyle:I

    invoke-virtual {p2, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p1, Landroidx/appcompat/app/z;->d:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Landroidx/appcompat/app/x;

    iget-object v5, p1, Landroidx/appcompat/app/z;->j:Lf/e;

    invoke-direct {p2, p0, v5}, Landroidx/appcompat/app/x;-><init>(Landroidx/appcompat/app/a0;Lf/e;)V

    iput-object p2, p1, Landroidx/appcompat/app/z;->e:Landroidx/appcompat/app/x;

    const/16 p2, 0x51

    iput p2, p1, Landroidx/appcompat/app/z;->c:I

    goto :goto_4

    :cond_c
    iget-boolean v5, p1, Landroidx/appcompat/app/z;->n:Z

    if-eqz v5, :cond_d

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_d

    iget-object p2, p1, Landroidx/appcompat/app/z;->e:Landroidx/appcompat/app/x;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_d
    :goto_4
    iget-object p2, p1, Landroidx/appcompat/app/z;->g:Landroid/view/View;

    if-eqz p2, :cond_e

    iput-object p2, p1, Landroidx/appcompat/app/z;->f:Landroid/view/View;

    goto :goto_5

    :cond_e
    iget-object p2, p1, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    if-nez p2, :cond_f

    goto :goto_6

    :cond_f
    iget-object p2, p0, Landroidx/appcompat/app/a0;->m:Landroidx/appcompat/app/q;

    if-nez p2, :cond_10

    new-instance p2, Landroidx/appcompat/app/q;

    invoke-direct {p2, p0, v1}, Landroidx/appcompat/app/q;-><init>(Landroidx/appcompat/app/a0;I)V

    iput-object p2, p0, Landroidx/appcompat/app/a0;->m:Landroidx/appcompat/app/q;

    :cond_10
    iget-object p0, p0, Landroidx/appcompat/app/a0;->m:Landroidx/appcompat/app/q;

    iget-object p2, p1, Landroidx/appcompat/app/z;->i:Landroidx/appcompat/view/menu/m;

    if-nez p2, :cond_11

    new-instance p2, Landroidx/appcompat/view/menu/m;

    iget-object v1, p1, Landroidx/appcompat/app/z;->j:Lf/e;

    sget v5, Landroidx/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {p2, v1, v5}, Landroidx/appcompat/view/menu/m;-><init>(Landroid/content/Context;I)V

    iput-object p2, p1, Landroidx/appcompat/app/z;->i:Landroidx/appcompat/view/menu/m;

    iput-object p0, p2, Landroidx/appcompat/view/menu/m;->f:Landroidx/appcompat/view/menu/b0;

    iget-object p0, p1, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    iget-object v1, p0, Landroidx/appcompat/view/menu/p;->a:Landroid/content/Context;

    invoke-virtual {p0, p2, v1}, Landroidx/appcompat/view/menu/p;->b(Landroidx/appcompat/view/menu/c0;Landroid/content/Context;)V

    :cond_11
    iget-object p0, p1, Landroidx/appcompat/app/z;->i:Landroidx/appcompat/view/menu/m;

    iget-object p2, p1, Landroidx/appcompat/app/z;->e:Landroidx/appcompat/app/x;

    iget-object v1, p0, Landroidx/appcompat/view/menu/m;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v1, :cond_13

    iget-object v1, p0, Landroidx/appcompat/view/menu/m;->b:Landroid/view/LayoutInflater;

    sget v5, Landroidx/appcompat/R$layout;->abc_expanded_menu_layout:I

    invoke-virtual {v1, v5, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object p2, p0, Landroidx/appcompat/view/menu/m;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object p2, p0, Landroidx/appcompat/view/menu/m;->g:Landroidx/appcompat/view/menu/l;

    if-nez p2, :cond_12

    new-instance p2, Landroidx/appcompat/view/menu/l;

    invoke-direct {p2, p0}, Landroidx/appcompat/view/menu/l;-><init>(Landroidx/appcompat/view/menu/m;)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/m;->g:Landroidx/appcompat/view/menu/l;

    :cond_12
    iget-object p2, p0, Landroidx/appcompat/view/menu/m;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v1, p0, Landroidx/appcompat/view/menu/m;->g:Landroidx/appcompat/view/menu/l;

    invoke-virtual {p2, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/m;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {p2, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_13
    iget-object p0, p0, Landroidx/appcompat/view/menu/m;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object p0, p1, Landroidx/appcompat/app/z;->f:Landroid/view/View;

    if-eqz p0, :cond_14

    :goto_5
    move p0, v3

    goto :goto_7

    :cond_14
    :goto_6
    move p0, v2

    :goto_7
    if-eqz p0, :cond_1d

    iget-object p0, p1, Landroidx/appcompat/app/z;->f:Landroid/view/View;

    if-nez p0, :cond_15

    goto :goto_9

    :cond_15
    iget-object p0, p1, Landroidx/appcompat/app/z;->g:Landroid/view/View;

    if-eqz p0, :cond_16

    goto :goto_8

    :cond_16
    iget-object p0, p1, Landroidx/appcompat/app/z;->i:Landroidx/appcompat/view/menu/m;

    iget-object p2, p0, Landroidx/appcompat/view/menu/m;->g:Landroidx/appcompat/view/menu/l;

    if-nez p2, :cond_17

    new-instance p2, Landroidx/appcompat/view/menu/l;

    invoke-direct {p2, p0}, Landroidx/appcompat/view/menu/l;-><init>(Landroidx/appcompat/view/menu/m;)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/m;->g:Landroidx/appcompat/view/menu/l;

    :cond_17
    iget-object p0, p0, Landroidx/appcompat/view/menu/m;->g:Landroidx/appcompat/view/menu/l;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l;->getCount()I

    move-result p0

    if-lez p0, :cond_18

    :goto_8
    move p0, v3

    goto :goto_a

    :cond_18
    :goto_9
    move p0, v2

    :goto_a
    if-nez p0, :cond_19

    goto :goto_c

    :cond_19
    iget-object p0, p1, Landroidx/appcompat/app/z;->f:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-nez p0, :cond_1a

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_1a
    iget p2, p1, Landroidx/appcompat/app/z;->b:I

    iget-object v1, p1, Landroidx/appcompat/app/z;->e:Landroidx/appcompat/app/x;

    invoke-virtual {v1, p2}, Landroidx/appcompat/app/x;->setBackgroundResource(I)V

    iget-object p2, p1, Landroidx/appcompat/app/z;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of v1, p2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1b

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v1, p1, Landroidx/appcompat/app/z;->f:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1b
    iget-object p2, p1, Landroidx/appcompat/app/z;->e:Landroidx/appcompat/app/x;

    iget-object v1, p1, Landroidx/appcompat/app/z;->f:Landroid/view/View;

    invoke-virtual {p2, v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p1, Landroidx/appcompat/app/z;->f:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p0

    if-nez p0, :cond_1c

    iget-object p0, p1, Landroidx/appcompat/app/z;->f:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_1c
    move v6, v4

    :goto_b
    iput-boolean v2, p1, Landroidx/appcompat/app/z;->l:Z

    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3ea

    const/high16 v11, 0x820000

    const/4 v12, -0x3

    move-object v5, p0

    invoke-direct/range {v5 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget p2, p1, Landroidx/appcompat/app/z;->c:I

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget p2, p1, Landroidx/appcompat/app/z;->d:I

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object p2, p1, Landroidx/appcompat/app/z;->e:Landroidx/appcompat/app/x;

    invoke-interface {v0, p2, p0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v3, p1, Landroidx/appcompat/app/z;->m:Z

    return-void

    :cond_1d
    :goto_c
    iput-boolean v3, p1, Landroidx/appcompat/app/z;->n:Z

    :cond_1e
    :goto_d
    return-void
.end method

.method public final C(Landroidx/appcompat/app/z;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Landroidx/appcompat/app/z;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Landroidx/appcompat/app/a0;->D(Landroidx/appcompat/app/z;Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    iget-object p0, p1, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1}, Landroidx/appcompat/view/menu/p;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public final D(Landroidx/appcompat/app/z;Landroid/view/KeyEvent;)Z
    .locals 11

    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->K:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Landroidx/appcompat/app/z;->k:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->G:Landroidx/appcompat/app/z;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/a0;->o(Landroidx/appcompat/app/z;Z)V

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->y()Landroid/view/Window$Callback;

    move-result-object v0

    iget v3, p1, Landroidx/appcompat/app/z;->a:I

    if-eqz v0, :cond_3

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p1, Landroidx/appcompat/app/z;->g:Landroid/view/View;

    :cond_3
    const/16 v4, 0x6c

    if-eqz v3, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    move v5, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v5, v2

    :goto_1
    if-eqz v5, :cond_6

    iget-object v6, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/widget/y0;

    if-eqz v6, :cond_6

    check-cast v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l()V

    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/z0;

    check-cast v6, Landroidx/appcompat/widget/a3;

    iput-boolean v2, v6, Landroidx/appcompat/widget/a3;->m:Z

    :cond_6
    iget-object v6, p1, Landroidx/appcompat/app/z;->g:Landroid/view/View;

    if-nez v6, :cond_1d

    iget-object v6, p1, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    iget-boolean v8, p1, Landroidx/appcompat/app/z;->o:Z

    if-eqz v8, :cond_17

    :cond_7
    if-nez v6, :cond_10

    iget-object v6, p0, Landroidx/appcompat/app/a0;->d:Landroid/content/Context;

    if-eqz v3, :cond_8

    if-ne v3, v4, :cond_c

    :cond_8
    iget-object v4, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/widget/y0;

    if-eqz v4, :cond_c

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget v9, Landroidx/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_9

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v10, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    sget v10, Landroidx/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v9, v10, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_2

    :cond_9
    sget v9, Landroidx/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v9, v7

    :goto_2
    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v10, :cond_b

    if-nez v9, :cond_a

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_a
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_b
    if-eqz v9, :cond_c

    new-instance v4, Lf/e;

    invoke-direct {v4, v6, v1}, Lf/e;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Lf/e;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v6, v4

    :cond_c
    new-instance v4, Landroidx/appcompat/view/menu/p;

    invoke-direct {v4, v6}, Landroidx/appcompat/view/menu/p;-><init>(Landroid/content/Context;)V

    iput-object p0, v4, Landroidx/appcompat/view/menu/p;->e:Landroidx/appcompat/view/menu/n;

    iget-object v6, p1, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    if-ne v4, v6, :cond_d

    goto :goto_3

    :cond_d
    if-eqz v6, :cond_e

    iget-object v8, p1, Landroidx/appcompat/app/z;->i:Landroidx/appcompat/view/menu/m;

    invoke-virtual {v6, v8}, Landroidx/appcompat/view/menu/p;->r(Landroidx/appcompat/view/menu/c0;)V

    :cond_e
    iput-object v4, p1, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    iget-object v6, p1, Landroidx/appcompat/app/z;->i:Landroidx/appcompat/view/menu/m;

    if-eqz v6, :cond_f

    iget-object v8, v4, Landroidx/appcompat/view/menu/p;->a:Landroid/content/Context;

    invoke-virtual {v4, v6, v8}, Landroidx/appcompat/view/menu/p;->b(Landroidx/appcompat/view/menu/c0;Landroid/content/Context;)V

    :cond_f
    :goto_3
    iget-object v4, p1, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    if-nez v4, :cond_10

    return v1

    :cond_10
    if-eqz v5, :cond_12

    iget-object v4, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/widget/y0;

    if-eqz v4, :cond_12

    iget-object v6, p0, Landroidx/appcompat/app/a0;->l:Landroidx/appcompat/app/q;

    if-nez v6, :cond_11

    new-instance v6, Landroidx/appcompat/app/q;

    const/4 v8, 0x3

    invoke-direct {v6, p0, v8}, Landroidx/appcompat/app/q;-><init>(Landroidx/appcompat/app/a0;I)V

    iput-object v6, p0, Landroidx/appcompat/app/a0;->l:Landroidx/appcompat/app/q;

    :cond_11
    iget-object v6, p1, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    iget-object v8, p0, Landroidx/appcompat/app/a0;->l:Landroidx/appcompat/app/q;

    check-cast v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v4, v6, v8}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m(Landroidx/appcompat/view/menu/p;Landroidx/appcompat/app/q;)V

    :cond_12
    iget-object v4, p1, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/p;->z()V

    iget-object v4, p1, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_16

    iget-object p2, p1, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    if-nez p2, :cond_13

    goto :goto_4

    :cond_13
    if-eqz p2, :cond_14

    iget-object v0, p1, Landroidx/appcompat/app/z;->i:Landroidx/appcompat/view/menu/m;

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/p;->r(Landroidx/appcompat/view/menu/c0;)V

    :cond_14
    iput-object v7, p1, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    :goto_4
    if-eqz v5, :cond_15

    iget-object p1, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/widget/y0;

    if-eqz p1, :cond_15

    iget-object p0, p0, Landroidx/appcompat/app/a0;->l:Landroidx/appcompat/app/q;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1, v7, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m(Landroidx/appcompat/view/menu/p;Landroidx/appcompat/app/q;)V

    :cond_15
    return v1

    :cond_16
    iput-boolean v1, p1, Landroidx/appcompat/app/z;->o:Z

    :cond_17
    iget-object v3, p1, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/p;->z()V

    iget-object v3, p1, Landroidx/appcompat/app/z;->p:Landroid/os/Bundle;

    if-eqz v3, :cond_18

    iget-object v4, p1, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/p;->s(Landroid/os/Bundle;)V

    iput-object v7, p1, Landroidx/appcompat/app/z;->p:Landroid/os/Bundle;

    :cond_18
    iget-object v3, p1, Landroidx/appcompat/app/z;->g:Landroid/view/View;

    iget-object v4, p1, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    invoke-interface {v0, v1, v3, v4}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_1a

    if-eqz v5, :cond_19

    iget-object p2, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/widget/y0;

    if-eqz p2, :cond_19

    iget-object p0, p0, Landroidx/appcompat/app/a0;->l:Landroidx/appcompat/app/q;

    check-cast p2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p2, v7, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m(Landroidx/appcompat/view/menu/p;Landroidx/appcompat/app/q;)V

    :cond_19
    iget-object p0, p1, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/p;->y()V

    return v1

    :cond_1a
    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_5

    :cond_1b
    const/4 p2, -0x1

    :goto_5
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_1c

    move p2, v2

    goto :goto_6

    :cond_1c
    move p2, v1

    :goto_6
    iget-object v0, p1, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/p;->setQwertyMode(Z)V

    iget-object p2, p1, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/p;->y()V

    :cond_1d
    iput-boolean v2, p1, Landroidx/appcompat/app/z;->k:Z

    iput-boolean v1, p1, Landroidx/appcompat/app/z;->l:Z

    iput-object p1, p0, Landroidx/appcompat/app/a0;->G:Landroidx/appcompat/app/z;

    return v2
.end method

.method public final E()V
    .locals 1

    iget-boolean p0, p0, Landroidx/appcompat/app/a0;->t:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Window feature must be requested before adding content"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final F(IZ)Z
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/app/a0;->d:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroidx/appcompat/app/a0;->q(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object p1

    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->P:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/a0;->c:Ljava/lang/Object;

    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/appcompat/app/a0;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-nez v4, :cond_0

    move v0, v2

    goto :goto_2

    :cond_0
    :try_start_0
    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v5, v3, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x100c0000

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroidx/appcompat/app/a0;->O:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "AppCompatDelegate"

    const-string v4, "Exception while getting ActivityInfo"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v2, p0, Landroidx/appcompat/app/a0;->O:Z

    :cond_2
    :goto_1
    iput-boolean v1, p0, Landroidx/appcompat/app/a0;->P:Z

    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->O:Z

    :goto_2
    iget-object v3, p0, Landroidx/appcompat/app/a0;->L:Landroid/content/res/Configuration;

    if-nez v3, :cond_3

    iget-object v3, p0, Landroidx/appcompat/app/a0;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    :cond_3
    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    if-eq v3, p1, :cond_5

    if-eqz p2, :cond_5

    if-nez v0, :cond_5

    iget-boolean p2, p0, Landroidx/appcompat/app/a0;->I:Z

    if-eqz p2, :cond_5

    sget-boolean p2, Landroidx/appcompat/app/a0;->b0:Z

    if-nez p2, :cond_4

    iget-boolean p2, p0, Landroidx/appcompat/app/a0;->J:Z

    if-eqz p2, :cond_5

    :cond_4
    iget-object p2, p0, Landroidx/appcompat/app/a0;->c:Ljava/lang/Object;

    instance-of v4, p2, Landroid/app/Activity;

    if-eqz v4, :cond_5

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->isChild()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Landroidx/appcompat/app/a0;->c:Ljava/lang/Object;

    check-cast p2, Landroid/app/Activity;

    sget v2, Lv/a;->b:I

    invoke-virtual {p2}, Landroid/app/Activity;->recreate()V

    move v2, v1

    :cond_5
    if-nez v2, :cond_6

    if-eq v3, p1, :cond_6

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/a0;->G(IZ)V

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    if-eqz v1, :cond_7

    iget-object p0, p0, Landroidx/appcompat/app/a0;->c:Ljava/lang/Object;

    instance-of p1, p0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz p1, :cond_7

    check-cast p0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_7
    return v1
.end method

.method public final G(IZ)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/app/a0;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, -0x31

    or-int/2addr p1, v2

    iput p1, v1, Landroid/content/res/Configuration;->uiMode:I

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    iget p1, p0, Landroidx/appcompat/app/a0;->N:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/a0;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->setTheme(I)V

    iget-object p1, p0, Landroidx/appcompat/app/a0;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget v0, p0, Landroidx/appcompat/app/a0;->N:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_0
    if-eqz p2, :cond_2

    iget-object p1, p0, Landroidx/appcompat/app/a0;->c:Ljava/lang/Object;

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_2

    check-cast p1, Landroid/app/Activity;

    instance-of p2, p1, Landroidx/lifecycle/n;

    if-eqz p2, :cond_1

    move-object p0, p1

    check-cast p0, Landroidx/lifecycle/n;

    invoke-interface {p0}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/i;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/p;

    iget-object p0, p0, Landroidx/lifecycle/p;->b:Landroidx/lifecycle/Lifecycle$State;

    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, p2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1, v1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    iget-boolean p2, p0, Landroidx/appcompat/app/a0;->J:Z

    if-eqz p2, :cond_2

    iget-boolean p0, p0, Landroidx/appcompat/app/a0;->K:Z

    if-nez p0, :cond_2

    invoke-virtual {p1, v1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final H(Lh0/f1;Landroid/graphics/Rect;)I
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lh0/f1;->d()I

    move-result v1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/appcompat/app/a0;->o:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v3, 0x8

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_13

    iget-object v2, p0, Landroidx/appcompat/app/a0;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Landroidx/appcompat/app/a0;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_11

    iget-object v4, p0, Landroidx/appcompat/app/a0;->W:Landroid/graphics/Rect;

    if-nez v4, :cond_2

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroidx/appcompat/app/a0;->W:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroidx/appcompat/app/a0;->X:Landroid/graphics/Rect;

    :cond_2
    iget-object v4, p0, Landroidx/appcompat/app/a0;->W:Landroid/graphics/Rect;

    iget-object v6, p0, Landroidx/appcompat/app/a0;->X:Landroid/graphics/Rect;

    if-nez p1, :cond_3

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lh0/f1;->b()I

    move-result p2

    invoke-virtual {p1}, Lh0/f1;->d()I

    move-result v7

    invoke-virtual {p1}, Lh0/f1;->c()I

    move-result v8

    invoke-virtual {p1}, Lh0/f1;->a()I

    move-result p1

    invoke-virtual {v4, p2, v7, v8, p1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    iget-object p1, p0, Landroidx/appcompat/app/a0;->u:Landroid/view/ViewGroup;

    sget-object p2, Landroidx/appcompat/widget/d3;->a:Ljava/lang/reflect/Method;

    if-eqz p2, :cond_4

    :try_start_0
    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "ViewUtils"

    const-string v6, "Could not invoke computeFitSystemWindows"

    invoke-static {p2, v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    iget p1, v4, Landroid/graphics/Rect;->top:I

    iget p2, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroidx/appcompat/app/a0;->u:Landroid/view/ViewGroup;

    sget-object v7, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v6}, Lh0/g0;->a(Landroid/view/View;)Lh0/f1;

    move-result-object v6

    if-nez v6, :cond_5

    move v7, v0

    goto :goto_3

    :cond_5
    invoke-virtual {v6}, Lh0/f1;->b()I

    move-result v7

    :goto_3
    if-nez v6, :cond_6

    move v6, v0

    goto :goto_4

    :cond_6
    invoke-virtual {v6}, Lh0/f1;->c()I

    move-result v6

    :goto_4
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v8, p1, :cond_8

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v8, p2, :cond_8

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v8, v4, :cond_7

    goto :goto_5

    :cond_7
    move p2, v0

    goto :goto_6

    :cond_8
    :goto_5
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move p2, v5

    :goto_6
    iget-object v4, p0, Landroidx/appcompat/app/a0;->d:Landroid/content/Context;

    if-lez p1, :cond_9

    iget-object p1, p0, Landroidx/appcompat/app/a0;->w:Landroid/view/View;

    if-nez p1, :cond_9

    new-instance p1, Landroid/view/View;

    invoke-direct {p1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/appcompat/app/a0;->w:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v9, -0x1

    const/16 v10, 0x33

    invoke-direct {p1, v9, v8, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput v7, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v6, p0, Landroidx/appcompat/app/a0;->u:Landroid/view/ViewGroup;

    iget-object v7, p0, Landroidx/appcompat/app/a0;->w:Landroid/view/View;

    invoke-virtual {v6, v7, v9, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :cond_9
    iget-object p1, p0, Landroidx/appcompat/app/a0;->w:Landroid/view/View;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v8, v9, :cond_a

    iget v8, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v8, v7, :cond_a

    iget v8, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v8, v6, :cond_b

    :cond_a
    iput v9, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v7, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v6, p0, Landroidx/appcompat/app/a0;->w:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    :goto_7
    iget-object p1, p0, Landroidx/appcompat/app/a0;->w:Landroid/view/View;

    if-eqz p1, :cond_c

    move v6, v5

    goto :goto_8

    :cond_c
    move v6, v0

    :goto_8
    if-eqz v6, :cond_f

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Landroidx/appcompat/app/a0;->w:Landroid/view/View;

    invoke-static {p1}, Lh0/z;->g(Landroid/view/View;)I

    move-result v7

    and-int/lit16 v7, v7, 0x2000

    if-eqz v7, :cond_d

    goto :goto_9

    :cond_d
    move v5, v0

    :goto_9
    if-eqz v5, :cond_e

    sget v5, Landroidx/appcompat/R$color;->abc_decor_view_status_guard_light:I

    sget-object v7, Lx/f;->a:Ljava/lang/Object;

    invoke-static {v4, v5}, Lx/d;->a(Landroid/content/Context;I)I

    move-result v4

    goto :goto_a

    :cond_e
    sget v5, Landroidx/appcompat/R$color;->abc_decor_view_status_guard:I

    sget-object v7, Lx/f;->a:Ljava/lang/Object;

    invoke-static {v4, v5}, Lx/d;->a(Landroid/content/Context;I)I

    move-result v4

    :goto_a
    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_f
    iget-boolean p1, p0, Landroidx/appcompat/app/a0;->B:Z

    if-nez p1, :cond_10

    if-eqz v6, :cond_10

    move v1, v0

    :cond_10
    move v5, p2

    goto :goto_b

    :cond_11
    iget p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz p1, :cond_12

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v6, v0

    goto :goto_b

    :cond_12
    move v5, v0

    move v6, v5

    :goto_b
    if-eqz v5, :cond_14

    iget-object p1, p0, Landroidx/appcompat/app/a0;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c

    :cond_13
    move v6, v0

    :cond_14
    :goto_c
    iget-object p0, p0, Landroidx/appcompat/app/a0;->w:Landroid/view/View;

    if-eqz p0, :cond_16

    if-eqz v6, :cond_15

    goto :goto_d

    :cond_15
    move v0, v3

    :goto_d
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    return v1
.end method

.method public final a(Landroid/content/Context;)Landroid/content/Context;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/a0;->I:Z

    iget v1, p0, Landroidx/appcompat/app/a0;->M:I

    const/16 v2, -0x64

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/a0;->A(Landroid/content/Context;I)I

    move-result p0

    sget-boolean v1, Landroidx/appcompat/app/a0;->c0:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    instance-of v1, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_1

    invoke-static {p1, p0, v2}, Landroidx/appcompat/app/a0;->q(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    :try_start_0
    move-object v3, p1

    check-cast v3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v3, v1}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    instance-of v1, p1, Lf/e;

    if-eqz v1, :cond_2

    invoke-static {p1, p0, v2}, Landroidx/appcompat/app/a0;->q(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    :try_start_1
    move-object v3, p1

    check-cast v3, Lf/e;

    invoke-virtual {v3, v1}, Lf/e;->a(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    :cond_2
    sget-boolean v1, Landroidx/appcompat/app/a0;->b0:Z

    if-nez v1, :cond_3

    return-object p1

    :cond_3
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    const/4 v3, -0x1

    iput v3, v1, Landroid/content/res/Configuration;->uiMode:I

    const/4 v3, 0x0

    iput v3, v1, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v4, v3, Landroid/content/res/Configuration;->uiMode:I

    iput v4, v1, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v1, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v1, v3}, Landroidx/appcompat/app/a0;->v(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v2

    :cond_4
    invoke-static {p1, p0, v2}, Landroidx/appcompat/app/a0;->q(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object p0

    new-instance v1, Lf/e;

    sget v2, Landroidx/appcompat/R$style;->Theme_AppCompat_Empty:I

    invoke-direct {v1, p1, v2}, Lf/e;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p0}, Lf/e;->a(Landroid/content/res/Configuration;)V

    const/4 p0, 0x0

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, p0

    :goto_1
    move p0, v0

    :catch_2
    if-eqz p0, :cond_6

    invoke-virtual {v1}, Lf/e;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->rebase()V

    :cond_6
    return-object v1
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/a0;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object p0

    instance-of p0, p0, Landroidx/appcompat/app/a0;

    if-nez p0, :cond_1

    const-string p0, "AppCompatDelegate"

    const-string v0, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 4

    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->z:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->z()V

    iget-object v0, p0, Landroidx/appcompat/app/a0;->h:Landroidx/appcompat/app/k0;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/appcompat/app/k0;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/appcompat/R$bool;->abc_action_bar_embed_tabs:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/k0;->d(Z)V

    :cond_0
    invoke-static {}, Landroidx/appcompat/widget/c0;->a()Landroidx/appcompat/widget/c0;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/a0;->d:Landroid/content/Context;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Landroidx/appcompat/widget/c0;->a:Landroidx/appcompat/widget/r1;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v2, Landroidx/appcompat/widget/r1;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/d;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lk/d;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p0, Landroidx/appcompat/app/a0;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroidx/appcompat/app/a0;->L:Landroid/content/res/Configuration;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/a0;->k(Z)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v2

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final d()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/a0;->I:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/a0;->k(Z)Z

    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->u()V

    iget-object v1, p0, Landroidx/appcompat/app/a0;->c:Ljava/lang/Object;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    :try_start_0
    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, v2}, Ly1/l;->u0(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/app/a0;->h:Landroidx/appcompat/app/k0;

    if-nez v1, :cond_0

    iput-boolean v0, p0, Landroidx/appcompat/app/a0;->V:Z

    goto :goto_1

    :cond_0
    iget-boolean v2, v1, Landroidx/appcompat/app/k0;->h:Z

    if-nez v2, :cond_1

    iget-object v2, v1, Landroidx/appcompat/app/k0;->e:Landroidx/appcompat/widget/z0;

    check-cast v2, Landroidx/appcompat/widget/a3;

    iget v3, v2, Landroidx/appcompat/widget/a3;->b:I

    iput-boolean v0, v1, Landroidx/appcompat/app/k0;->h:Z

    and-int/lit8 v1, v3, -0x5

    const/4 v3, 0x4

    or-int/2addr v1, v3

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/a3;->a(I)V

    :cond_1
    :goto_1
    sget-object v1, Landroidx/appcompat/app/o;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Landroidx/appcompat/app/o;->f(Landroidx/appcompat/app/o;)V

    sget-object v2, Landroidx/appcompat/app/o;->a:Lk/c;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lk/c;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_2
    :goto_2
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Landroidx/appcompat/app/a0;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Landroidx/appcompat/app/a0;->L:Landroid/content/res/Configuration;

    iput-boolean v0, p0, Landroidx/appcompat/app/a0;->J:Z

    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/app/a0;->c:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/appcompat/app/o;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Landroidx/appcompat/app/o;->f(Landroidx/appcompat/app/o;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->S:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/a0;->U:Landroidx/appcompat/app/p;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/a0;->K:Z

    iget v0, p0, Landroidx/appcompat/app/a0;->M:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/a0;->c:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/appcompat/app/a0;->Z:Lk/j;

    iget-object v1, p0, Landroidx/appcompat/app/a0;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/app/a0;->M:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lk/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v0, Landroidx/appcompat/app/a0;->Z:Lk/j;

    iget-object v1, p0, Landroidx/appcompat/app/a0;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->Q:Landroidx/appcompat/app/u;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/app/w;->a()V

    :cond_3
    iget-object p0, p0, Landroidx/appcompat/app/a0;->R:Landroidx/appcompat/app/u;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/app/w;->a()V

    :cond_4
    return-void
.end method

.method public final g(I)Z
    .locals 5

    const/16 v0, 0x6d

    const/16 v1, 0x6c

    const/16 v2, 0x8

    const-string v3, "AppCompatDelegate"

    if-ne p1, v2, :cond_0

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x9

    if-ne p1, v2, :cond_1

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_1
    :goto_0
    iget-boolean v2, p0, Landroidx/appcompat/app/a0;->D:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-ne p1, v1, :cond_2

    return v3

    :cond_2
    iget-boolean v2, p0, Landroidx/appcompat/app/a0;->z:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-ne p1, v4, :cond_3

    iput-boolean v3, p0, Landroidx/appcompat/app/a0;->z:Z

    :cond_3
    if-eq p1, v4, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/4 v2, 0x5

    if-eq p1, v2, :cond_7

    const/16 v2, 0xa

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_4

    iget-object p0, p0, Landroidx/appcompat/app/a0;->e:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->E()V

    iput-boolean v4, p0, Landroidx/appcompat/app/a0;->A:Z

    return v4

    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->E()V

    iput-boolean v4, p0, Landroidx/appcompat/app/a0;->z:Z

    return v4

    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->E()V

    iput-boolean v4, p0, Landroidx/appcompat/app/a0;->B:Z

    return v4

    :cond_7
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->E()V

    iput-boolean v4, p0, Landroidx/appcompat/app/a0;->y:Z

    return v4

    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->E()V

    iput-boolean v4, p0, Landroidx/appcompat/app/a0;->x:Z

    return v4

    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->E()V

    iput-boolean v4, p0, Landroidx/appcompat/app/a0;->D:Z

    return v4
.end method

.method public final h(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->t()V

    iget-object v0, p0, Landroidx/appcompat/app/a0;->u:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Landroidx/appcompat/app/a0;->d:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object p0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/app/t;

    iget-object p0, p0, Lf/n;->a:Landroid/view/Window$Callback;

    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final i(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/app/a0;->j:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/widget/y0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/y0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/a0;->h:Landroidx/appcompat/app/k0;

    if-eqz v0, :cond_1

    iget-object p0, v0, Landroidx/appcompat/app/k0;->e:Landroidx/appcompat/widget/z0;

    check-cast p0, Landroidx/appcompat/widget/a3;

    iget-boolean v0, p0, Landroidx/appcompat/widget/a3;->h:Z

    if-nez v0, :cond_2

    iput-object p1, p0, Landroidx/appcompat/widget/a3;->i:Ljava/lang/CharSequence;

    iget v0, p0, Landroidx/appcompat/widget/a3;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/a3;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean p0, p0, Landroidx/appcompat/widget/a3;->h:Z

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lh0/q0;->k(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/appcompat/app/a0;->v:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final j(Landroidx/appcompat/view/menu/p;Landroid/view/MenuItem;)Z
    .locals 6

    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->y()Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Landroidx/appcompat/app/a0;->K:Z

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/p;->k()Landroidx/appcompat/view/menu/p;

    move-result-object p1

    iget-object p0, p0, Landroidx/appcompat/app/a0;->F:[Landroidx/appcompat/app/z;

    if-eqz p0, :cond_0

    array-length v2, p0

    move v3, v1

    goto :goto_0

    :cond_0
    move v2, v1

    move v3, v2

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    if-eqz v4, :cond_1

    iget-object v5, v4, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    if-ne v5, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_3

    iget p0, v4, Landroidx/appcompat/app/z;->a:I

    invoke-interface {v0, p0, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public final k(Z)Z
    .locals 3

    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->K:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Landroidx/appcompat/app/a0;->M:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/app/a0;->d:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/app/a0;->A(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroidx/appcompat/app/a0;->F(IZ)Z

    move-result p1

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/a0;->w(Landroid/content/Context;)Landroidx/appcompat/app/w;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/app/w;->c()V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroidx/appcompat/app/a0;->Q:Landroidx/appcompat/app/u;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/appcompat/app/w;->a()V

    :cond_3
    :goto_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Landroidx/appcompat/app/a0;->R:Landroidx/appcompat/app/u;

    if-nez v0, :cond_4

    new-instance v0, Landroidx/appcompat/app/u;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/u;-><init>(Landroidx/appcompat/app/a0;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/app/a0;->R:Landroidx/appcompat/app/u;

    :cond_4
    iget-object p0, p0, Landroidx/appcompat/app/a0;->R:Landroidx/appcompat/app/u;

    invoke-virtual {p0}, Landroidx/appcompat/app/w;->c()V

    goto :goto_2

    :cond_5
    iget-object p0, p0, Landroidx/appcompat/app/a0;->R:Landroidx/appcompat/app/u;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroidx/appcompat/app/w;->a()V

    :cond_6
    :goto_2
    return p1
.end method

.method public final l(Landroid/view/Window;)V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    instance-of v2, v0, Landroidx/appcompat/app/t;

    if-nez v2, :cond_2

    new-instance v1, Landroidx/appcompat/app/t;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/app/t;-><init>(Landroidx/appcompat/app/a0;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/app/t;

    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    sget-object v0, Landroidx/appcompat/app/a0;->a0:[I

    iget-object v1, p0, Landroidx/appcompat/app/a0;->d:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroidx/appcompat/widget/c0;->a()Landroidx/appcompat/widget/c0;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v4, v2, Landroidx/appcompat/widget/c0;->a:Landroidx/appcompat/widget/r1;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v3, v5}, Landroidx/appcompat/widget/r1;->f(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    move-object v2, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-object p1, p0, Landroidx/appcompat/app/a0;->e:Landroid/view/Window;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final m(ILandroidx/appcompat/app/z;Landroidx/appcompat/view/menu/p;)V
    .locals 2

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/a0;->F:[Landroidx/appcompat/app/z;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p2, v0, p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p3, p2, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    :cond_1
    if-eqz p2, :cond_2

    iget-boolean p2, p2, Landroidx/appcompat/app/z;->m:Z

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-boolean p2, p0, Landroidx/appcompat/app/a0;->K:Z

    if-nez p2, :cond_3

    iget-object p0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/app/t;

    iget-object p0, p0, Lf/n;->a:Landroid/view/Window$Callback;

    invoke-interface {p0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_3
    return-void
.end method

.method public final n(Landroidx/appcompat/view/menu/p;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->E:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/a0;->E:Z

    iget-object v0, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/widget/y0;

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l()V

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/z0;

    check-cast v0, Landroidx/appcompat/widget/a3;

    iget-object v0, v0, Landroidx/appcompat/widget/a3;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/widget/o;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/o;->e()Z

    iget-object v0, v0, Landroidx/appcompat/widget/o;->u:Landroidx/appcompat/widget/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/a0;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroidx/appcompat/view/menu/a0;->j:Landroidx/appcompat/view/menu/y;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/g0;->dismiss()V

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->y()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroidx/appcompat/app/a0;->K:Z

    if-nez v1, :cond_2

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/app/a0;->E:Z

    return-void
.end method

.method public final o(Landroidx/appcompat/app/z;Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget v2, p1, Landroidx/appcompat/app/z;->a:I

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/widget/y0;

    if-eqz v2, :cond_2

    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l()V

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/z0;

    check-cast v2, Landroidx/appcompat/widget/a3;

    iget-object v2, v2, Landroidx/appcompat/widget/a3;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v2, :cond_1

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/widget/o;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/appcompat/widget/o;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    iget-object p1, p1, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->n(Landroidx/appcompat/view/menu/p;)V

    return-void

    :cond_2
    iget-object v2, p0, Landroidx/appcompat/app/a0;->d:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-boolean v4, p1, Landroidx/appcompat/app/z;->m:Z

    if-eqz v4, :cond_3

    iget-object v4, p1, Landroidx/appcompat/app/z;->e:Landroidx/appcompat/app/x;

    if-eqz v4, :cond_3

    invoke-interface {v2, v4}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_3

    iget p2, p1, Landroidx/appcompat/app/z;->a:I

    invoke-virtual {p0, p2, p1, v3}, Landroidx/appcompat/app/a0;->m(ILandroidx/appcompat/app/z;Landroidx/appcompat/view/menu/p;)V

    :cond_3
    iput-boolean v1, p1, Landroidx/appcompat/app/z;->k:Z

    iput-boolean v1, p1, Landroidx/appcompat/app/z;->l:Z

    iput-boolean v1, p1, Landroidx/appcompat/app/z;->m:Z

    iput-object v3, p1, Landroidx/appcompat/app/z;->f:Landroid/view/View;

    iput-boolean v0, p1, Landroidx/appcompat/app/z;->n:Z

    iget-object p2, p0, Landroidx/appcompat/app/a0;->G:Landroidx/appcompat/app/z;

    if-ne p2, p1, :cond_4

    iput-object v3, p0, Landroidx/appcompat/app/a0;->G:Landroidx/appcompat/app/z;

    :cond_4
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/a0;->Y:Landroidx/appcompat/app/e0;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 2
    sget-object p1, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    iget-object v1, p0, Landroidx/appcompat/app/a0;->d:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_viewInflaterClass:I

    .line 4
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Landroidx/appcompat/app/e0;

    invoke-direct {p1}, Landroidx/appcompat/app/e0;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/a0;->Y:Landroidx/appcompat/app/e0;

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/e0;

    iput-object v1, p0, Landroidx/appcompat/app/a0;->Y:Landroidx/appcompat/app/e0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to instantiate custom view inflater "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Falling back to default."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AppCompatDelegate"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    new-instance p1, Landroidx/appcompat/app/e0;

    invoke-direct {p1}, Landroidx/appcompat/app/e0;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/a0;->Y:Landroidx/appcompat/app/e0;

    .line 11
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/app/a0;->Y:Landroidx/appcompat/app/e0;

    .line 12
    sget p1, Landroidx/appcompat/widget/b3;->a:I

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    sget-object p1, Landroidx/appcompat/R$styleable;->View:[I

    invoke-virtual {p3, p4, p1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 15
    sget v1, Landroidx/appcompat/R$styleable;->View_theme:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_2

    const-string v2, "AppCompatViewInflater"

    const-string v3, "app:theme is now deprecated. Please move to using android:theme instead."

    .line 16
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_4

    .line 18
    instance-of p1, p3, Lf/e;

    if-eqz p1, :cond_3

    move-object p1, p3

    check-cast p1, Lf/e;

    .line 19
    iget p1, p1, Lf/e;->a:I

    if-eq p1, v1, :cond_4

    .line 20
    :cond_3
    new-instance p1, Lf/e;

    invoke-direct {p1, p3, v1}, Lf/e;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_4
    move-object p1, p3

    .line 21
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v1, "Button"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_2

    :cond_5
    const/16 v1, 0xd

    goto/16 :goto_3

    :sswitch_1
    const-string v1, "EditText"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_2

    :cond_6
    const/16 v1, 0xc

    goto/16 :goto_3

    :sswitch_2
    const-string v1, "CheckBox"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_2

    :cond_7
    const/16 v1, 0xb

    goto/16 :goto_3

    :sswitch_3
    const-string v1, "AutoCompleteTextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_2

    :cond_8
    const/16 v1, 0xa

    goto/16 :goto_3

    :sswitch_4
    const-string v1, "ImageView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_2

    :cond_9
    const/16 v1, 0x9

    goto/16 :goto_3

    :sswitch_5
    const-string v1, "ToggleButton"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_2

    :cond_a
    const/16 v1, 0x8

    goto/16 :goto_3

    :sswitch_6
    const-string v1, "RadioButton"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2

    :cond_b
    const/4 v1, 0x7

    goto :goto_3

    :sswitch_7
    const-string v1, "Spinner"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_2

    :cond_c
    const/4 v1, 0x6

    goto :goto_3

    :sswitch_8
    const-string v1, "SeekBar"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2

    :cond_d
    const/4 v1, 0x5

    goto :goto_3

    :sswitch_9
    const-string v1, "ImageButton"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_2

    :cond_e
    const/4 v1, 0x4

    goto :goto_3

    :sswitch_a
    const-string v1, "TextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_2

    :cond_f
    move v1, v3

    goto :goto_3

    :sswitch_b
    const-string v1, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_2

    :cond_10
    const/4 v1, 0x2

    goto :goto_3

    :sswitch_c
    const-string v1, "CheckedTextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_2

    :cond_11
    move v1, v2

    goto :goto_3

    :sswitch_d
    const-string v1, "RatingBar"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_2

    :cond_12
    move v1, v0

    goto :goto_3

    :goto_2
    move v1, v4

    :goto_3
    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    move-object v1, v5

    goto :goto_4

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/e0;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatButton;

    move-result-object v1

    .line 23
    invoke-virtual {p0, v1, p2}, Landroidx/appcompat/app/e0;->g(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_4

    .line 24
    :pswitch_1
    new-instance v1, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 25
    :pswitch_2
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/e0;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v1

    .line 26
    invoke-virtual {p0, v1, p2}, Landroidx/appcompat/app/e0;->g(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_4

    .line 27
    :pswitch_3
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/e0;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    move-result-object v1

    .line 28
    invoke-virtual {p0, v1, p2}, Landroidx/appcompat/app/e0;->g(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_4

    .line 29
    :pswitch_4
    new-instance v1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 30
    :pswitch_5
    new-instance v1, Landroidx/appcompat/widget/AppCompatToggleButton;

    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/AppCompatToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 31
    :pswitch_6
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/e0;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatRadioButton;

    move-result-object v1

    .line 32
    invoke-virtual {p0, v1, p2}, Landroidx/appcompat/app/e0;->g(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_4

    .line 33
    :pswitch_7
    new-instance v1, Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 34
    :pswitch_8
    new-instance v1, Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 35
    :pswitch_9
    new-instance v1, Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 36
    :pswitch_a
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/e0;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v1

    .line 37
    invoke-virtual {p0, v1, p2}, Landroidx/appcompat/app/e0;->g(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_4

    .line 38
    :pswitch_b
    new-instance v1, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;

    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 39
    :pswitch_c
    new-instance v1, Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 40
    :pswitch_d
    new-instance v1, Landroidx/appcompat/widget/AppCompatRatingBar;

    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_4
    if-nez v1, :cond_17

    if-eq p3, p1, :cond_17

    .line 41
    iget-object p3, p0, Landroidx/appcompat/app/e0;->a:[Ljava/lang/Object;

    const-string v1, "view"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string p2, "class"

    .line 42
    invoke-interface {p4, v5, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 43
    :cond_13
    :try_start_1
    aput-object p1, p3, v0

    .line 44
    aput-object p4, p3, v2

    const/16 v1, 0x2e

    .line 45
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v4, v1, :cond_16

    move v1, v0

    .line 46
    :goto_5
    sget-object v4, Landroidx/appcompat/app/e0;->d:[Ljava/lang/String;

    if-ge v1, v3, :cond_15

    .line 47
    aget-object v4, v4, v1

    invoke-virtual {p0, p1, p2, v4}, Landroidx/appcompat/app/e0;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_14

    .line 48
    aput-object v5, p3, v0

    .line 49
    aput-object v5, p3, v2

    move-object v5, v4

    goto :goto_6

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 50
    :cond_15
    aput-object v5, p3, v0

    .line 51
    aput-object v5, p3, v2

    goto :goto_6

    .line 52
    :cond_16
    :try_start_2
    invoke-virtual {p0, p1, p2, v5}, Landroidx/appcompat/app/e0;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    aput-object v5, p3, v0

    .line 54
    aput-object v5, p3, v2

    move-object v5, p0

    goto :goto_6

    :catchall_1
    move-exception p0

    .line 55
    aput-object v5, p3, v0

    .line 56
    aput-object v5, p3, v2

    .line 57
    throw p0

    .line 58
    :catch_0
    aput-object v5, p3, v0

    .line 59
    aput-object v5, p3, v2

    :goto_6
    move-object v1, v5

    :cond_17
    if-eqz v1, :cond_1a

    .line 60
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 61
    instance-of p1, p0, Landroid/content/ContextWrapper;

    if-eqz p1, :cond_1a

    .line 62
    sget-object p1, Lh0/q0;->a:Ljava/util/WeakHashMap;

    .line 63
    invoke-static {v1}, Lh0/y;->a(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_7

    .line 64
    :cond_18
    sget-object p1, Landroidx/appcompat/app/e0;->c:[I

    invoke-virtual {p0, p4, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 66
    new-instance p2, Landroidx/appcompat/app/d0;

    invoke-direct {p2, v1, p1}, Landroidx/appcompat/app/d0;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    :cond_19
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1a
    :goto_7
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_d
        -0x56c015e7 -> :sswitch_c
        -0x503aa7ad -> :sswitch_b
        -0x37f7066e -> :sswitch_a
        -0x37e04bb3 -> :sswitch_9
        -0x274065a5 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/appcompat/app/a0;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final p(Landroidx/appcompat/view/menu/p;)V
    .locals 5

    iget-object p1, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/widget/y0;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l()V

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/z0;

    check-cast p1, Landroidx/appcompat/widget/a3;

    iget-object p1, p1, Landroidx/appcompat/widget/a3;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Landroidx/appcompat/widget/ActionMenuView;->s:Z

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_a

    iget-object p1, p0, Landroidx/appcompat/app/a0;->d:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/widget/y0;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l()V

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/z0;

    check-cast p1, Landroidx/appcompat/widget/a3;

    iget-object p1, p1, Landroidx/appcompat/widget/a3;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p1, :cond_4

    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/widget/o;

    if-eqz p1, :cond_3

    iget-object v2, p1, Landroidx/appcompat/widget/o;->v:Landroidx/appcompat/widget/k;

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroidx/appcompat/widget/o;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v1

    goto :goto_2

    :cond_2
    :goto_1
    move p1, v0

    :goto_2
    if-eqz p1, :cond_3

    move p1, v0

    goto :goto_3

    :cond_3
    move p1, v1

    :goto_3
    if-eqz p1, :cond_4

    move p1, v0

    goto :goto_4

    :cond_4
    move p1, v1

    :goto_4
    if-eqz p1, :cond_a

    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->y()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v2, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/widget/y0;

    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l()V

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/z0;

    check-cast v2, Landroidx/appcompat/widget/a3;

    iget-object v2, v2, Landroidx/appcompat/widget/a3;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v2, :cond_7

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/widget/o;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroidx/appcompat/widget/o;->j()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v0

    goto :goto_5

    :cond_6
    move v2, v1

    :goto_5
    if-eqz v2, :cond_7

    move v2, v0

    goto :goto_6

    :cond_7
    move v2, v1

    :goto_6
    const/16 v3, 0x6c

    if-eqz v2, :cond_8

    iget-object v0, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/widget/y0;

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g()Z

    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->K:Z

    if-nez v0, :cond_b

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/a0;->x(I)Landroidx/appcompat/app/z;

    move-result-object p0

    iget-object p0, p0, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    invoke-interface {p1, v3, p0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_7

    :cond_8
    if-eqz p1, :cond_b

    iget-boolean v2, p0, Landroidx/appcompat/app/a0;->K:Z

    if-nez v2, :cond_b

    iget-boolean v2, p0, Landroidx/appcompat/app/a0;->S:Z

    if-eqz v2, :cond_9

    iget v2, p0, Landroidx/appcompat/app/a0;->T:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/app/a0;->U:Landroidx/appcompat/app/p;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v2}, Landroidx/appcompat/app/p;->run()V

    :cond_9
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/a0;->x(I)Landroidx/appcompat/app/z;

    move-result-object v0

    iget-object v2, v0, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    if-eqz v2, :cond_b

    iget-boolean v4, v0, Landroidx/appcompat/app/z;->o:Z

    if-nez v4, :cond_b

    iget-object v4, v0, Landroidx/appcompat/app/z;->g:Landroid/view/View;

    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, v0, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p0, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/widget/y0;

    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l()V

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/z0;

    check-cast p0, Landroidx/appcompat/widget/a3;

    iget-object p0, p0, Landroidx/appcompat/widget/a3;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p0, :cond_b

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/widget/o;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroidx/appcompat/widget/o;->p()Z

    goto :goto_7

    :cond_a
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/a0;->x(I)Landroidx/appcompat/app/z;

    move-result-object p1

    iput-boolean v0, p1, Landroidx/appcompat/app/z;->n:Z

    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/a0;->o(Landroidx/appcompat/app/z;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/a0;->B(Landroidx/appcompat/app/z;Landroid/view/KeyEvent;)V

    :cond_b
    :goto_7
    return-void
.end method

.method public final r(Landroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/app/a0;->c:Ljava/lang/Object;

    instance-of v1, v0, Lh0/k;

    if-nez v1, :cond_0

    instance-of v0, v0, Landroidx/appcompat/app/c0;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lh0/q0;->a:Ljava/util/WeakHashMap;

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/app/t;

    iget-object v0, v0, Lf/n;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    move v3, v4

    :goto_0
    const/4 v5, 0x4

    if-eqz v3, :cond_7

    if-eq v0, v5, :cond_5

    if-eq v0, v2, :cond_4

    goto/16 :goto_f

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/a0;->x(I)Landroidx/appcompat/app/z;

    move-result-object v0

    iget-boolean v2, v0, Landroidx/appcompat/app/z;->m:Z

    if-nez v2, :cond_1e

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/a0;->D(Landroidx/appcompat/app/z;Landroid/view/KeyEvent;)Z

    goto/16 :goto_10

    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move v1, v4

    :goto_1
    iput-boolean v1, p0, Landroidx/appcompat/app/a0;->H:Z

    goto/16 :goto_f

    :cond_7
    if-eq v0, v5, :cond_15

    if-eq v0, v2, :cond_8

    goto/16 :goto_f

    :cond_8
    iget-object v0, p0, Landroidx/appcompat/app/a0;->n:Lf/c;

    if-eqz v0, :cond_9

    goto/16 :goto_10

    :cond_9
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/a0;->x(I)Landroidx/appcompat/app/z;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/widget/y0;

    iget-object v3, p0, Landroidx/appcompat/app/a0;->d:Landroid/content/Context;

    if-eqz v2, :cond_f

    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l()V

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/z0;

    check-cast v2, Landroidx/appcompat/widget/a3;

    iget-object v2, v2, Landroidx/appcompat/widget/a3;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_a

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v2, :cond_a

    iget-boolean v2, v2, Landroidx/appcompat/widget/ActionMenuView;->s:Z

    if-eqz v2, :cond_a

    move v2, v1

    goto :goto_2

    :cond_a
    move v2, v4

    :goto_2
    if-eqz v2, :cond_f

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/widget/y0;

    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l()V

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/z0;

    check-cast v2, Landroidx/appcompat/widget/a3;

    iget-object v2, v2, Landroidx/appcompat/widget/a3;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v2, :cond_c

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/widget/o;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroidx/appcompat/widget/o;->j()Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v1

    goto :goto_3

    :cond_b
    move v2, v4

    :goto_3
    if-eqz v2, :cond_c

    move v2, v1

    goto :goto_4

    :cond_c
    move v2, v4

    :goto_4
    if-nez v2, :cond_e

    iget-boolean v2, p0, Landroidx/appcompat/app/a0;->K:Z

    if-nez v2, :cond_12

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/a0;->D(Landroidx/appcompat/app/z;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p0, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/widget/y0;

    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l()V

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/z0;

    check-cast p0, Landroidx/appcompat/widget/a3;

    iget-object p0, p0, Landroidx/appcompat/widget/a3;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p0, :cond_12

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/widget/o;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroidx/appcompat/widget/o;->p()Z

    move-result p0

    if-eqz p0, :cond_d

    move p0, v1

    goto :goto_5

    :cond_d
    move p0, v4

    :goto_5
    if-eqz p0, :cond_12

    goto :goto_7

    :cond_e
    iget-object p0, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/widget/y0;

    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g()Z

    move-result p0

    goto :goto_9

    :cond_f
    iget-boolean v2, v0, Landroidx/appcompat/app/z;->m:Z

    if-nez v2, :cond_13

    iget-boolean v5, v0, Landroidx/appcompat/app/z;->l:Z

    if-eqz v5, :cond_10

    goto :goto_8

    :cond_10
    iget-boolean v2, v0, Landroidx/appcompat/app/z;->k:Z

    if-eqz v2, :cond_12

    iget-boolean v2, v0, Landroidx/appcompat/app/z;->o:Z

    if-eqz v2, :cond_11

    iput-boolean v4, v0, Landroidx/appcompat/app/z;->k:Z

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/a0;->D(Landroidx/appcompat/app/z;Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_6

    :cond_11
    move v2, v1

    :goto_6
    if-eqz v2, :cond_12

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/a0;->B(Landroidx/appcompat/app/z;Landroid/view/KeyEvent;)V

    :goto_7
    move p0, v1

    goto :goto_9

    :cond_12
    move p0, v4

    goto :goto_9

    :cond_13
    :goto_8
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/a0;->o(Landroidx/appcompat/app/z;Z)V

    move p0, v2

    :goto_9
    if-eqz p0, :cond_1e

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "audio"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_14

    invoke-virtual {p0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_10

    :cond_14
    const-string p0, "AppCompatDelegate"

    const-string p1, "Couldn\'t get audio manager"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_15
    iget-boolean p1, p0, Landroidx/appcompat/app/a0;->H:Z

    iput-boolean v4, p0, Landroidx/appcompat/app/a0;->H:Z

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/a0;->x(I)Landroidx/appcompat/app/z;

    move-result-object v0

    iget-boolean v2, v0, Landroidx/appcompat/app/z;->m:Z

    if-eqz v2, :cond_16

    if-nez p1, :cond_1e

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/a0;->o(Landroidx/appcompat/app/z;Z)V

    goto :goto_10

    :cond_16
    iget-object p1, p0, Landroidx/appcompat/app/a0;->n:Lf/c;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lf/c;->a()V

    goto :goto_d

    :cond_17
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->z()V

    iget-object p0, p0, Landroidx/appcompat/app/a0;->h:Landroidx/appcompat/app/k0;

    if-eqz p0, :cond_1c

    iget-object p0, p0, Landroidx/appcompat/app/k0;->e:Landroidx/appcompat/widget/z0;

    if-eqz p0, :cond_1b

    check-cast p0, Landroidx/appcompat/widget/a3;

    iget-object p0, p0, Landroidx/appcompat/widget/a3;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/w2;

    if-eqz p0, :cond_18

    iget-object p1, p0, Landroidx/appcompat/widget/w2;->b:Landroidx/appcompat/view/menu/r;

    if-eqz p1, :cond_18

    move p1, v1

    goto :goto_a

    :cond_18
    move p1, v4

    :goto_a
    if-eqz p1, :cond_1b

    if-nez p0, :cond_19

    const/4 p0, 0x0

    goto :goto_b

    :cond_19
    iget-object p0, p0, Landroidx/appcompat/widget/w2;->b:Landroidx/appcompat/view/menu/r;

    :goto_b
    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r;->collapseActionView()Z

    :cond_1a
    move p0, v1

    goto :goto_c

    :cond_1b
    move p0, v4

    :goto_c
    if-eqz p0, :cond_1c

    :goto_d
    move p0, v1

    goto :goto_e

    :cond_1c
    move p0, v4

    :goto_e
    if-eqz p0, :cond_1d

    goto :goto_10

    :cond_1d
    :goto_f
    move v1, v4

    :cond_1e
    :goto_10
    return v1
.end method

.method public final s(I)V
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->x(I)Landroidx/appcompat/app/z;

    move-result-object v0

    iget-object v1, v0, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/p;->u(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, v0, Landroidx/appcompat/app/z;->p:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/p;->z()V

    iget-object v1, v0, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/p;->clear()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/app/z;->o:Z

    iput-boolean v1, v0, Landroidx/appcompat/app/z;->n:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/widget/y0;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->x(I)Landroidx/appcompat/app/z;

    move-result-object v0

    iput-boolean p1, v0, Landroidx/appcompat/app/z;->k:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/a0;->D(Landroidx/appcompat/app/z;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public final t()V
    .locals 11

    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->t:Z

    if-nez v0, :cond_1b

    sget-object v0, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    iget-object v1, p0, Landroidx/appcompat/app/a0;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowNoTitle:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/a0;->g(I)Z

    goto :goto_0

    :cond_0
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x6c

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/a0;->g(I)Z

    :cond_1
    :goto_0
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/16 v5, 0x6d

    if-eqz v2, :cond_2

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/a0;->g(I)Z

    :cond_2
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/a0;->g(I)Z

    :cond_3
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/appcompat/app/a0;->C:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->u()V

    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v2, p0, Landroidx/appcompat/app/a0;->D:Z

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v2, :cond_9

    iget-boolean v2, p0, Landroidx/appcompat/app/a0;->C:Z

    if-eqz v2, :cond_4

    sget v2, Landroidx/appcompat/R$layout;->abc_dialog_title_material:I

    invoke-virtual {v0, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-boolean v3, p0, Landroidx/appcompat/app/a0;->A:Z

    iput-boolean v3, p0, Landroidx/appcompat/app/a0;->z:Z

    goto/16 :goto_2

    :cond_4
    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->z:Z

    if-eqz v0, :cond_8

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v8, Landroidx/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v2, v8, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_5

    new-instance v2, Lf/e;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v2, v1, v0}, Lf/e;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    move-object v2, v1

    :goto_1
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Landroidx/appcompat/R$layout;->abc_screen_toolbar:I

    invoke-virtual {v0, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v2, Landroidx/appcompat/R$id;->decor_content_parent:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/y0;

    iput-object v2, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/widget/y0;

    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->y()Landroid/view/Window$Callback;

    move-result-object v8

    invoke-interface {v2, v8}, Landroidx/appcompat/widget/y0;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean v2, p0, Landroidx/appcompat/app/a0;->A:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/widget/y0;

    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k(I)V

    :cond_6
    iget-boolean v2, p0, Landroidx/appcompat/app/a0;->x:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/widget/y0;

    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v2, v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k(I)V

    :cond_7
    iget-boolean v2, p0, Landroidx/appcompat/app/a0;->y:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/widget/y0;

    const/4 v5, 0x5

    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k(I)V

    goto :goto_2

    :cond_8
    move-object v0, v7

    goto :goto_2

    :cond_9
    iget-boolean v2, p0, Landroidx/appcompat/app/a0;->B:Z

    if-eqz v2, :cond_a

    sget v2, Landroidx/appcompat/R$layout;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v0, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_a
    sget v2, Landroidx/appcompat/R$layout;->abc_screen_simple:I

    invoke-virtual {v0, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :cond_b
    :goto_2
    if-eqz v0, :cond_19

    new-instance v2, Landroidx/appcompat/app/q;

    invoke-direct {v2, p0, v3}, Landroidx/appcompat/app/q;-><init>(Landroidx/appcompat/app/a0;I)V

    sget-object v5, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, v2}, Lh0/f0;->u(Landroid/view/View;Lh0/q;)V

    iget-object v2, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/widget/y0;

    if-nez v2, :cond_c

    sget v2, Landroidx/appcompat/R$id;->title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroidx/appcompat/app/a0;->v:Landroid/widget/TextView;

    :cond_c
    sget-object v2, Landroidx/appcompat/widget/d3;->a:Ljava/lang/reflect/Method;

    const-string v2, "Could not invoke makeOptionalFitsSystemWindows"

    const-string v5, "ViewUtils"

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "makeOptionalFitsSystemWindows"

    new-array v10, v3, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v9

    if-nez v9, :cond_d

    invoke-virtual {v8, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_d
    new-array v9, v3, [Ljava/lang/Object;

    invoke-virtual {v8, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v8

    invoke-static {v5, v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1
    move-exception v8

    invoke-static {v5, v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_2
    const-string v2, "Could not find method makeOptionalFitsSystemWindows. Oh well..."

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    sget v2, Landroidx/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v5, p0, Landroidx/appcompat/app/a0;->e:Landroid/view/Window;

    const v8, 0x1020002

    invoke-virtual {v5, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_f

    :goto_4
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lez v9, :cond_e

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_e
    const/4 v9, -0x1

    invoke-virtual {v5, v9}, Landroid/view/View;->setId(I)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setId(I)V

    instance-of v9, v5, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_f

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5, v7}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    iget-object v5, p0, Landroidx/appcompat/app/a0;->e:Landroid/view/Window;

    invoke-virtual {v5, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v5, Landroidx/appcompat/app/q;

    invoke-direct {v5, p0, v6}, Landroidx/appcompat/app/q;-><init>(Landroidx/appcompat/app/a0;I)V

    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/x0;)V

    iput-object v0, p0, Landroidx/appcompat/app/a0;->u:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/appcompat/app/a0;->c:Ljava/lang/Object;

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_10

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_5

    :cond_10
    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/lang/CharSequence;

    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/widget/y0;

    if-eqz v2, :cond_11

    invoke-interface {v2, v0}, Landroidx/appcompat/widget/y0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_11
    iget-object v2, p0, Landroidx/appcompat/app/a0;->h:Landroidx/appcompat/app/k0;

    if-eqz v2, :cond_12

    iget-object v2, v2, Landroidx/appcompat/app/k0;->e:Landroidx/appcompat/widget/z0;

    check-cast v2, Landroidx/appcompat/widget/a3;

    iget-boolean v5, v2, Landroidx/appcompat/widget/a3;->h:Z

    if-nez v5, :cond_13

    iput-object v0, v2, Landroidx/appcompat/widget/a3;->i:Ljava/lang/CharSequence;

    iget v5, v2, Landroidx/appcompat/widget/a3;->b:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_13

    iget-object v5, v2, Landroidx/appcompat/widget/a3;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v5, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v2, v2, Landroidx/appcompat/widget/a3;->h:Z

    if-eqz v2, :cond_13

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0}, Lh0/q0;->k(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_12
    iget-object v2, p0, Landroidx/appcompat/app/a0;->v:Landroid/widget/TextView;

    if-eqz v2, :cond_13

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    :goto_6
    iget-object v0, p0, Landroidx/appcompat/app/a0;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v2, p0, Landroidx/appcompat/app/a0;->e:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    iget-object v8, v0, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/graphics/Rect;

    invoke-virtual {v8, v5, v6, v7, v2}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lh0/c0;->c(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_14
    sget-object v2, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_15

    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_15
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_16

    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_16
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_17

    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_17
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_18

    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_18
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iput-boolean v4, p0, Landroidx/appcompat/app/a0;->t:Z

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/a0;->x(I)Landroidx/appcompat/app/z;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/appcompat/app/a0;->K:Z

    if-nez v1, :cond_1b

    iget-object v0, v0, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    if-nez v0, :cond_1b

    iget v0, p0, Landroidx/appcompat/app/a0;->T:I

    const/16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/appcompat/app/a0;->T:I

    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->S:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/a0;->U:Landroidx/appcompat/app/p;

    invoke-static {v0, v1}, Lh0/z;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v4, p0, Landroidx/appcompat/app/a0;->S:Z

    goto :goto_7

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroidx/appcompat/app/a0;->z:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/a0;->A:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/a0;->C:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/a0;->B:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroidx/appcompat/app/a0;->D:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    :goto_7
    return-void
.end method

.method public final u()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/a0;->c:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/a0;->l(Landroid/view/Window;)V

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/a0;->e:Landroid/view/Window;

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "We have not been given a Window"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final w(Landroid/content/Context;)Landroidx/appcompat/app/w;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/app/a0;->Q:Landroidx/appcompat/app/u;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/appcompat/app/u;

    sget-object v1, Landroidx/appcompat/app/d;->e:Landroidx/appcompat/app/d;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Landroidx/appcompat/app/d;

    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    invoke-direct {v1, p1, v2}, Landroidx/appcompat/app/d;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v1, Landroidx/appcompat/app/d;->e:Landroidx/appcompat/app/d;

    :cond_0
    sget-object p1, Landroidx/appcompat/app/d;->e:Landroidx/appcompat/app/d;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/u;-><init>(Landroidx/appcompat/app/a0;Landroidx/appcompat/app/d;)V

    iput-object v0, p0, Landroidx/appcompat/app/a0;->Q:Landroidx/appcompat/app/u;

    :cond_1
    iget-object p0, p0, Landroidx/appcompat/app/a0;->Q:Landroidx/appcompat/app/u;

    return-object p0
.end method

.method public final x(I)Landroidx/appcompat/app/z;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/app/a0;->F:[Landroidx/appcompat/app/z;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Landroidx/appcompat/app/z;

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v1, p0, Landroidx/appcompat/app/a0;->F:[Landroidx/appcompat/app/z;

    move-object v0, v1

    :cond_2
    aget-object p0, v0, p1

    if-nez p0, :cond_3

    new-instance p0, Landroidx/appcompat/app/z;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/z;-><init>(I)V

    aput-object p0, v0, p1

    :cond_3
    return-object p0
.end method

.method public final y()Landroid/view/Window$Callback;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/a0;->e:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    return-object p0
.end method

.method public final z()V
    .locals 5

    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->t()V

    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->z:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/appcompat/app/a0;->h:Landroidx/appcompat/app/k0;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/a0;->c:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    new-instance v1, Landroidx/appcompat/app/k0;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Landroidx/appcompat/app/a0;->A:Z

    invoke-direct {v1, v0, v2}, Landroidx/appcompat/app/k0;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Landroidx/appcompat/app/a0;->h:Landroidx/appcompat/app/k0;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/app/Dialog;

    if-eqz v1, :cond_2

    new-instance v1, Landroidx/appcompat/app/k0;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/k0;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Landroidx/appcompat/app/a0;->h:Landroidx/appcompat/app/k0;

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/a0;->h:Landroidx/appcompat/app/k0;

    if-eqz v0, :cond_4

    iget-boolean p0, p0, Landroidx/appcompat/app/a0;->V:Z

    iget-boolean v1, v0, Landroidx/appcompat/app/k0;->h:Z

    if-nez v1, :cond_4

    const/4 v1, 0x4

    if-eqz p0, :cond_3

    move p0, v1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    iget-object v2, v0, Landroidx/appcompat/app/k0;->e:Landroidx/appcompat/widget/z0;

    check-cast v2, Landroidx/appcompat/widget/a3;

    iget v3, v2, Landroidx/appcompat/widget/a3;->b:I

    const/4 v4, 0x1

    iput-boolean v4, v0, Landroidx/appcompat/app/k0;->h:Z

    and-int/2addr p0, v1

    and-int/lit8 v0, v3, -0x5

    or-int/2addr p0, v0

    invoke-virtual {v2, p0}, Landroidx/appcompat/widget/a3;->a(I)V

    :cond_4
    :goto_2
    return-void
.end method
