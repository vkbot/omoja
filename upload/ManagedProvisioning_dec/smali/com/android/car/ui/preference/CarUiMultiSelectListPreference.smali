.class public Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;
.super Landroidx/preference/MultiSelectListPreference;
.source "CarUiMultiSelectListPreference.java"


# instance fields
.field private mUxRestricted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroidx/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;->mUxRestricted:Z

    return-void
.end method
