.class public final Landroidx/appcompat/widget/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/x;
.implements Lt0/f;
.implements Lh0/q;
.implements Lr2/a;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Landroidx/appcompat/widget/d0;->a:I

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/appcompat/widget/d0;->a:I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    filled-new-array {p1, p2}, [I

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 23
    fill-array-data p1, :array_0

    iput-object p1, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/appcompat/widget/d0;->a:I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    filled-new-array {p1, p2, p3}, [I

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    new-array p1, v0, [F

    .line 26
    fill-array-data p1, :array_0

    iput-object p1, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 5
    iput p1, p0, Landroidx/appcompat/widget/d0;->a:I

    iput-object p2, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/d0;->a:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    .line 14
    new-instance v0, Lo0/b;

    invoke-direct {v0, p1}, Lo0/b;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/cardview/widget/CardView;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/appcompat/widget/d0;->a:I

    .line 29
    iput-object p1, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/room/q;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Landroidx/appcompat/widget/d0;->a:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Landroidx/appcompat/widget/d0;->a:I

    .line 27
    iput-object p1, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 6
    iput p3, p0, Landroidx/appcompat/widget/d0;->a:I

    iput-object p2, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x8

    iput v0, p0, Landroidx/appcompat/widget/d0;->a:I

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0, v0, p1, v1}, Landroidx/appcompat/widget/d0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x3

    iput v0, p0, Landroidx/appcompat/widget/d0;->a:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 17
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    .line 18
    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 19
    iget-object v2, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast v2, [I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 20
    iget-object v2, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v2, [F

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lh0/f1;)Lh0/f1;
    .locals 5

    iget v0, p0, Landroidx/appcompat/widget/d0;->a:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-static {p1, p2}, Lh0/q0;->f(Landroid/view/View;Lh0/f1;)Lh0/f1;

    move-result-object p1

    iget-object p2, p1, Lh0/f1;->a:Lh0/e1;

    invoke-virtual {p2}, Lh0/e1;->k()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p2, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lh0/f1;->b()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lh0/f1;->d()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lh0/f1;->c()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Lh0/f1;->a()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Lh0/q0;->b(Landroid/view/View;Lh0/f1;)Lh0/f1;

    move-result-object v2

    invoke-virtual {v2}, Lh0/f1;->b()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Lh0/f1;->d()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Lh0/f1;->c()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Lh0/f1;->a()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    new-instance v2, Lh0/x0;

    invoke-direct {v2, p1}, Lh0/x0;-><init>(Lh0/f1;)V

    invoke-static {p0, v0, v1, p2}, Lz/b;->a(IIII)Lz/b;

    move-result-object p0

    invoke-virtual {v2, p0}, Lh0/w0;->d(Lz/b;)V

    invoke-virtual {v2}, Lh0/w0;->b()Lh0/f1;

    move-result-object p1

    :goto_1
    return-object p1

    :goto_2
    iget-object v0, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/internal/b0;

    new-instance v1, Landroidx/recyclerview/widget/o0;

    iget-object p0, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/o0;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/o0;-><init>(Landroidx/recyclerview/widget/o0;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/material/internal/b0;->q(Landroid/view/View;Lh0/f1;Landroidx/recyclerview/widget/o0;)Lh0/f1;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .locals 1

    instance-of v0, p1, Landroid/text/method/NumberKeyListener;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast p0, Lo0/b;

    iget-object p0, p0, Lo0/b;->a:Lo0/a;

    invoke-virtual {p0, p1}, Lo0/a;->l(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/cardview/widget/CardView;

    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result p0

    return p0
.end method

.method public final d(Lu0/f;)V
    .locals 4

    iget-object p0, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    if-nez p0, :cond_0

    goto/16 :goto_2

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_c

    aget-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Lu0/f;->q(I)V

    goto :goto_0

    :cond_1
    instance-of v3, v2, [B

    if-eqz v3, :cond_2

    check-cast v2, [B

    invoke-virtual {p1, v2, v1}, Lu0/f;->d([BI)V

    goto :goto_0

    :cond_2
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_3

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p1, v2, v3, v1}, Lu0/f;->g(DI)V

    goto :goto_0

    :cond_3
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_4

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v1}, Lu0/f;->g(DI)V

    goto :goto_0

    :cond_4
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_5

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lu0/f;->p(IJ)V

    goto :goto_0

    :cond_5
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_6

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Lu0/f;->p(IJ)V

    goto :goto_0

    :cond_6
    instance-of v3, v2, Ljava/lang/Short;

    if-eqz v3, :cond_7

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Lu0/f;->p(IJ)V

    goto :goto_0

    :cond_7
    instance-of v3, v2, Ljava/lang/Byte;

    if-eqz v3, :cond_8

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Lu0/f;->p(IJ)V

    goto :goto_0

    :cond_8
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_9

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lu0/f;->u(ILjava/lang/String;)V

    goto :goto_0

    :cond_9
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_b

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    const-wide/16 v2, 0x1

    goto :goto_1

    :cond_a
    const-wide/16 v2, 0x0

    :goto_1
    invoke-virtual {p1, v1, v2, v3}, Lu0/f;->p(IJ)V

    goto/16 :goto_0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot bind "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " at index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Supported types: null, byte[], float, double, long, int, short, byte, string"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_2
    return-void
.end method

.method public final e(Landroid/util/AttributeSet;I)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Landroidx/appcompat/R$styleable;->AppCompatTextView_emojiCompatEnabled:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    sget p2, Landroidx/appcompat/R$styleable;->AppCompatTextView_emojiCompatEnabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p0, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast p0, Lo0/b;

    iget-object p0, p0, Lo0/b;->a:Lo0/a;

    invoke-virtual {p0, v0}, Lo0/a;->i(Z)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public final f(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast p0, Lo0/b;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lo0/b;->a:Lo0/a;

    invoke-virtual {p0, p1, p2}, Lo0/a;->m(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final h(Le0/f;)V
    .locals 4

    iget v0, p1, Le0/f;->b:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast v0, Le0/j;

    iget-object v2, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Le0/a;

    iget-object p1, p1, Le0/f;->a:Landroid/graphics/Typeface;

    invoke-direct {v3, p0, v0, p1, v1}, Le0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast p1, Le0/j;

    iget-object v2, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Le0/b;

    invoke-direct {v3, p0, p1, v0, v1}, Le0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public final i(IIII)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/cardview/widget/CardView;

    iget-object v0, v0, Landroidx/cardview/widget/CardView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroidx/cardview/widget/CardView;

    move-object v1, p0

    check-cast v1, Landroidx/cardview/widget/CardView;

    iget-object v1, v1, Landroidx/cardview/widget/CardView;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    move-object v1, p0

    check-cast v1, Landroidx/cardview/widget/CardView;

    iget-object v1, v1, Landroidx/cardview/widget/CardView;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    move-object v1, p0

    check-cast v1, Landroidx/cardview/widget/CardView;

    iget-object v1, v1, Landroidx/cardview/widget/CardView;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, v1

    check-cast p0, Landroidx/cardview/widget/CardView;

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->c:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p4, p0

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/cardview/widget/CardView;->b(Landroidx/cardview/widget/CardView;IIII)V

    return-void
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/v;

    iget-object p0, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast p0, Li/a;

    invoke-interface {p0, p1}, Li/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/w;->h(Ljava/lang/Object;)V

    return-void
.end method
