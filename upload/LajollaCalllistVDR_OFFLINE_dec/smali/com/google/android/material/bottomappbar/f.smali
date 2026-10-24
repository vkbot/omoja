.class public final Lcom/google/android/material/bottomappbar/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public c:I

.field public final d:Landroid/view/View;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/bottomappbar/f;->a:I

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/f;->e:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/material/bottomappbar/f;->d:Landroid/view/View;

    iput p3, p0, Lcom/google/android/material/bottomappbar/f;->c:I

    iput-boolean p4, p0, Lcom/google/android/material/bottomappbar/f;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/material/bottomappbar/f;->a:I

    .line 2
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/f;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/google/android/material/bottomappbar/f;->d:Landroid/view/View;

    .line 4
    iput p3, p0, Lcom/google/android/material/bottomappbar/f;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/google/android/material/bottomappbar/f;->a:I

    iget-object v1, p0, Lcom/google/android/material/bottomappbar/f;->e:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/material/bottomappbar/f;->d:Landroid/view/View;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView;

    check-cast v1, Lcom/google/android/material/bottomappbar/BottomAppBar;

    iget v0, p0, Lcom/google/android/material/bottomappbar/f;->c:I

    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/f;->b:Z

    invoke-virtual {v1, v2, v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->z(Landroidx/appcompat/widget/ActionMenuView;IZ)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v2, p0}, Landroid/view/View;->setTranslationX(F)V

    return-void

    :goto_0
    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Lk0/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lk0/e;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v2, p0}, Lh0/z;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/google/android/material/bottomappbar/f;->c:I

    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B(I)V

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/bottomappbar/f;->b:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
