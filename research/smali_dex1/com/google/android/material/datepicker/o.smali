.class public final Lcom/google/android/material/datepicker/o;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Landroid/view/View;IIII)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/google/android/material/datepicker/o;->b:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/material/datepicker/o;->c:Landroid/view/View;

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/material/datepicker/o;->d:I

    .line 9
    .line 10
    iput p4, p0, Lcom/google/android/material/datepicker/o;->e:I

    .line 11
    .line 12
    iput p5, p0, Lcom/google/android/material/datepicker/o;->f:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 7

    .line 1
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/google/android/material/datepicker/o;->c:Landroid/view/View;

    .line 10
    .line 11
    iget v1, p0, Lcom/google/android/material/datepicker/o;->b:I

    .line 12
    .line 13
    if-ltz v1, :cond_1e

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget v3, p1, Landroidx/core/graphics/Insets;->top:I

    .line 20
    .line 21
    add-int/2addr v1, v3

    .line 22
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    :cond_1e
    iget v1, p0, Lcom/google/android/material/datepicker/o;->d:I

    .line 32
    .line 33
    iget v2, p1, Landroidx/core/graphics/Insets;->left:I

    .line 34
    .line 35
    add-int/2addr v1, v2

    .line 36
    iget v2, p0, Lcom/google/android/material/datepicker/o;->e:I

    .line 37
    .line 38
    iget v3, p1, Landroidx/core/graphics/Insets;->top:I

    .line 39
    .line 40
    add-int/2addr v2, v3

    .line 41
    iget v3, p0, Lcom/google/android/material/datepicker/o;->f:I

    .line 42
    .line 43
    iget p1, p1, Landroidx/core/graphics/Insets;->right:I

    .line 44
    .line 45
    add-int/2addr v3, p1

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 51
    .line 52
    .line 53
    return-object p2
.end method
