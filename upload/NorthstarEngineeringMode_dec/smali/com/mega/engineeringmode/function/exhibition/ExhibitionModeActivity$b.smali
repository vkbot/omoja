.class public final Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/ui/MegaSwitch;

.field public final synthetic b:Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity;Lcom/mega/engineeringmode/ui/MegaSwitch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity$b;->b:Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity;

    iput-object p2, p0, Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity$b;->a:Lcom/mega/engineeringmode/ui/MegaSwitch;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity$b;->a:Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    const v0, 0x67000082

    iget-object p0, p0, Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity$b;->b:Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity;

    if-eqz p1, :cond_0

    sget p1, Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity;->k:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lmega/car/livedata/CarPropertyLiveData;->obtain(I)Lmega/car/livedata/CarPropertyLiveData;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmega/car/livedata/CarPropertyLiveData;->write(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity;->k:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lmega/car/livedata/CarPropertyLiveData;->obtain(I)Lmega/car/livedata/CarPropertyLiveData;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmega/car/livedata/CarPropertyLiveData;->write(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
