.class public final Landroidx/fragment/app/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field public final a:Landroidx/fragment/app/k0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/k0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/k0;

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11

    .line 2
    const-class v0, Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/k0;

    if-eqz v0, :cond_0

    .line 3
    new-instance p0, Landroidx/fragment/app/FragmentContainerView;

    invoke-direct {p0, p3, p4, v1}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroidx/fragment/app/k0;)V

    return-object p0

    :cond_0
    const-string v0, "fragment"

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    return-object v0

    :cond_1
    const-string p2, "class"

    .line 5
    invoke-interface {p4, v0, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    sget-object v2, Landroidx/fragment/R$styleable;->Fragment:[I

    invoke-virtual {p3, p4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    if-nez p2, :cond_2

    .line 7
    sget p2, Landroidx/fragment/R$styleable;->Fragment_android_name:I

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 8
    :cond_2
    sget v3, Landroidx/fragment/R$styleable;->Fragment_android_id:I

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 9
    sget v5, Landroidx/fragment/R$styleable;->Fragment_android_tag:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_19

    .line 11
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v6, 0x0

    .line 12
    :try_start_0
    invoke-static {v2, p2}, Landroidx/fragment/app/g0;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 13
    const-class v7, Landroidx/fragment/app/t;

    invoke-virtual {v7, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v2, v6

    :goto_0
    if-nez v2, :cond_3

    goto/16 :goto_8

    :cond_3
    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    :cond_4
    if-ne v6, v4, :cond_6

    if-ne v3, v4, :cond_6

    if-eqz v5, :cond_5

    goto :goto_1

    .line 15
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    if-eq v3, v4, :cond_7

    .line 16
    invoke-virtual {v1, v3}, Landroidx/fragment/app/k0;->C(I)Landroidx/fragment/app/t;

    move-result-object v2

    goto :goto_2

    :cond_7
    move-object v2, v0

    :goto_2
    if-nez v2, :cond_c

    if-eqz v5, :cond_c

    .line 17
    iget-object v2, v1, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/q0;

    .line 18
    iget-object v7, v2, Landroidx/fragment/app/q0;->a:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    :cond_8
    add-int/2addr v8, v4

    if-ltz v8, :cond_9

    .line 20
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/t;

    if-eqz v9, :cond_8

    .line 21
    iget-object v10, v9, Landroidx/fragment/app/t;->x:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move-object v2, v9

    goto :goto_3

    .line 22
    :cond_9
    iget-object v2, v2, Landroidx/fragment/app/q0;->b:Ljava/util/HashMap;

    .line 23
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/p0;

    if-eqz v7, :cond_a

    .line 24
    iget-object v7, v7, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/t;

    iget-object v8, v7, Landroidx/fragment/app/t;->x:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    move-object v2, v7

    goto :goto_3

    :cond_b
    move-object v2, v0

    :cond_c
    :goto_3
    if-nez v2, :cond_d

    if-eq v6, v4, :cond_d

    .line 25
    invoke-virtual {v1, v6}, Landroidx/fragment/app/k0;->C(I)Landroidx/fragment/app/t;

    move-result-object v2

    :cond_d
    const/4 v4, 0x1

    const-string v7, "Fragment "

    const-string v8, "FragmentManager"

    const/4 v9, 0x2

    if-nez v2, :cond_11

    .line 26
    invoke-virtual {v1}, Landroidx/fragment/app/k0;->F()Landroidx/fragment/app/g0;

    move-result-object p4

    .line 27
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 28
    invoke-virtual {p4, p2}, Landroidx/fragment/app/g0;->a(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v2

    .line 29
    iput-boolean v4, v2, Landroidx/fragment/app/t;->m:Z

    if-eqz v3, :cond_e

    move p3, v3

    goto :goto_4

    :cond_e
    move p3, v6

    .line 30
    :goto_4
    iput p3, v2, Landroidx/fragment/app/t;->v:I

    .line 31
    iput v6, v2, Landroidx/fragment/app/t;->w:I

    .line 32
    iput-object v5, v2, Landroidx/fragment/app/t;->x:Ljava/lang/String;

    .line 33
    iput-boolean v4, v2, Landroidx/fragment/app/t;->n:Z

    .line 34
    iput-object v1, v2, Landroidx/fragment/app/t;->r:Landroidx/fragment/app/k0;

    .line 35
    iget-object p3, v1, Landroidx/fragment/app/k0;->p:Landroidx/fragment/app/w;

    .line 36
    iput-object p3, v2, Landroidx/fragment/app/t;->s:Landroidx/fragment/app/w;

    .line 37
    iget-object p4, p3, Landroidx/fragment/app/w;->v:Landroid/content/Context;

    .line 38
    iput-boolean v4, v2, Landroidx/fragment/app/t;->C:Z

    if-nez p3, :cond_f

    goto :goto_5

    .line 39
    :cond_f
    iget-object v0, p3, Landroidx/fragment/app/w;->u:Landroid/app/Activity;

    :goto_5
    if-eqz v0, :cond_10

    .line 40
    iput-boolean v4, v2, Landroidx/fragment/app/t;->C:Z

    .line 41
    :cond_10
    invoke-virtual {v1, v2}, Landroidx/fragment/app/k0;->a(Landroidx/fragment/app/t;)Landroidx/fragment/app/p0;

    move-result-object p3

    .line 42
    invoke-static {v9}, Landroidx/fragment/app/k0;->I(I)Z

    move-result p4

    if-eqz p4, :cond_14

    .line 43
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has been inflated via the <fragment> tag: id=0x"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 45
    invoke-static {v8, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 46
    :cond_11
    iget-boolean p3, v2, Landroidx/fragment/app/t;->n:Z

    if-nez p3, :cond_18

    .line 47
    iput-boolean v4, v2, Landroidx/fragment/app/t;->n:Z

    .line 48
    iput-object v1, v2, Landroidx/fragment/app/t;->r:Landroidx/fragment/app/k0;

    .line 49
    iget-object p3, v1, Landroidx/fragment/app/k0;->p:Landroidx/fragment/app/w;

    .line 50
    iput-object p3, v2, Landroidx/fragment/app/t;->s:Landroidx/fragment/app/w;

    .line 51
    iget-object p4, p3, Landroidx/fragment/app/w;->v:Landroid/content/Context;

    .line 52
    iput-boolean v4, v2, Landroidx/fragment/app/t;->C:Z

    if-nez p3, :cond_12

    goto :goto_6

    .line 53
    :cond_12
    iget-object v0, p3, Landroidx/fragment/app/w;->u:Landroid/app/Activity;

    :goto_6
    if-eqz v0, :cond_13

    .line 54
    iput-boolean v4, v2, Landroidx/fragment/app/t;->C:Z

    .line 55
    :cond_13
    invoke-virtual {v1, v2}, Landroidx/fragment/app/k0;->f(Landroidx/fragment/app/t;)Landroidx/fragment/app/p0;

    move-result-object p3

    .line 56
    invoke-static {v9}, Landroidx/fragment/app/k0;->I(I)Z

    move-result p4

    if-eqz p4, :cond_14

    .line 57
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Retained Fragment "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has been re-attached via the <fragment> tag: id=0x"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 59
    invoke-static {v8, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_14
    :goto_7
    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, v2, Landroidx/fragment/app/t;->D:Landroid/view/ViewGroup;

    .line 61
    invoke-virtual {p3}, Landroidx/fragment/app/p0;->k()V

    .line 62
    invoke-virtual {p3}, Landroidx/fragment/app/p0;->j()V

    .line 63
    iget-object p1, v2, Landroidx/fragment/app/t;->E:Landroid/view/View;

    if-eqz p1, :cond_17

    if-eqz v3, :cond_15

    .line 64
    invoke-virtual {p1, v3}, Landroid/view/View;->setId(I)V

    .line 65
    :cond_15
    iget-object p1, v2, Landroidx/fragment/app/t;->E:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_16

    .line 66
    iget-object p1, v2, Landroidx/fragment/app/t;->E:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    :cond_16
    iget-object p1, v2, Landroidx/fragment/app/t;->E:Landroid/view/View;

    new-instance p2, Landroidx/fragment/app/b0;

    invoke-direct {p2, p0, p3}, Landroidx/fragment/app/b0;-><init>(Landroidx/fragment/app/c0;Landroidx/fragment/app/p0;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 68
    iget-object p0, v2, Landroidx/fragment/app/t;->E:Landroid/view/View;

    return-object p0

    .line 69
    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, " did not create a view."

    .line 70
    invoke-static {v7, p2, p1}, La/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Duplicate id 0x"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", tag "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", or parent id 0x"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " with another fragment for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    :goto_8
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/c0;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
