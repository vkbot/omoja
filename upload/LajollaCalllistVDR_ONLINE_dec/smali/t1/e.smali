.class public final Lt1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/chip/ChipGroup;


# direct methods
.method public constructor <init>(Lcom/google/android/material/chip/ChipGroup;)V
    .locals 0

    iput-object p1, p0, Lt1/e;->a:Lcom/google/android/material/chip/ChipGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lt1/e;->a:Lcom/google/android/material/chip/ChipGroup;

    iget-boolean v1, v0, Lcom/google/android/material/chip/ChipGroup;->m:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipGroup;->getCheckedChipIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/google/android/material/chip/ChipGroup;->i:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/google/android/material/chip/ChipGroup;->d(IZ)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, v0, Lcom/google/android/material/chip/ChipGroup;->l:I

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v1, -0x1

    if-eqz p2, :cond_3

    iget p2, v0, Lcom/google/android/material/chip/ChipGroup;->l:I

    if-eq p2, v1, :cond_2

    if-eq p2, p1, :cond_2

    iget-boolean v1, v0, Lcom/google/android/material/chip/ChipGroup;->h:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/google/android/material/chip/ChipGroup;->d(IZ)V

    :cond_2
    invoke-static {v0, p1}, Lcom/google/android/material/chip/ChipGroup;->b(Lcom/google/android/material/chip/ChipGroup;I)V

    goto :goto_0

    :cond_3
    iget p2, v0, Lcom/google/android/material/chip/ChipGroup;->l:I

    if-ne p2, p1, :cond_4

    invoke-static {v0, v1}, Lcom/google/android/material/chip/ChipGroup;->b(Lcom/google/android/material/chip/ChipGroup;I)V

    :cond_4
    :goto_0
    return-void
.end method
