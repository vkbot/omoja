.class public final Landroidx/appcompat/widget/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/x;
.implements Ls0/f;
.implements Lg0/r;
.implements Lz2/a;


# instance fields
.field public final synthetic b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Landroidx/appcompat/widget/d0;->b:I

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/appcompat/widget/d0;->b:I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    filled-new-array {p1, p2}, [I

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 26
    fill-array-data p1, :array_0

    iput-object p1, p0, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

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

    iput v0, p0, Landroidx/appcompat/widget/d0;->b:I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    filled-new-array {p1, p2, p3}, [I

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    new-array p1, v0, [F

    .line 29
    fill-array-data p1, :array_0

    iput-object p1, p0, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

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
    iput p1, p0, Landroidx/appcompat/widget/d0;->b:I

    iput-object p2, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/d0;->b:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    .line 17
    new-instance v0, Ln0/b;

    invoke-direct {v0, p1}, Ln0/b;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/widget/d0;->b:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iput-object p1, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/cardview/widget/CardView;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/appcompat/widget/d0;->b:I

    .line 32
    iput-object p1, p0, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/room/q;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Landroidx/appcompat/widget/d0;->b:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 12
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    .line 13
    iput-object p1, p0, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Landroidx/appcompat/widget/d0;->b:I

    .line 30
    iput-object p1, p0, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 6
    iput p3, p0, Landroidx/appcompat/widget/d0;->b:I

    iput-object p2, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x8

    iput v0, p0, Landroidx/appcompat/widget/d0;->b:I

    const/4 v1, 0x0

    .line 14
    invoke-direct {p0, v0, p1, v1}, Landroidx/appcompat/widget/d0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x3

    iput v0, p0, Landroidx/appcompat/widget/d0;->b:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 20
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    .line 21
    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 22
    iget-object v2, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v2, [I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 23
    iget-object v2, p0, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

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
.method public final J(Lt0/f;)V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_c

    aget-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    if-nez v3, :cond_1

    invoke-virtual {p1, v2}, Lt0/f;->N(I)V

    goto :goto_0

    :cond_1
    instance-of v4, v3, [B

    if-eqz v4, :cond_2

    check-cast v3, [B

    invoke-virtual {p1, v3, v2}, Lt0/f;->z([BI)V

    goto :goto_0

    :cond_2
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {p1, v3, v4, v2}, Lt0/f;->J(DI)V

    goto :goto_0

    :cond_3
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_4

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p1, v3, v4, v2}, Lt0/f;->J(DI)V

    goto :goto_0

    :cond_4
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_5

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lt0/f;->M(IJ)V

    goto :goto_0

    :cond_5
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_6

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p1, v2, v3, v4}, Lt0/f;->M(IJ)V

    goto :goto_0

    :cond_6
    instance-of v4, v3, Ljava/lang/Short;

    if-eqz v4, :cond_7

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p1, v2, v3, v4}, Lt0/f;->M(IJ)V

    goto :goto_0

    :cond_7
    instance-of v4, v3, Ljava/lang/Byte;

    if-eqz v4, :cond_8

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p1, v2, v3, v4}, Lt0/f;->M(IJ)V

    goto :goto_0

    :cond_8
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_9

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lt0/f;->O(ILjava/lang/String;)V

    goto :goto_0

    :cond_9
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_b

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    const-wide/16 v3, 0x1

    goto :goto_1

    :cond_a
    const-wide/16 v3, 0x0

    :goto_1
    invoke-virtual {p1, v2, v3, v4}, Lt0/f;->M(IJ)V

    goto/16 :goto_0

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot bind "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Supported types: null, byte[], float, double, long, int, short, byte, string"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_2
    return-void
.end method

.method public final a(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .locals 1

    instance-of v0, p1, Landroid/text/method/NumberKeyListener;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    check-cast v0, Ln0/b;

    iget-object v0, v0, Ln0/b;->a:Ln0/a;

    invoke-virtual {v0, p1}, Ln0/a;->m(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v0

    return v0
.end method

.method public final c()Landroid/view/textclassifier/TextClassifier;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/view/textclassifier/TextClassifier;

    if-nez v1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationManager;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    return-object v0

    :cond_1
    check-cast v0, Landroid/view/textclassifier/TextClassifier;

    return-object v0
.end method

.method public final d(Landroid/util/AttributeSet;I)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

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

    iget-object p1, p0, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    check-cast p1, Ln0/b;

    iget-object p1, p1, Ln0/b;->a:Ln0/a;

    invoke-virtual {p1, v0}, Ln0/a;->i(Z)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public final e(Landroid/view/View;Lg0/i1;)Lg0/i1;
    .locals 5

    iget v0, p0, Landroidx/appcompat/widget/d0;->b:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-static {p1, p2}, Lg0/s0;->h(Landroid/view/View;Lg0/i1;)Lg0/i1;

    move-result-object p1

    iget-object p2, p1, Lg0/i1;->a:Lg0/h1;

    invoke-virtual {p2}, Lg0/h1;->k()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lg0/i1;->b()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lg0/i1;->d()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lg0/i1;->c()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Lg0/i1;->a()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Lg0/s0;->b(Landroid/view/View;Lg0/i1;)Lg0/i1;

    move-result-object v2

    invoke-virtual {v2}, Lg0/i1;->b()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Lg0/i1;->d()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Lg0/i1;->c()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Lg0/i1;->a()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, p2}, Lg0/i1;->f(IIII)Lg0/i1;

    move-result-object p1

    :goto_1
    return-object p1

    :goto_2
    iget-object v0, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/internal/b0;

    new-instance v1, Landroidx/recyclerview/widget/o0;

    iget-object v2, p0, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/o0;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/o0;-><init>(Landroidx/recyclerview/widget/o0;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/material/internal/b0;->a(Landroid/view/View;Lg0/i1;Landroidx/recyclerview/widget/o0;)Lg0/i1;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    check-cast v0, Ln0/b;

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Ln0/b;->a:Ln0/a;

    invoke-virtual {v0, p1, p2}, Ln0/a;->n(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final g(Ld0/f;)V
    .locals 4

    iget v0, p1, Ld0/f;->b:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v0, Ld0/j;

    iget-object v2, p0, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Ld0/a;

    iget-object p1, p1, Ld0/f;->a:Landroid/graphics/Typeface;

    invoke-direct {v3, p0, v0, p1, v1}, Ld0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast p1, Ld0/j;

    iget-object v2, p0, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Ld0/b;

    invoke-direct {v3, p0, p1, v0, v1}, Ld0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public final h(IIII)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/cardview/widget/CardView;

    iget-object v0, v0, Landroidx/cardview/widget/CardView;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/cardview/widget/CardView;

    move-object v2, v0

    check-cast v2, Landroidx/cardview/widget/CardView;

    iget-object v2, v2, Landroidx/cardview/widget/CardView;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v2

    move-object v2, v0

    check-cast v2, Landroidx/cardview/widget/CardView;

    iget-object v2, v2, Landroidx/cardview/widget/CardView;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v2

    move-object v2, v0

    check-cast v2, Landroidx/cardview/widget/CardView;

    iget-object v2, v2, Landroidx/cardview/widget/CardView;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, v2

    check-cast v0, Landroidx/cardview/widget/CardView;

    iget-object v0, v0, Landroidx/cardview/widget/CardView;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p4, v0

    invoke-static {v1, p1, p2, p3, p4}, Landroidx/cardview/widget/CardView;->b(Landroidx/cardview/widget/CardView;IIII)V

    return-void
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/v;

    iget-object v1, p0, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    check-cast v1, Lh/a;

    invoke-interface {v1, p1}, Lh/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/w;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
