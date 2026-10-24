.class public final Lh0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lh0/b;

.field public static final f:Lh0/b;

.field public static final g:Lh0/b;

.field public static final h:Lh0/b;

.field public static final i:Lh0/b;

.field public static final j:Lh0/b;

.field public static final k:Lh0/b;

.field public static final l:Lh0/b;

.field public static final m:Lh0/b;

.field public static final n:Lh0/b;

.field public static final o:Lh0/b;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I

.field public final c:Ljava/lang/Class;

.field public final d:Lh0/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    new-instance v0, Lh0/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lh0/b;-><init>(I)V

    sput-object v0, Lh0/b;->e:Lh0/b;

    new-instance v0, Lh0/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lh0/b;-><init>(I)V

    sput-object v0, Lh0/b;->f:Lh0/b;

    new-instance v0, Lh0/b;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lh0/b;-><init>(I)V

    new-instance v0, Lh0/b;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lh0/b;-><init>(I)V

    new-instance v0, Lh0/b;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lh0/b;-><init>(I)V

    sput-object v0, Lh0/b;->g:Lh0/b;

    new-instance v0, Lh0/b;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lh0/b;-><init>(I)V

    new-instance v0, Lh0/b;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lh0/b;-><init>(I)V

    new-instance v0, Lh0/b;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lh0/b;-><init>(I)V

    new-instance v0, Lh0/b;

    const/16 v1, 0x100

    const-class v2, Lh0/h;

    invoke-direct {v0, v1, v2}, Lh0/b;-><init>(ILjava/lang/Class;)V

    new-instance v0, Lh0/b;

    const/16 v1, 0x200

    invoke-direct {v0, v1, v2}, Lh0/b;-><init>(ILjava/lang/Class;)V

    new-instance v0, Lh0/b;

    const/16 v1, 0x400

    const-class v2, Lh0/i;

    invoke-direct {v0, v1, v2}, Lh0/b;-><init>(ILjava/lang/Class;)V

    new-instance v0, Lh0/b;

    const/16 v1, 0x800

    invoke-direct {v0, v1, v2}, Lh0/b;-><init>(ILjava/lang/Class;)V

    new-instance v0, Lh0/b;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lh0/b;-><init>(I)V

    sput-object v0, Lh0/b;->h:Lh0/b;

    new-instance v0, Lh0/b;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Lh0/b;-><init>(I)V

    sput-object v0, Lh0/b;->i:Lh0/b;

    new-instance v0, Lh0/b;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Lh0/b;-><init>(I)V

    new-instance v0, Lh0/b;

    const v1, 0x8000

    invoke-direct {v0, v1}, Lh0/b;-><init>(I)V

    new-instance v0, Lh0/b;

    const/high16 v1, 0x10000

    invoke-direct {v0, v1}, Lh0/b;-><init>(I)V

    new-instance v0, Lh0/b;

    const/high16 v1, 0x20000

    const-class v2, Lh0/m;

    invoke-direct {v0, v1, v2}, Lh0/b;-><init>(ILjava/lang/Class;)V

    new-instance v0, Lh0/b;

    const/high16 v1, 0x40000

    invoke-direct {v0, v1}, Lh0/b;-><init>(I)V

    sput-object v0, Lh0/b;->j:Lh0/b;

    new-instance v0, Lh0/b;

    const/high16 v1, 0x80000

    invoke-direct {v0, v1}, Lh0/b;-><init>(I)V

    sput-object v0, Lh0/b;->k:Lh0/b;

    new-instance v0, Lh0/b;

    const/high16 v1, 0x100000

    invoke-direct {v0, v1}, Lh0/b;-><init>(I)V

    sput-object v0, Lh0/b;->l:Lh0/b;

    new-instance v0, Lh0/b;

    const/high16 v1, 0x200000

    const-class v2, Lh0/n;

    invoke-direct {v0, v1, v2}, Lh0/b;-><init>(ILjava/lang/Class;)V

    new-instance v3, Lh0/b;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_ON_SCREEN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v5, 0x1020036

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lh0/b;-><init>(Ljava/lang/Object;ILjava/lang/String;Lh0/o;Ljava/lang/Class;)V

    new-instance v9, Lh0/b;

    sget-object v10, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v11, 0x1020037

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-class v14, Lh0/k;

    invoke-direct/range {v9 .. v14}, Lh0/b;-><init>(Ljava/lang/Object;ILjava/lang/String;Lh0/o;Ljava/lang/Class;)V

    new-instance v7, Lh0/b;

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x1020038

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lh0/b;-><init>(Ljava/lang/Object;ILjava/lang/String;Lh0/o;Ljava/lang/Class;)V

    sput-object v7, Lh0/b;->m:Lh0/b;

    new-instance v8, Lh0/b;

    sget-object v9, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v10, 0x1020039

    const/4 v11, 0x0

    invoke-direct/range {v8 .. v13}, Lh0/b;-><init>(Ljava/lang/Object;ILjava/lang/String;Lh0/o;Ljava/lang/Class;)V

    new-instance v7, Lh0/b;

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x102003a

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lh0/b;-><init>(Ljava/lang/Object;ILjava/lang/String;Lh0/o;Ljava/lang/Class;)V

    sput-object v7, Lh0/b;->n:Lh0/b;

    new-instance v8, Lh0/b;

    sget-object v9, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v10, 0x102003b

    invoke-direct/range {v8 .. v13}, Lh0/b;-><init>(Ljava/lang/Object;ILjava/lang/String;Lh0/o;Ljava/lang/Class;)V

    new-instance v1, Lh0/b;

    const/4 v7, 0x0

    const/16 v8, 0x1d

    if-lt v0, v8, :cond_0

    invoke-static {}, Landroidx/appcompat/widget/v0;->i()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v7

    :goto_0
    const v3, 0x1020046

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lh0/b;-><init>(Ljava/lang/Object;ILjava/lang/String;Lh0/o;Ljava/lang/Class;)V

    new-instance v9, Lh0/b;

    if-lt v0, v8, :cond_1

    invoke-static {}, Landroidx/appcompat/widget/v0;->w()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v1

    move-object v10, v1

    goto :goto_1

    :cond_1
    move-object v10, v7

    :goto_1
    const v11, 0x1020047

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lh0/b;-><init>(Ljava/lang/Object;ILjava/lang/String;Lh0/o;Ljava/lang/Class;)V

    new-instance v1, Lh0/b;

    if-lt v0, v8, :cond_2

    invoke-static {}, Landroidx/appcompat/widget/v0;->B()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v7

    :goto_2
    const v3, 0x1020048

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lh0/b;-><init>(Ljava/lang/Object;ILjava/lang/String;Lh0/o;Ljava/lang/Class;)V

    new-instance v9, Lh0/b;

    if-lt v0, v8, :cond_3

    invoke-static {}, Landroidx/appcompat/widget/v0;->D()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v1

    move-object v10, v1

    goto :goto_3

    :cond_3
    move-object v10, v7

    :goto_3
    const v11, 0x1020049

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lh0/b;-><init>(Ljava/lang/Object;ILjava/lang/String;Lh0/o;Ljava/lang/Class;)V

    new-instance v1, Lh0/b;

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CONTEXT_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x102003c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lh0/b;-><init>(Ljava/lang/Object;ILjava/lang/String;Lh0/o;Ljava/lang/Class;)V

    new-instance v1, Lh0/b;

    sget-object v9, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v10, 0x102003d

    const/4 v11, 0x0

    const-class v13, Lh0/l;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lh0/b;-><init>(Ljava/lang/Object;ILjava/lang/String;Lh0/o;Ljava/lang/Class;)V

    sput-object v1, Lh0/b;->o:Lh0/b;

    new-instance v14, Lh0/b;

    sget-object v15, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_MOVE_WINDOW:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v16, 0x1020042

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-class v19, Lh0/j;

    invoke-direct/range {v14 .. v19}, Lh0/b;-><init>(Ljava/lang/Object;ILjava/lang/String;Lh0/o;Ljava/lang/Class;)V

    new-instance v1, Lh0/b;

    const/16 v8, 0x1c

    if-lt v0, v8, :cond_4

    invoke-static {}, Landroidx/appcompat/widget/q0;->o()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v7

    :goto_4
    const v3, 0x1020044

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lh0/b;-><init>(Ljava/lang/Object;ILjava/lang/String;Lh0/o;Ljava/lang/Class;)V

    new-instance v9, Lh0/b;

    if-lt v0, v8, :cond_5

    invoke-static {}, Landroidx/appcompat/widget/q0;->A()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v1

    move-object v10, v1

    goto :goto_5

    :cond_5
    move-object v10, v7

    :goto_5
    const v11, 0x1020045

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lh0/b;-><init>(Ljava/lang/Object;ILjava/lang/String;Lh0/o;Ljava/lang/Class;)V

    new-instance v1, Lh0/b;

    const/16 v8, 0x1e

    if-lt v0, v8, :cond_6

    invoke-static {}, Landroidx/work/impl/utils/a;->d()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v2

    goto :goto_6

    :cond_6
    move-object v2, v7

    :goto_6
    const v3, 0x102004a

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lh0/b;-><init>(Ljava/lang/Object;ILjava/lang/String;Lh0/o;Ljava/lang/Class;)V

    new-instance v9, Lh0/b;

    if-lt v0, v8, :cond_7

    invoke-static {}, Landroidx/work/impl/utils/a;->g()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v7

    :cond_7
    move-object v10, v7

    const v11, 0x1020054

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lh0/b;-><init>(Ljava/lang/Object;ILjava/lang/String;Lh0/o;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Lh0/b;-><init>(Ljava/lang/Object;ILjava/lang/String;Lh0/o;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Class;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v5, p2

    .line 2
    invoke-direct/range {v0 .. v5}, Lh0/b;-><init>(Ljava/lang/Object;ILjava/lang/String;Lh0/o;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/String;Lh0/o;Ljava/lang/Class;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p2, p0, Lh0/b;->b:I

    .line 5
    iput-object p4, p0, Lh0/b;->d:Lh0/o;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p1, p0, Lh0/b;->a:Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    iput-object p1, p0, Lh0/b;->a:Ljava/lang/Object;

    .line 8
    :goto_0
    iput-object p5, p0, Lh0/b;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lh0/b;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lh0/b;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lh0/b;

    iget-object p1, p1, Lh0/b;->a:Ljava/lang/Object;

    iget-object v1, p0, Lh0/b;->a:Ljava/lang/Object;

    if-nez v1, :cond_2

    if-eqz p1, :cond_3

    return v0

    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lh0/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
