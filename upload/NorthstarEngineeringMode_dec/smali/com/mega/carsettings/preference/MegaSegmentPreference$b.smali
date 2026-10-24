.class public final Lcom/mega/carsettings/preference/MegaSegmentPreference$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/carsettings/preference/MegaSegmentPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/carsettings/preference/MegaSegmentPreference;


# direct methods
.method public constructor <init>(Lcom/mega/carsettings/preference/MegaSegmentPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference$b;->a:Lcom/mega/carsettings/preference/MegaSegmentPreference;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference$b;->a:Lcom/mega/carsettings/preference/MegaSegmentPreference;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput p2, v0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->b1:I

    invoke-virtual {v0, p2}, Lcom/mega/carsettings/preference/MegaSegmentPreference;->persistInt(I)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget p2, v0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->b1:I

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    invoke-virtual {p1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    :goto_0
    invoke-virtual {v0}, Lcom/mega/carsettings/preference/MegaSegmentPreference;->b()V

    return-void
.end method
