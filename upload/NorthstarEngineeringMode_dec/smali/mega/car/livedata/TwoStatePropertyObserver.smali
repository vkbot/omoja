.class public Lmega/car/livedata/TwoStatePropertyObserver;
.super Lmega/car/livedata/CarPropertyViewObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmega/car/livedata/CarPropertyViewObserver<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCheckBox:Landroid/widget/CheckBox;

.field private final mExpect:I


# direct methods
.method public constructor <init>(Landroid/widget/CheckBox;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmega/car/livedata/CarPropertyViewObserver;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lmega/car/livedata/TwoStatePropertyObserver;->mCheckBox:Landroid/widget/CheckBox;

    iput p2, p0, Lmega/car/livedata/TwoStatePropertyObserver;->mExpect:I

    return-void
.end method


# virtual methods
.method public onValid(Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1}, Lmega/car/livedata/CarPropertyViewObserver;->onValid(Ljava/lang/Object;)V

    iget-object v0, p0, Lmega/car/livedata/TwoStatePropertyObserver;->mCheckBox:Landroid/widget/CheckBox;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p0, p0, Lmega/car/livedata/TwoStatePropertyObserver;->mExpect:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic onValid(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lmega/car/livedata/TwoStatePropertyObserver;->onValid(Ljava/lang/Integer;)V

    return-void
.end method
